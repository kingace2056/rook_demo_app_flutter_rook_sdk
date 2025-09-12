import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/sleep_summary.dart';

class SleepService {
  static const String baseUrl = 'http://localhost:8080/api';

  Future<List<SleepSummary>> getSleepSummaries({
    required String userId,
    int limit = 30,
    int skip = 0,
    String? startDate,
    String? endDate,
  }) async {
    try {
      final Map<String, String> queryParams = {
        'user_id': userId,
        'limit': limit.toString(),
        'skip': skip.toString(),
      };

      if (startDate != null) queryParams['start_date'] = startDate;
      if (endDate != null) queryParams['end_date'] = endDate;

      final uri = Uri.parse(
        '$baseUrl/sleep-summaries',
      ).replace(queryParameters: queryParams);

      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['success'] == true) {
          final List<dynamic> summariesJson = data['data'];
          return summariesJson
              .map((json) => SleepSummary.fromJson(json))
              .toList();
        } else {
          throw Exception('API returned success: false');
        }
      } else {
        throw Exception(
          'Failed to load sleep summaries: ${response.statusCode}',
        );
      }
    } catch (e) {
      print('Error fetching sleep summaries: $e');
      rethrow;
    }
  }

  Future<SleepSummary?> getTodaySleepSummary(String userId) async {
    try {
      final today = DateTime.now();
      final startOfDay = DateTime(today.year, today.month, today.day);
      final endOfDay = startOfDay.add(Duration(days: 1));

      final summaries = await getSleepSummaries(
        userId: userId,
        limit: 1,
        startDate: startOfDay.toIso8601String(),
        endDate: endOfDay.toIso8601String(),
      );

      return summaries.isNotEmpty ? summaries.first : null;
    } catch (e) {
      print('Error fetching today\'s sleep summary: $e');
      return null;
    }
  }

  Future<List<SleepSummary>> getHistoricalSleepSummaries({
    required String userId,
    int days = 30,
  }) async {
    try {
      final endDate = DateTime.now();
      final startDate = endDate.subtract(Duration(days: days));

      return await getSleepSummaries(
        userId: userId,
        limit: days,
        startDate: startDate.toIso8601String(),
        endDate: endDate.toIso8601String(),
      );
    } catch (e) {
      print('Error fetching historical sleep summaries: $e');
      rethrow;
    }
  }
}
