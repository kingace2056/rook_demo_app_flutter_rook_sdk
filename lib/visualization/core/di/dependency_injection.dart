import 'package:get/get.dart';
import 'package:rook_sdk_demo_app_flutter/visualization/controllers/user_data_controller.dart';
import 'package:rook_sdk_demo_app_flutter/visualization/services/user_data_service.dart';
import '../network/dio_client.dart';
import '../../services/sleep_api_service.dart';
import '../../services/rook_health_service.dart';
import '../../controllers/sleep_controller.dart';
import '../../controllers/home_controller.dart';
import '../../controllers/health_summary_controller.dart';
import '../../controllers/rook_api_dashboard_controller.dart';

class DependencyInjection {
  static void init() {
    // Network (must be first)
    Get.put<DioClient>(DioClient(), permanent: true);

    // Services (after network)
    Get.put<SleepApiService>(SleepApiService(), permanent: true);
    Get.put<UserDataService>(UserDataService(), permanent: true);
    Get.put<RookHealthService>(RookHealthService(), permanent: true);

    // Controllers (lazy loaded)
    Get.lazyPut<SleepController>(() => SleepController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<HealthSummaryController>(() => HealthSummaryController());
    Get.lazyPut<RookApiDashboardController>(() => RookApiDashboardController());

    // UserDataController should be lazy put too for proper initialization
    Get.lazyPut<UserDataController>(() => UserDataController());
  }
}
