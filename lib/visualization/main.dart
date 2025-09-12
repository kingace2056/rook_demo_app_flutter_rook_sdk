import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rook_sdk_demo_app_flutter/visualization/app.dart';

import 'core/di/dependency_injection.dart';
import 'services/storage_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env.dev');

  // Initialize date formatting
  await initializeDateFormatting();

  // Initialize shared preferences
  await StorageService.init();

  // Initialize dependencies
  DependencyInjection.init();

  runApp(const MyApp());
}
