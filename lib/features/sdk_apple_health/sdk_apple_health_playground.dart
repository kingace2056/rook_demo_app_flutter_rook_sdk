import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_sdk_demo_app_flutter/common/console_output.dart';
import 'package:rook_sdk_demo_app_flutter/common/widget/scrollable_scaffold.dart';
import 'package:rook_sdk_demo_app_flutter/common/widget/section_title.dart';
import 'package:rook_sdk_demo_app_flutter/secrets.dart';
import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

const String sdkAppleHealthPlaygroundRoute = '/sdk-apple-health/playground';

class SdkAppleHealthPlayground extends StatefulWidget {
  const SdkAppleHealthPlayground({super.key});

  @override
  State<SdkAppleHealthPlayground> createState() =>
      _SdkAppleHealthPlaygroundState();
}

class _SdkAppleHealthPlaygroundState extends State<SdkAppleHealthPlayground> {
  final Logger logger = Logger('SdkAppleHealthPlayground');

  final rookConfigurationManager = AHRookConfigurationManager();
  final rookHealthPermissionsManager = AHRookHealthPermissionsManager();
  final rookSummaryManager = AHRookSummaryManager();
  final rookEventManager = AHRookEventManager();

  final ConsoleOutput configurationOutput = ConsoleOutput();
  final ConsoleOutput initializeOutput = ConsoleOutput();
  final ConsoleOutput updateUserOutput = ConsoleOutput();
  final ConsoleOutput syncOutput = ConsoleOutput();
  final ConsoleOutput syncPendingSummariesOutput = ConsoleOutput();
  final ConsoleOutput syncPendingEventsOutput = ConsoleOutput();

  final _formKey = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'SDK Apple Health',
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            const SectionTitle('1. Configure SDK'),
            Text(configurationOutput.current),
            ElevatedButton(
              onPressed: setConfiguration,
              child: const Text('Set configuration'),
            ),
            const SectionTitle('2. Initialize SDK'),
            Text(initializeOutput.current),
            ElevatedButton(
              onPressed: initialize,
              child: const Text('Initialize'),
            ),
            const SectionTitle('3. Update user ID'),
            TextFormField(
              key: _formKey,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'User ID'),
              validator: validate,
              onSaved: updateUserID,
            ),
            Text(updateUserOutput.current),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() == true) {
                  _formKey.currentState?.save();
                }
              },
              child: const Text('Update user'),
            ),
            const SectionTitle('4. Request permissions'),
            ElevatedButton(
              onPressed: requestPermissions,
              child: const Text('Request permissions'),
            ),
            const SectionTitle('5. Sync health data'),
            Text(syncOutput.current),
            ElevatedButton(
              onPressed: syncHealthData,
              child: const Text('Sync health data'),
            ),
            const SectionTitle('Sync pending summaries (optional)'),
            Text(syncPendingSummariesOutput.current),
            ElevatedButton(
              onPressed: syncPendingSummaries,
              child: const Text('Sync pending summaries'),
            ),
            const SectionTitle('Sync pending events (optional)'),
            Text(syncPendingEventsOutput.current),
            ElevatedButton(
              onPressed: syncPendingEvents,
              child: const Text('Sync pending events'),
            ),
          ],
        ),
      ),
    );
  }

  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Cannot be empty';
    }
    return null;
  }

  void setConfiguration() {
    const environment =
    kDebugMode ? RookEnvironment.sandbox : RookEnvironment.production;

    final rookConfiguration = RookConfiguration(
      Secrets.clientUUID,
      Secrets.clientPassword,
      environment,
    );

    configurationOutput.clear();

    configurationOutput.append('Using configuration:');
    configurationOutput.append('$rookConfiguration');

    rookConfigurationManager.setConfiguration(rookConfiguration);

    setState(
            () => configurationOutput.append('Configuration set successfully'));
  }

  void initialize() {
    initializeOutput.clear();

    setState(() => initializeOutput.append('Initializing...'));

    rookConfigurationManager.initRook().then((_) {
      setState(() => initializeOutput.append('SDK initialized successfully'));
    }).catchError((exception) {
      final error = switch (exception) {
        (MissingConfigurationException it) =>
        'MissingConfigurationException: ${it.message}',
        _ => exception.toString(),
      };

      initializeOutput.append('Error initializing SDK:');
      setState(() => initializeOutput.append(error));
    });
  }

  void updateUserID(String? userID) {
    updateUserOutput.clear();

    setState(() => updateUserOutput.append('Updating userID...'));

    rookConfigurationManager.updateUserID(userID!).then((_) {
      setState(() => updateUserOutput.append('userID updated successfully'));
    }).catchError((exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      updateUserOutput.append('Error updating userID:');
      setState(() => updateUserOutput.append(error));
    });
  }

  void updateTimeZoneInformation(){
    logger.info('Updating user timezone...');

    rookConfigurationManager.syncUserTimeZone().then((_) {
      logger.info('User timezone updated successfully');
    }).catchError((exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      logger.info('Error updating user timezone:');
      logger.info(error);
    });
  }

  void requestPermissions() {
    logger.info('Requesting all permissions...');

    rookHealthPermissionsManager.requestAllPermissions().then((_) {
      logger.info('All permissions request sent');
    }).catchError((exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      logger.info('Error requesting all permissions:');
      logger.info(error);
    });
  }

  void syncHealthData() async {
    syncOutput.clear();

    final today = DateTime.now();
    final yesterday = today.subtract(const Duration(days: 1));

    setState(() => syncOutput.append('Syncing health data...'));

    setState(() =>
        syncOutput.append('Syncing Sleep summary of yesterday: $yesterday...'));
    await syncSleepSummary(yesterday);

    setState(() => syncOutput
        .append('Syncing Physical summary of yesterday: $yesterday...'));
    await syncPhysicalSummary(yesterday);

    setState(() =>
        syncOutput.append('Syncing Body summary of yesterday: $yesterday...'));
    await syncBodySummary(yesterday);

    setState(
            () => syncOutput.append('Syncing Physical events of today: $today...'));
    await syncPhysicalEvents(today);

    setState(() =>
        syncOutput.append('Syncing BodyHeartRate events of today: $today...'));
    await syncBodyHeartRateEvents(today);

    setState(() => syncOutput
        .append('Syncing PhysicalHeartRate events of today: $today...'));
    await syncPhysicalHeartRateEvents(today);

    setState(() => syncOutput
        .append('Syncing BodyOxygenation events of today: $today...'));
    await syncBodyOxygenationEvents(today);

    setState(() => syncOutput
        .append('Syncing PhysicalOxygenation events of today: $today...'));
    await syncPhysicalOxygenationEvents(today);
  }

  Future<void> syncSleepSummary(DateTime yesterday) async {
    try {
      await rookSummaryManager.syncSleepSummary(yesterday);

      setState(() => syncOutput.append('Sleep summary synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing Sleep summary:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncPhysicalSummary(DateTime yesterday) async {
    try {
      await rookSummaryManager.syncPhysicalSummary(yesterday);

      setState(() => syncOutput.append('Physical summary synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing Physical summary:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncBodySummary(DateTime yesterday) async {
    try {
      await rookSummaryManager.syncBodySummary(yesterday);

      setState(() => syncOutput.append('Body summary synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing Body summary:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncPhysicalEvents(DateTime today) async {
    try {
      await rookEventManager.syncPhysicalEvents(today);

      setState(() => syncOutput.append('Physical events synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing Physical events:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncBodyHeartRateEvents(DateTime today) async {
    try {
      await rookEventManager.syncBodyHeartRateEvents(today);

      setState(
              () => syncOutput.append('BodyHeartRate events synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing BodyHeartRate events:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncPhysicalHeartRateEvents(DateTime today) async {
    try {
      await rookEventManager.syncPhysicalHeartRateEvents(today);

      setState(() =>
          syncOutput.append('PhysicalHeartRate events synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing PhysicalHeartRate events:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncBodyOxygenationEvents(DateTime today) async {
    try {
      await rookEventManager.syncBodyOxygenationEvents(today);

      setState(() =>
          syncOutput.append('BodyOxygenation events synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing BodyOxygenation events:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncPhysicalOxygenationEvents(DateTime today) async {
    try {
      await rookEventManager.syncPhysicalOxygenationEvents(today);

      setState(() =>
          syncOutput.append('PhysicalOxygenation events synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing PhysicalOxygenation events:');
      setState(() => syncOutput.append(error));
    }
  }

  void syncPendingSummaries() {
    syncPendingSummariesOutput.clear();

    setState(() =>
        syncPendingSummariesOutput.append('Syncing pending summaries...'));

    rookSummaryManager.syncPendingSummaries().then((_) {
      setState(() => syncPendingSummariesOutput
          .append('Pending summaries synced successfully'));
    }).catchError((exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      syncPendingSummariesOutput.append('Error syncing pending summaries:');
      setState(() => syncPendingSummariesOutput.append(error));
    });
  }

  void syncPendingEvents() {
    syncPendingEventsOutput.clear();

    setState(() => syncPendingEventsOutput.append('Syncing pending events...'));

    rookEventManager.syncPendingEvents().then((_) {
      setState(() =>
          syncPendingEventsOutput.append('Pending events synced successfully'));
    }).catchError((exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      syncPendingEventsOutput.append('Error syncing pending events:');
      setState(() => syncPendingEventsOutput.append(error));
    });
  }
}
