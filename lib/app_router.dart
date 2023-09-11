import 'package:flutter/material.dart';
import 'package:rook_sdk_demo_app_flutter/features/sdk_apple_health/sdk_apple_health_playground.dart';
import 'features/home_screen.dart';
import 'features/sdk_health_connect/sdk_health_connect_playground.dart';

class AppRouter {
  Route<Object?>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreenRoute:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case sdkHealthConnectPlaygroundRoute:
        return MaterialPageRoute(
          builder: (context) => const SdkHealthConnectPlayground(),
        );
      case sdkAppleHealthPlaygroundRoute:
        return MaterialPageRoute(
          builder: (context) => const SdkAppleHealthPlayground(),
        );
      default:
        return null;
    }
  }
}
