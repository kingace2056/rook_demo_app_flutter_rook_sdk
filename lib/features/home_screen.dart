import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_sdk_demo_app_flutter/features/sdk_apple_health/sdk_apple_health_playground.dart';
import 'package:rook_sdk_demo_app_flutter/features/sdk_health_connect/sdk_health_connect_playground.dart';

const String homeScreenRoute = '/home';

class HomeScreen extends StatelessWidget {
  final Logger logger = Logger('HomeScreen');

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Package selection')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (defaultTargetPlatform == TargetPlatform.android)
                ElevatedButton(
                  onPressed: () =>
                      navigate(context, sdkHealthConnectPlaygroundRoute),
                  child: const Text('SDK Health Connect'),
                ),
              if (defaultTargetPlatform == TargetPlatform.iOS)
                ElevatedButton(
                  onPressed: () =>
                      navigate(context, sdkAppleHealthPlaygroundRoute),
                  child: const Text('SDK Apple Health'),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void navigate(BuildContext context, String route) {
    Navigator.of(context).pushNamed(route);
  }
}
