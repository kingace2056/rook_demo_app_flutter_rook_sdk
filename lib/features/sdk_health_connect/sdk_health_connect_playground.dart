import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_demo_app_flutter/common/console_output.dart';
import 'package:rook_sdk_demo_app_flutter/common/widget/scrollable_scaffold.dart';
import 'package:rook_sdk_demo_app_flutter/common/widget/section_title.dart';
import 'package:rook_sdk_demo_app_flutter/features/sdk_health_connect/android_steps_tracker_playground.dart';
import 'package:rook_sdk_demo_app_flutter/secrets.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:url_launcher/url_launcher.dart';

const String sdkHealthConnectPlaygroundRoute = '/sdk-health-connect/playground';

class SdkHealthConnectPlayground extends StatefulWidget {
  const SdkHealthConnectPlayground({super.key});

  @override
  State<SdkHealthConnectPlayground> createState() =>
      _SdkHealthConnectPlaygroundState();
}

class _SdkHealthConnectPlaygroundState
    extends State<SdkHealthConnectPlayground> {
  final Logger logger = Logger('SdkHealthConnectPlayground');

  final rookConfigurationManager = HCRookConfigurationManager();
  final rookHealthPermissionsManager = HCRookHealthPermissionsManager();
  final rookSummaryManager = HCRookSummaryManager();
  final rookEventManager = HCRookEventManager();

  final ConsoleOutput configurationOutput = ConsoleOutput();
  final ConsoleOutput initializeOutput = ConsoleOutput();
  final ConsoleOutput updateUserOutput = ConsoleOutput();
  final ConsoleOutput availabilityOutput = ConsoleOutput();
  final ConsoleOutput checkPermissionsOutput = ConsoleOutput();
  final ConsoleOutput syncOutput = ConsoleOutput();
  final ConsoleOutput syncPendingSummariesOutput = ConsoleOutput();
  final ConsoleOutput syncPendingEventsOutput = ConsoleOutput();

  bool enableNavigation = false;

  final _formKey = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'SDK Health Connect',
      floatingActionButton: FilledButton.tonal(
        onPressed: enableNavigation
            ? () => Navigator.of(context).pushNamed(
                  androidStepsTrackerPlaygroundRoute,
                )
            : null,
        child: const Icon(Icons.directions_walk_rounded),
      ),
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
            const SectionTitle('4. Check availability'),
            Text(availabilityOutput.current),
            ElevatedButton(
              onPressed: checkAvailability,
              child: const Text('Check availability'),
            ),
            const SectionTitle('4.1. Download Health Connect'),
            ElevatedButton(
              onPressed: downloadHealthConnect,
              child: const Text('Download Health Connect'),
            ),
            const SectionTitle('5. Check permissions'),
            Text(checkPermissionsOutput.current),
            ElevatedButton(
              onPressed: checkPermissions,
              child: const Text('Check permissions'),
            ),
            const SectionTitle('5.1. Request permissions'),
            ElevatedButton(
              onPressed: requestPermissions,
              child: const Text('Request permissions'),
            ),
            const SectionTitle('5.2. Open Health Connect'),
            ElevatedButton(
              onPressed: openHealthConnect,
              child: const Text('Open Health Connect'),
            ),
            const SectionTitle('6. Sync health data'),
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
      Secrets.secretKey,
      environment,
    );

    configurationOutput.clear();

    configurationOutput.append('Using configuration:');
    configurationOutput.append('$rookConfiguration');

    if (kDebugMode) {
      rookConfigurationManager.enableNativeLogs();
    }

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
        (NotAuthorizedException it) => 'NotAuthorizedException: ${it.message}',
        (ConnectTimeoutException it) => 'TimeoutException: ${it.message}',
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
      setState(() {
        updateUserOutput.append('userID updated successfully');
        enableNavigation = true;
      });
    }).catchError((exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (ConnectTimeoutException it) => 'TimeoutException: ${it.message}',
        _ => exception.toString(),
      };

      updateUserOutput.append('Error updating userID:');
      setState(() => updateUserOutput.append(error));
    });
  }

  void deleteUser() {
    logger.info('Deleting user from rook...');

    rookConfigurationManager.deleteUserFromRook().then((_) {
      logger.info('User deleted from rook');
    }).catchError((exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        _ => exception.toString(),
      };

      logger.info('Error deleting user from rook:');
      logger.info(error);
    });
  }

  void updateTimeZoneInformation() {
    logger.info('Updating user timezone...');

    rookConfigurationManager.syncUserTimeZone().then((_) {
      logger.info('User timezone updated successfully');
    }).catchError((exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) => 'HttpRequestException: ${it.message}',
        _ => exception.toString(),
      };

      logger.info('Error updating user timezone:');
      logger.info(error);
    });
  }

  void checkAvailability() {
    availabilityOutput.clear();

    setState(() => availabilityOutput.append('Checking availability...'));

    rookHealthPermissionsManager.checkAvailability().then((availability) {
      final string = switch (availability) {
        HCAvailabilityStatus.installed =>
          'Health Connect is installed! You can skip the next step',
        HCAvailabilityStatus.notInstalled =>
          'Health Connect is not installed. Please download from the Play Store',
        _ =>
          'This device is not compatible with health connect. Please close the app',
      };

      availabilityOutput.append('Availability checked successfully');
      setState(() => availabilityOutput.append(string));
    }).catchError((exception) {
      final error = exception.toString();

      availabilityOutput.append('Error checking availability:');
      setState(() => availabilityOutput.append(error));
    });
  }

  void downloadHealthConnect() async {
    try {
      await launchUrl(Uri.parse(
        'https://play.google.com/store/apps/details?id=com.google.android.apps.healthdata',
      ));
    } catch (ignored) {
      // Ignored
    }
  }

  void checkPermissions() {
    checkPermissionsOutput.clear();

    setState(() => checkPermissionsOutput
        .append('Checking all permissions (Sleep, Physical and Body)...'));

    rookHealthPermissionsManager
        .checkPermissions(HealthPermission.all)
        .then((hasPermissions) {
      final string = hasPermissions
          ? 'All permissions are granted! You can skip the next 2 steps'
          : 'There are missing permissions. Please grant them';

      checkPermissionsOutput.append('All permissions checked successfully');
      setState(() => checkPermissionsOutput.append(string));
    }).catchError((exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        _ => exception.toString(),
      };

      checkPermissionsOutput.append('Error checking all permissions:');
      setState(() => checkPermissionsOutput.append(error));
    });
  }

  void requestPermissions() {
    logger.info('Requesting all permissions...');

    rookHealthPermissionsManager
        .requestPermissions(HealthPermission.all)
        .then((_) {
      logger.info('All permissions request sent');
    }).catchError((exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      logger.info('Error requesting all permissions:');
      logger.info(error);
    });
  }

  void openHealthConnect() {
    logger.info('Opening Health Connect...');

    rookHealthPermissionsManager.openHealthConnectSettings().then((_) {
      logger.info('Health Connect was opened');
    }).catchError((exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        _ => exception.toString(),
      };

      logger.info('Error opening Health Connect:');
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
        syncOutput.append('Syncing BloodGlucose events of today: $today...'));
    await syncBloodGlucoseEvents(today);

    setState(() =>
        syncOutput.append('Syncing BloodPressure events of today: $today...'));
    await syncBloodPressureEvents(today);

    setState(() =>
        syncOutput.append('Syncing BodyMetrics events of today: $today...'));
    await syncBodyMetricsEvents(today);

    setState(() =>
        syncOutput.append('Syncing BodyHeartRate events of today: $today...'));
    await syncBodyHeartRateEvents(today);

    setState(() => syncOutput
        .append('Syncing PhysicalHeartRate events of today: $today...'));
    await syncPhysicalHeartRateEvents(today);

    setState(() =>
        syncOutput.append('Syncing Hydration events of today: $today...'));
    await syncHydrationEvents(today);

    setState(() =>
        syncOutput.append('Syncing Nutrition events of today: $today...'));
    await syncNutritionEvents(today);

    setState(() => syncOutput
        .append('Syncing BodyOxygenation events of today: $today...'));
    await syncBodyOxygenationEvents(today);

    setState(() => syncOutput
        .append('Syncing PhysicalOxygenation events of today: $today...'));
    await syncPhysicalOxygenationEvents(today);

    setState(() =>
        syncOutput.append('Syncing Temperature events of today: $today...'));
    await syncTemperatureEvents(today);
  }

  Future<void> syncSleepSummary(DateTime yesterday) async {
    try {
      final shouldSyncSummariesForYesterday =
          await rookSummaryManager.shouldSyncSleepSummariesFor(
        yesterday,
      );

      if (shouldSyncSummariesForYesterday) {
        try {
          await rookSummaryManager.syncSleepSummary(yesterday);

          setState(
              () => syncOutput.append('Sleep summary synced successfully'));
        } catch (exception) {
          final error = switch (exception) {
            (SDKNotInitializedException it) =>
              'SDKNotInitializedException: ${it.message}',
            (UserNotInitializedException it) =>
              'UserNotInitializedException: ${it.message}',
            (HealthConnectNotInstalledException it) =>
              'HealthConnectNotInstalledException: ${it.message}',
            (DeviceNotSupportedException it) =>
              'DeviceNotSupportedException: ${it.message}',
            (MissingPermissionsException it) =>
              'MissingPermissionsException: ${it.message}',
            (ConnectTimeoutException it) =>
              'ConnectTimeoutException: ${it.message}',
            (HttpRequestException it) =>
              'HttpRequestException: code: ${it.code} message: ${it.message}',
            _ => exception.toString(),
          };

          syncOutput.append('Error syncing Sleep summary:');
          setState(() => syncOutput.append(error));
        }
      } else {
        setState(() =>
            syncOutput.append('Sleep summary was already synced for this day'));
      }
    } catch (exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing Sleep summary:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncPhysicalSummary(DateTime yesterday) async {
    try {
      final shouldSyncSummariesForYesterday =
          await rookSummaryManager.shouldSyncPhysicalSummariesFor(
        yesterday,
      );

      if (shouldSyncSummariesForYesterday) {
        try {
          await rookSummaryManager.syncPhysicalSummary(yesterday);

          setState(
              () => syncOutput.append('Physical summary synced successfully'));
        } catch (exception) {
          final error = switch (exception) {
            (SDKNotInitializedException it) =>
              'SDKNotInitializedException: ${it.message}',
            (UserNotInitializedException it) =>
              'UserNotInitializedException: ${it.message}',
            (HealthConnectNotInstalledException it) =>
              'HealthConnectNotInstalledException: ${it.message}',
            (DeviceNotSupportedException it) =>
              'DeviceNotSupportedException: ${it.message}',
            (MissingPermissionsException it) =>
              'MissingPermissionsException: ${it.message}',
            (ConnectTimeoutException it) =>
              'ConnectTimeoutException: ${it.message}',
            (HttpRequestException it) =>
              'HttpRequestException: code: ${it.code} message: ${it.message}',
            _ => exception.toString(),
          };

          syncOutput.append('Error syncing Physical summary:');
          setState(() => syncOutput.append(error));
        }
      } else {
        setState(() => syncOutput
            .append('Physical summary was already synced for this day'));
      }
    } catch (exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing Physical summary:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncBodySummary(DateTime yesterday) async {
    try {
      final shouldSyncSummariesForYesterday =
          await rookSummaryManager.shouldSyncBodySummariesFor(
        yesterday,
      );

      if (shouldSyncSummariesForYesterday) {
        try {
          await rookSummaryManager.syncBodySummary(yesterday);

          setState(() => syncOutput.append('Body summary synced successfully'));
        } catch (exception) {
          final error = switch (exception) {
            (SDKNotInitializedException it) =>
              'SDKNotInitializedException: ${it.message}',
            (UserNotInitializedException it) =>
              'UserNotInitializedException: ${it.message}',
            (HealthConnectNotInstalledException it) =>
              'HealthConnectNotInstalledException: ${it.message}',
            (DeviceNotSupportedException it) =>
              'DeviceNotSupportedException: ${it.message}',
            (MissingPermissionsException it) =>
              'MissingPermissionsException: ${it.message}',
            (ConnectTimeoutException it) =>
              'ConnectTimeoutException: ${it.message}',
            (HttpRequestException it) =>
              'HttpRequestException: code: ${it.code} message: ${it.message}',
            _ => exception.toString(),
          };

          syncOutput.append('Error syncing Body summary:');
          setState(() => syncOutput.append(error));
        }
      } else {
        setState(() =>
            syncOutput.append('Body summary was already synced for this day'));
      }
    } catch (exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
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
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        (MissingPermissionsException it) =>
          'MissingPermissionsException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) =>
          'HttpRequestException: code: ${it.code} message: ${it.message}',
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing Physical events:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncBloodGlucoseEvents(DateTime today) async {
    try {
      await rookEventManager.syncBloodGlucoseEvents(today);

      setState(
          () => syncOutput.append('BloodGlucose events synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        (MissingPermissionsException it) =>
          'MissingPermissionsException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) =>
          'HttpRequestException: code: ${it.code} message: ${it.message}',
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing BloodGlucose events:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncBloodPressureEvents(DateTime today) async {
    try {
      await rookEventManager.syncBloodPressureEvents(today);

      setState(
          () => syncOutput.append('BloodPressure events synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        (MissingPermissionsException it) =>
          'MissingPermissionsException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) =>
          'HttpRequestException: code: ${it.code} message: ${it.message}',
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing BloodPressure events:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncBodyMetricsEvents(DateTime today) async {
    try {
      await rookEventManager.syncBodyMetricsEvents(today);

      setState(
          () => syncOutput.append('BodyMetrics events synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        (MissingPermissionsException it) =>
          'MissingPermissionsException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) =>
          'HttpRequestException: code: ${it.code} message: ${it.message}',
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing BodyMetrics events:');
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
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        (MissingPermissionsException it) =>
          'MissingPermissionsException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) =>
          'HttpRequestException: code: ${it.code} message: ${it.message}',
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
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        (MissingPermissionsException it) =>
          'MissingPermissionsException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) =>
          'HttpRequestException: code: ${it.code} message: ${it.message}',
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing PhysicalHeartRate events:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncHydrationEvents(DateTime today) async {
    try {
      await rookEventManager.syncHydrationEvents(today);

      setState(() => syncOutput.append('Hydration events synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        (MissingPermissionsException it) =>
          'MissingPermissionsException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) =>
          'HttpRequestException: code: ${it.code} message: ${it.message}',
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing Hydration events:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncNutritionEvents(DateTime today) async {
    try {
      await rookEventManager.syncNutritionEvents(today);

      setState(() => syncOutput.append('Nutrition events synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        (MissingPermissionsException it) =>
          'MissingPermissionsException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) =>
          'HttpRequestException: code: ${it.code} message: ${it.message}',
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing Nutrition events:');
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
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        (MissingPermissionsException it) =>
          'MissingPermissionsException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) =>
          'HttpRequestException: code: ${it.code} message: ${it.message}',
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
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        (MissingPermissionsException it) =>
          'MissingPermissionsException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) =>
          'HttpRequestException: code: ${it.code} message: ${it.message}',
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing PhysicalOxygenation events:');
      setState(() => syncOutput.append(error));
    }
  }

  Future<void> syncTemperatureEvents(DateTime today) async {
    try {
      await rookEventManager.syncTemperatureEvents(today);

      setState(
          () => syncOutput.append('Temperature events synced successfully'));
    } catch (exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        (MissingPermissionsException it) =>
          'MissingPermissionsException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) =>
          'HttpRequestException: code: ${it.code} message: ${it.message}',
        _ => exception.toString(),
      };

      syncOutput.append('Error syncing Temperature events:');
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
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) =>
          'HttpRequestException: code: ${it.code} message: ${it.message}',
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
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) =>
          'HttpRequestException: code: ${it.code} message: ${it.message}',
        _ => exception.toString(),
      };

      syncPendingEventsOutput.append('Error syncing pending events:');
      setState(() => syncPendingEventsOutput.append(error));
    });
  }
}
