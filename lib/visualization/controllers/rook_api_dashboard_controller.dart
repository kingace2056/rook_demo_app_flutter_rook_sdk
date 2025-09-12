import 'package:get/get.dart';
import '../services/rook_health_service.dart';

class RookApiDashboardController extends GetxController {
  final RookHealthService _rookHealthService = Get.find<RookHealthService>();

  // Loading states for different API categories
  final RxBool isLoadingUserManagement = false.obs;
  final RxBool isLoadingPhysicalHealth = false.obs;
  final RxBool isLoadingSleepHealth = false.obs;
  final RxBool isLoadingBodyHealth = false.obs;
  final RxBool isTestingAllEndpoints = false.obs;

  // Error states
  final RxString userManagementError = ''.obs;
  final RxString physicalHealthError = ''.obs;
  final RxString sleepHealthError = ''.obs;
  final RxString bodyHealthError = ''.obs;
  final RxString allEndpointsError = ''.obs;

  // Data storage
  final RxMap<String, dynamic> userManagementData = <String, dynamic>{}.obs;
  final RxMap<String, dynamic> physicalHealthData = <String, dynamic>{}.obs;
  final RxMap<String, dynamic> sleepHealthData = <String, dynamic>{}.obs;
  final RxMap<String, dynamic> bodyHealthData = <String, dynamic>{}.obs;
  final RxMap<String, dynamic> allEndpointsResults = <String, dynamic>{}.obs;

  // Demo data constants
  static const String demoUserId = 'demoUserId';
  static const String demoDate = '2022-10-28';
  static const String demoTimezone = 'America/Mexico_City';
  static const String demoDataSource = 'Fitbit';
  static const String demoWebhookUrl = 'https://example.com/webhook';

  @override
  void onInit() {
    super.onInit();
    // Initialize service if not already registered
    if (!Get.isRegistered<RookHealthService>()) {
      Get.put(RookHealthService());
    }
  }

  // User Management API calls
  Future<void> getUserInfo() async {
    try {
      isLoadingUserManagement.value = true;
      userManagementError.value = '';

      final result = await _rookHealthService.getUserInfo(demoUserId, demoDate);
      userManagementData['userInfo'] = result;

      Get.snackbar(
        'Success',
        'User info retrieved successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      userManagementError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to get user info: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingUserManagement.value = false;
    }
  }

  Future<void> getAuthorizedDataSources() async {
    try {
      isLoadingUserManagement.value = true;
      userManagementError.value = '';

      final result =
          await _rookHealthService.getAuthorizedDataSourcesV2(demoUserId);
      userManagementData['authorizedDataSources'] = result;

      Get.snackbar(
        'Success',
        'Authorized data sources retrieved successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      userManagementError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to get authorized data sources: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingUserManagement.value = false;
    }
  }

  Future<void> updateUserTimeZone() async {
    try {
      isLoadingUserManagement.value = true;
      userManagementError.value = '';

      final result =
          await _rookHealthService.updateUserTimeZone(demoUserId, demoTimezone);
      userManagementData['timeZoneUpdate'] = result;

      Get.snackbar(
        'Success',
        'User timezone updated successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      userManagementError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to update user timezone: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingUserManagement.value = false;
    }
  }

  Future<void> revokeDataSource() async {
    try {
      isLoadingUserManagement.value = true;
      userManagementError.value = '';

      final result =
          await _rookHealthService.revokeDataSource(demoUserId, demoDataSource);
      userManagementData['revokeDataSource'] = result;

      Get.snackbar(
        'Success',
        'Data source revoked successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      userManagementError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to revoke data source: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingUserManagement.value = false;
    }
  }

  // Physical Health API calls
  Future<void> getPhysicalSummary() async {
    try {
      isLoadingPhysicalHealth.value = true;
      physicalHealthError.value = '';

      final result =
          await _rookHealthService.getPhysicalSummary(demoUserId, demoDate);
      physicalHealthData['summary'] = result;

      Get.snackbar(
        'Success',
        'Physical summary retrieved successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      physicalHealthError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to get physical summary: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingPhysicalHealth.value = false;
    }
  }

  Future<void> getActivityEvents() async {
    try {
      isLoadingPhysicalHealth.value = true;
      physicalHealthError.value = '';

      final result =
          await _rookHealthService.getActivityEvents(demoUserId, demoDate);
      physicalHealthData['activityEvents'] = result;

      Get.snackbar(
        'Success',
        'Activity events retrieved successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      physicalHealthError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to get activity events: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingPhysicalHealth.value = false;
    }
  }

  Future<void> getHeartRateEvents() async {
    try {
      isLoadingPhysicalHealth.value = true;
      physicalHealthError.value = '';

      final result =
          await _rookHealthService.getHeartRateEvents(demoUserId, demoDate);
      physicalHealthData['heartRateEvents'] = result;

      Get.snackbar(
        'Success',
        'Heart rate events retrieved successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      physicalHealthError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to get heart rate events: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingPhysicalHealth.value = false;
    }
  }

  Future<void> getOxygenationEvents() async {
    try {
      isLoadingPhysicalHealth.value = true;
      physicalHealthError.value = '';

      final result =
          await _rookHealthService.getOxygenationEvents(demoUserId, demoDate);
      physicalHealthData['oxygenationEvents'] = result;

      Get.snackbar(
        'Success',
        'Oxygenation events retrieved successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      physicalHealthError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to get oxygenation events: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingPhysicalHealth.value = false;
    }
  }

  Future<void> getStressEvents() async {
    try {
      isLoadingPhysicalHealth.value = true;
      physicalHealthError.value = '';

      final result =
          await _rookHealthService.getStressEvents(demoUserId, demoDate);
      physicalHealthData['stressEvents'] = result;

      Get.snackbar(
        'Success',
        'Stress events retrieved successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      physicalHealthError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to get stress events: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingPhysicalHealth.value = false;
    }
  }

  // Sleep Health API calls
  Future<void> getSleepSummary() async {
    try {
      isLoadingSleepHealth.value = true;
      sleepHealthError.value = '';

      final result =
          await _rookHealthService.getSleepSummary(demoUserId, demoDate);
      sleepHealthData['summary'] = result;

      Get.snackbar(
        'Success',
        'Sleep summary retrieved successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      sleepHealthError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to get sleep summary: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingSleepHealth.value = false;
    }
  }

  // Body Health API calls
  Future<void> getBodySummary() async {
    try {
      isLoadingBodyHealth.value = true;
      bodyHealthError.value = '';

      final result =
          await _rookHealthService.getBodySummary(demoUserId, demoDate);
      bodyHealthData['summary'] = result;

      Get.snackbar(
        'Success',
        'Body summary retrieved successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      bodyHealthError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to get body summary: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingBodyHealth.value = false;
    }
  }

  Future<void> getNutritionEvents() async {
    try {
      isLoadingBodyHealth.value = true;
      bodyHealthError.value = '';

      final result =
          await _rookHealthService.getNutritionEvents(demoUserId, demoDate);
      bodyHealthData['nutritionEvents'] = result;

      Get.snackbar(
        'Success',
        'Nutrition events retrieved successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      bodyHealthError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to get nutrition events: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingBodyHealth.value = false;
    }
  }

  Future<void> getBloodGlucoseEvents() async {
    try {
      isLoadingBodyHealth.value = true;
      bodyHealthError.value = '';

      final result =
          await _rookHealthService.getBloodGlucoseEvents(demoUserId, demoDate);
      bodyHealthData['bloodGlucoseEvents'] = result;

      Get.snackbar(
        'Success',
        'Blood glucose events retrieved successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      bodyHealthError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to get blood glucose events: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingBodyHealth.value = false;
    }
  }

  Future<void> getBloodPressureEvents() async {
    try {
      isLoadingBodyHealth.value = true;
      bodyHealthError.value = '';

      final result =
          await _rookHealthService.getBloodPressureEvents(demoUserId, demoDate);
      bodyHealthData['bloodPressureEvents'] = result;

      Get.snackbar(
        'Success',
        'Blood pressure events retrieved successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      bodyHealthError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to get blood pressure events: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoadingBodyHealth.value = false;
    }
  }

  // Test all endpoints at once
  Future<void> testAllEndpoints() async {
    try {
      isTestingAllEndpoints.value = true;
      allEndpointsError.value = '';

      final results = await _rookHealthService.testAllEndpoints();
      allEndpointsResults.value = results;

      Get.snackbar(
        'Success',
        'All endpoints tested successfully',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      allEndpointsError.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to test all endpoints: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isTestingAllEndpoints.value = false;
    }
  }

  // Clear all data
  void clearAllData() {
    userManagementData.clear();
    physicalHealthData.clear();
    sleepHealthData.clear();
    bodyHealthData.clear();
    allEndpointsResults.clear();

    userManagementError.value = '';
    physicalHealthError.value = '';
    sleepHealthError.value = '';
    bodyHealthError.value = '';
    allEndpointsError.value = '';
  }
}
