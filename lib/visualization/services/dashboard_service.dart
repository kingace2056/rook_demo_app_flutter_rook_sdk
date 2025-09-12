import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/health_score.dart';
import '../models/physical_summary.dart';
import '../models/body_summary.dart';
import '../models/sleep_summary.dart';

class DashboardService {
  static const String baseUrl = 'http://localhost:8080/api';

  Future<Map<String, dynamic>> getDashboardData({
    required String userId,
    int limit = 30,
  }) async {
    try {
      // Fetch user data
      final userUri = Uri.parse(
        '$baseUrl/users/$userId',
      ).replace(queryParameters: {'limit': limit.toString()});

      final userResponse = await http.get(userUri);

      // Fetch heart rate events
      final heartRateUri = Uri.parse('$baseUrl/heart-rate-events').replace(
        queryParameters: {'user_id': userId, 'limit': limit.toString()},
      );

      final heartRateResponse = await http.get(heartRateUri);

      if (userResponse.statusCode == 200 &&
          heartRateResponse.statusCode == 200) {
        final userData = json.decode(userResponse.body);
        final heartRateData = json.decode(heartRateResponse.body);

        if (userData['success'] == true && heartRateData['success'] == true) {
          final userDataContent = userData['data'];
          final heartRateEvents = heartRateData['data'] ?? [];

          return {
            'healthScores': _parseHealthScores(
              userDataContent['data']['health_scores'] ?? [],
            ),
            'heartRateEvents': _parseHeartRateEvents(heartRateEvents),
            'physicalSummaries': _parsePhysicalSummaries(
              userDataContent['data']['physical_summaries'] ?? [],
            ),
            'bodySummaries': _parseBodySummaries(
              userDataContent['data']['body_summaries'] ?? [],
            ),
            'sleepSummaries': _parseSleepSummaries(
              userDataContent['data']['sleep_summaries'] ?? [],
            ),
            'healthEvents': userDataContent['data']['health_events'] ?? [],
            'totalRecords': userDataContent['total_records'] ?? 0,
          };
        } else {
          throw Exception('API returned success: false');
        }
      } else {
        throw Exception(
          'Failed to load dashboard data: ${userResponse.statusCode}',
        );
      }
    } catch (e) {
      print('Error fetching dashboard data: $e');
      rethrow;
    }
  }

  List<HealthScore> _parseHealthScores(List<dynamic> data) {
    return data.map((json) => HealthScore.fromJson(json)).toList();
  }

  List<PhysicalSummary> _parsePhysicalSummaries(List<dynamic> data) {
    return data.map((json) => PhysicalSummary.fromJson(json)).toList();
  }

  List<BodySummary> _parseBodySummaries(List<dynamic> data) {
    return data.map((json) => BodySummary.fromJson(json)).toList();
  }

  List<SleepSummary> _parseSleepSummaries(List<dynamic> data) {
    return data.map((json) => SleepSummary.fromJson(json)).toList();
  }

  List<Map<String, dynamic>> _parseHeartRateEvents(List<dynamic> data) {
    return data
        .map((json) {
          // Parse heart rate event data
          final eventData =
              json['event_data']['heart_rate_event'] as List? ?? [];
          if (eventData.isNotEmpty) {
            final firstEvent = eventData[0];
            final heartRateData = firstEvent['heart_rate'] ?? {};
            final metadata = firstEvent['metadata'] ?? {};
            final granularData =
                heartRateData['hr_granular_data_array'] as List? ?? [];

            return {
              'id': json['_id'],
              'eventDateTime': DateTime.parse(
                metadata['datetime_string'] ?? DateTime.now().toIso8601String(),
              ),
              'maxHeartRate': heartRateData['hr_maximum_bpm_int'] ?? 0,
              'minHeartRate': heartRateData['hr_minimum_bpm_int'] ?? 0,
              'avgHeartRate': heartRateData['hr_avg_bpm_int'] ?? 0,
              'restingHeartRate': heartRateData['hr_resting_bpm_int'],
              'wasUnderPhysicalActivity':
                  metadata['was_the_user_under_physical_activity_bool'] ??
                  false,
              'granularData': granularData
                  .map(
                    (point) => {
                      'heartRate': point['hr_bpm_int'] ?? 0,
                      'timestamp': DateTime.parse(point['datetime_string']),
                      'source': point['source_of_data_string'],
                    },
                  )
                  .toList(),
              'createdAt': DateTime.parse(json['created_at']),
            };
          }
          return <String, dynamic>{};
        })
        .where((event) => event.isNotEmpty)
        .toList();
  }

  // Get latest metrics for overview cards
  Future<Map<String, dynamic>> getLatestMetrics(String userId) async {
    try {
      final data = await getDashboardData(userId: userId, limit: 1);

      final healthScores = data['healthScores'] as List<HealthScore>;
      final physicalSummaries =
          data['physicalSummaries'] as List<PhysicalSummary>;
      final bodySummaries = data['bodySummaries'] as List<BodySummary>;
      final sleepSummaries = data['sleepSummaries'] as List<SleepSummary>;

      return {
        'latestHealthScore': healthScores.isNotEmpty
            ? healthScores.first
            : null,
        'latestPhysical': physicalSummaries.isNotEmpty
            ? physicalSummaries.first
            : null,
        'latestBody': bodySummaries.isNotEmpty ? bodySummaries.first : null,
        'latestSleep': sleepSummaries.isNotEmpty ? sleepSummaries.first : null,
        'totalRecords': data['totalRecords'],
      };
    } catch (e) {
      print('Error fetching latest metrics: $e');
      rethrow;
    }
  }
}
