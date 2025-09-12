import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logging/logging.dart';
import 'package:receive_intent/receive_intent.dart';
import 'package:rook_sdk_demo_app_flutter/app_router.dart';
import 'package:rook_sdk_demo_app_flutter/color_schemes.g.dart';
import 'package:rook_sdk_demo_app_flutter/features/sdk_apple_health/ios_configuration.dart';
import 'package:rook_sdk_demo_app_flutter/features/sdk_health_connect/android_configuration.dart';
import 'package:rook_sdk_demo_app_flutter/features/sdk_health_connect/hc_privacy_policy_screen.dart';

const String hc = 'androidx.health.ACTION_SHOW_PERMISSIONS_RATIONALE';
const String hc14 = 'android.intent.action.VIEW_PERMISSION_USAGE';

void main() async {
  await dotenv.load(fileName: ".env.dev");
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    }
  });

  WidgetsFlutterBinding.ensureInitialized();

  runAppFromIntent();
}

void runAppFromIntent() async {
  Widget app = RookApp();

  try {
    final receivedIntent = await ReceiveIntent.getInitialIntent();
    final action = receivedIntent?.action;

    if (action == hc || action == hc14) {
      app = const HCPrivacyPolicyApp();
    }
  } catch (error) {
    // Ignored
  } finally {
    runApp(app);
  }
}

class RookApp extends StatelessWidget {
  final AppRouter _router = AppRouter();

  RookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '(Flutter) Rook SDK',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      initialRoute: defaultTargetPlatform == TargetPlatform.android
          ? androidConfigurationRoute
          : iosConfigurationRoute,
      onGenerateRoute: _router.onGenerateRoute,
    );
  }
}

class HCPrivacyPolicyApp extends StatelessWidget {
  const HCPrivacyPolicyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Privacy policy',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const HCPrivacyPolicyScreen(),
    );
  }
}
