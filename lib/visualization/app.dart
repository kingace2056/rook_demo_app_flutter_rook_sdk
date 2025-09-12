import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rook_sdk_demo_app_flutter/visualization/screens/overall_data_view.dart';
import 'home_screen.dart';
import 'screens/sleep_data_screen.dart';
import 'screens/rook_api_dashboard_page.dart';
import 'core/di/dependency_injection.dart';

void main() {
  DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '11 Hype Health - ROOK Integration',
      home: const MainNavigationScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
    const SleepDataScreen(),
    const OverallDataView(),
    const RookApiDashboard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.bedtime),
            label: 'Sleep Data',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Overall Data',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.api),
            label: 'ROOK API',
          ),
        ],
      ),
    );
  }
}
