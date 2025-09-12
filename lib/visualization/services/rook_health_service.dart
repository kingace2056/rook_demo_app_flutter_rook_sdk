import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../core/network/dio_client.dart';

class RookHealthService extends GetxService {
  final DioClient _dioClient = Get.find<DioClient>();

  // Demo credentials from ROOK API documentation
  static const String demoClientUUID = 'demoClientUUID';
  static const String demoClientSecret = 'demoClientSecret';
  static const String demoUserId = 'demoUserId';
  static const String demoDate = '2022-10-28';

  // Production and Sandbox URLs
  static const String productionUrl = 'https://api.rook-connect.com';
  static const String sandboxUrl = 'https://api.rook-connect.review';

  // User Management APIs
  Future<Map<String, dynamic>> getUserInfo(String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/user/info',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get user info: $e');
    }
  }

  Future<Map<String, dynamic>> getDataSourceAuthorizer(
      String userId, String dataSource) async {
    try {
      final response = await _dioClient.get(
        '/api/v1/user_id/$userId/data_source/$dataSource/authorizer',
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get data source authorizer: $e');
    }
  }

  Future<Map<String, dynamic>> getAuthorizedDataSources(String userId) async {
    try {
      final response = await _dioClient.get(
        '/api/v1/user_id/$userId/data_sources/authorized',
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get authorized data sources: $e');
    }
  }

  Future<Map<String, dynamic>> getAuthorizedDataSourcesV2(String userId) async {
    try {
      final response = await _dioClient.get(
        '/api/v2/user_id/$userId/data_sources/authorized',
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get authorized data sources V2: $e');
    }
  }

  Future<Map<String, dynamic>> updateUserTimeZone(
      String userId, String timezone) async {
    try {
      final response = await _dioClient.post(
        '/api/v1/user_id/$userId/time_zone',
        data: {
          'timezone': timezone,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to update user timezone: $e');
    }
  }

  Future<Map<String, dynamic>> createUserInformation(
      Map<String, dynamic> userInfo) async {
    try {
      final response = await _dioClient.post(
        '/api/v2/user-information',
        data: userInfo,
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to create user information: $e');
    }
  }

  Future<Map<String, dynamic>> revokeDataSource(
      String userId, String dataSource) async {
    try {
      final response = await _dioClient.post(
        '/api/v1/user_id/$userId/data_sources/revoke_auth',
        data: {
          'data_source': dataSource,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to revoke data source: $e');
    }
  }

  Future<Map<String, dynamic>> resendRejectedNotifications(
      String webhookUrl) async {
    try {
      final response = await _dioClient.post(
        '/api/v2/resend_rejected_notifications',
        data: {
          'webhook_url': webhookUrl,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to resend rejected notifications: $e');
    }
  }

  Future<Map<String, dynamic>> getUsersStatus(String upToDate,
      {int? page}) async {
    try {
      final response = await _dioClient.get(
        '/api/v1/client/users/status',
        queryParameters: {
          'up_to_date': upToDate,
          if (page != null) 'page': page,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get users status: $e');
    }
  }

  // Physical Health APIs
  Future<Map<String, dynamic>> getPhysicalSummary(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/physical_health/summary',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get physical summary: $e');
    }
  }

  Future<Map<String, dynamic>> getActivityEvents(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/physical_health/events/activity',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get activity events: $e');
    }
  }

  Future<Map<String, dynamic>> getHeartRateEvents(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/physical_health/events/heart_rate',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get heart rate events: $e');
    }
  }

  Future<Map<String, dynamic>> getOxygenationEvents(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/physical_health/events/oxygenation',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get oxygenation events: $e');
    }
  }

  Future<Map<String, dynamic>> getStressEvents(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/physical_health/events/stress',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get stress events: $e');
    }
  }

  // Sleep Health APIs
  Future<Map<String, dynamic>> getSleepSummary(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/sleep_health/summary',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get sleep summary: $e');
    }
  }

  // Body Health APIs
  Future<Map<String, dynamic>> getBodySummary(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/body_health/summary',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get body summary: $e');
    }
  }

  Future<Map<String, dynamic>> getBodyMetricsEvents(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/body_health/events/body_metrics',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get body metrics events: $e');
    }
  }

  Future<Map<String, dynamic>> getBodyHeartRateEvents(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/body_health/events/heart_rate',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get body heart rate events: $e');
    }
  }

  Future<Map<String, dynamic>> getBodyOxygenationEvents(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/body_health/events/oxygenation',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get body oxygenation events: $e');
    }
  }

  Future<Map<String, dynamic>> getNutritionEvents(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/body_health/events/nutrition',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get nutrition events: $e');
    }
  }

  Future<Map<String, dynamic>> getMoodEvents(String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/body_health/events/mood',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get mood events: $e');
    }
  }

  Future<Map<String, dynamic>> getHydrationEvents(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/body_health/events/hydration',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get hydration events: $e');
    }
  }

  Future<Map<String, dynamic>> getBloodGlucoseEvents(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/body_health/events/blood_glucose',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get blood glucose events: $e');
    }
  }

  Future<Map<String, dynamic>> getBloodPressureEvents(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/body_health/events/blood_pressure',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get blood pressure events: $e');
    }
  }

  Future<Map<String, dynamic>> getTemperatureEvents(
      String userId, String date) async {
    try {
      final response = await _dioClient.get(
        '/v2/processed_data/body_health/events/temperature',
        queryParameters: {
          'user_id': userId,
          'date': date,
        },
        options: Options(
          headers: _getBasicAuthHeaders(),
        ),
      );
      return response.data ?? {};
    } catch (e) {
      throw Exception('Failed to get temperature events: $e');
    }
  }

  // Helper method to get basic auth headers
  Map<String, String> _getBasicAuthHeaders() {
    final credentials = '$demoClientUUID:$demoClientSecret';
    final encoded = base64Encode(utf8.encode(credentials));
    return {
      'Authorization': 'Basic $encoded',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
  }

  // Helper method to test all endpoints with demo data
  Future<Map<String, dynamic>> testAllEndpoints() async {
    final results = <String, dynamic>{};

    try {
      // User Management
      results['userInfo'] = await getUserInfo(demoUserId, demoDate);
      results['authorizedDataSourcesV2'] =
          await getAuthorizedDataSourcesV2(demoUserId);

      // Physical Health
      results['physicalSummary'] =
          await getPhysicalSummary(demoUserId, demoDate);
      results['activityEvents'] = await getActivityEvents(demoUserId, demoDate);
      results['heartRateEvents'] =
          await getHeartRateEvents(demoUserId, demoDate);
      results['oxygenationEvents'] =
          await getOxygenationEvents(demoUserId, demoDate);
      results['stressEvents'] = await getStressEvents(demoUserId, demoDate);

      // Sleep Health
      results['sleepSummary'] = await getSleepSummary(demoUserId, demoDate);

      // Body Health
      results['bodySummary'] = await getBodySummary(demoUserId, demoDate);
      results['bodyMetricsEvents'] =
          await getBodyMetricsEvents(demoUserId, demoDate);
      results['nutritionEvents'] =
          await getNutritionEvents(demoUserId, demoDate);
      results['moodEvents'] = await getMoodEvents(demoUserId, demoDate);
      results['hydrationEvents'] =
          await getHydrationEvents(demoUserId, demoDate);
      results['bloodGlucoseEvents'] =
          await getBloodGlucoseEvents(demoUserId, demoDate);
      results['bloodPressureEvents'] =
          await getBloodPressureEvents(demoUserId, demoDate);
      results['temperatureEvents'] =
          await getTemperatureEvents(demoUserId, demoDate);
    } catch (e) {
      results['error'] = e.toString();
    }

    return results;
  }
}
