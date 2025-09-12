import 'package:dio/dio.dart';
import 'package:rook_sdk_demo_app_flutter/visualization/core/constants/api_constants.dart';

class HeartRateService {
  static final Dio _dio = Dio();

  static String get _baseUrl => ApiConstants.baseUrl;

  static Future<List<Map<String, dynamic>>> getHeartRateEvents({
    required String userId,
    String? startDate,
    String? endDate,
    String dateField = 'data',
    int limit = 50,
    int skip = 0,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'user_id': userId,
        'date_field': dateField,
        'limit': limit,
        'skip': skip,
      };

      if (startDate != null) queryParams['start_date'] = startDate;
      if (endDate != null) queryParams['end_date'] = endDate;

      final response = await _dio.get(
        '$_baseUrl/api/heart-rate-events',
        queryParameters: queryParams,
      );

      if (response.statusCode == 200 && response.data['success'] == true) {
        final List<dynamic> data = response.data['data'] ?? [];
        return data.cast<Map<String, dynamic>>();
      } else {
        throw Exception(
          'Failed to fetch heart rate events: ${response.data['message'] ?? 'Unknown error'}',
        );
      }
    } on DioException catch (e) {
      throw Exception('Network error: ${e.message}');
    } catch (e) {
      throw Exception('Failed to fetch heart rate events: $e');
    }
  }

  static Future<List<Map<String, dynamic>>> getYesterdayHeartRateEvents(
    String userId,
  ) async {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    final startOfDay = DateTime(yesterday.year, yesterday.month, yesterday.day);
    final endOfDay = startOfDay.add(
      const Duration(hours: 23, minutes: 59, seconds: 59),
    );

    return getHeartRateEvents(
      userId: userId,
      startDate: startOfDay.toIso8601String(),
      endDate: endOfDay.toIso8601String(),
      dateField: 'data',
    );
  }

  static Future<List<Map<String, dynamic>>> getHardcodedDateHeartRateEvents(
    String userId,
  ) async {
    // Using the date from your sample data: 2025-08-30
    final targetDate = DateTime(2025, 8, 30);
    final startOfDay = DateTime(
      targetDate.year,
      targetDate.month,
      targetDate.day,
    );
    final endOfDay = startOfDay.add(
      const Duration(hours: 23, minutes: 59, seconds: 59),
    );

    return getHeartRateEvents(
      userId: userId,
      startDate: startOfDay.toIso8601String(),
      endDate: endOfDay.toIso8601String(),
      dateField: 'data',
    );
  }
}
