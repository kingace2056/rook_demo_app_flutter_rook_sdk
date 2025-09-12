import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rook_sdk_demo_app_flutter/visualization/core/config/api_constants.dart';

class HeartRateController extends GetxController {
  static final Dio _dio = Dio();

  final _isLoading = false.obs;
  final _errorMessage = ''.obs;
  final _heartRateData = <Map<String, dynamic>>[].obs;
  final _chartData = <Map<String, dynamic>>[].obs;
  final _lastFetchedUserId = ''.obs;

  // Heart rate stats
  final _avgHeartRate = 0.obs;
  final _minHeartRate = 0.obs;
  final _maxHeartRate = 0.obs;
  final _lastUpdateTime = ''.obs;

  bool get isLoading => _isLoading.value;
  String get errorMessage => _errorMessage.value;
  List<Map<String, dynamic>> get heartRateData => _heartRateData;
  List<Map<String, dynamic>> get chartData => _chartData;
  String get lastFetchedUserId => _lastFetchedUserId.value;
  int get avgHeartRate => _avgHeartRate.value;
  int get minHeartRate => _minHeartRate.value;
  int get maxHeartRate => _maxHeartRate.value;
  String get lastUpdateTime => _lastUpdateTime.value;

  static String get _baseUrl => ApiConstants.baseUrl;

  void clearData() {
    _heartRateData.clear();
    _chartData.clear();
    _errorMessage.value = '';
    _avgHeartRate.value = 0;
    _minHeartRate.value = 0;
    _maxHeartRate.value = 0;
    _lastUpdateTime.value = '';
  }

  void clearError() {
    _errorMessage.value = '';
  }

  Future<void> fetchHeartRateEvents(
    String userId, {
    bool useHardcodedDate = true,
  }) async {
    if (userId.isEmpty) {
      _errorMessage.value = 'User ID cannot be empty';
      return;
    }

    try {
      _isLoading.value = true;
      _errorMessage.value = '';
      _lastFetchedUserId.value = userId;

      // Get heart rate events from API
      final events = useHardcodedDate
          ? await _getHardcodedDateHeartRateEvents(userId)
          : await _getYesterdayHeartRateEvents(userId);

      if (events.isEmpty) {
        _errorMessage.value = 'No heart rate data found for the specified date';
        _heartRateData.clear();
        _chartData.clear();
        return;
      }

      // Process the events data
      _processHeartRateEvents(events);

      print('📊 Fetched ${events.length} heart rate events for user: $userId');
    } catch (e) {
      _errorMessage.value = e.toString();
      print('❌ Error fetching heart rate events: $e');
    } finally {
      _isLoading.value = false;
    }
  }

  Future<List<Map<String, dynamic>>> _getHeartRateEvents({
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

  Future<List<Map<String, dynamic>>> _getYesterdayHeartRateEvents(
    String userId,
  ) async {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    final startOfDay = DateTime(yesterday.year, yesterday.month, yesterday.day);
    final endOfDay = startOfDay.add(
      const Duration(hours: 23, minutes: 59, seconds: 59),
    );

    return _getHeartRateEvents(
      userId: userId,
      startDate: startOfDay.toIso8601String(),
      endDate: endOfDay.toIso8601String(),
      dateField: 'data',
    );
  }

  Future<List<Map<String, dynamic>>> _getHardcodedDateHeartRateEvents(
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

    return _getHeartRateEvents(
      userId: userId,
      startDate: startOfDay.toIso8601String(),
      endDate: endOfDay.toIso8601String(),
      dateField: 'data',
    );
  }

  void _processHeartRateEvents(List<Map<String, dynamic>> events) {
    _heartRateData.clear();
    _chartData.clear();

    final List<Map<String, dynamic>> allGranularData = [];
    int totalHeartRate = 0;
    int minHr = 999;
    int maxHr = 0;
    int count = 0;

    for (final event in events) {
      try {
        // Extract heart rate event data
        final eventData = event['event_data'];
        if (eventData == null) continue;

        final heartRateEventList = eventData['heart_rate_event'];
        if (heartRateEventList == null || heartRateEventList.isEmpty) continue;

        for (final hrEvent in heartRateEventList) {
          final heartRateData = hrEvent['heart_rate'];
          if (heartRateData == null) continue;

          // Get granular data
          final granularDataArray = heartRateData['hr_granular_data_array'];
          if (granularDataArray != null && granularDataArray.isNotEmpty) {
            for (final granularItem in granularDataArray) {
              final hrBpm = granularItem['hr_bpm_int'];
              final dateTimeString = granularItem['datetime_string'];

              if (hrBpm != null && dateTimeString != null) {
                final hrBpmInt = hrBpm as int;
                allGranularData.add({
                  'hr_bpm': hrBpmInt,
                  'datetime': dateTimeString,
                  'timestamp': DateTime.tryParse(
                        dateTimeString,
                      )?.millisecondsSinceEpoch ??
                      0,
                });

                totalHeartRate += hrBpmInt;
                if (hrBpmInt < minHr) minHr = hrBpmInt;
                if (hrBpmInt > maxHr) maxHr = hrBpmInt;
                count++;
              }
            }
          }

          // Also get summary data
          final avgBpm = heartRateData['hr_avg_bpm_int'];
          final minBpm = heartRateData['hr_minimum_bpm_int'];
          final maxBpm = heartRateData['hr_maximum_bpm_int'];

          if (avgBpm != null) {
            _heartRateData.add({
              'avg_bpm': avgBpm,
              'min_bpm': minBpm,
              'max_bpm': maxBpm,
              'metadata': hrEvent['metadata'],
            });
          }
        }
      } catch (e) {
        print('Error processing heart rate event: $e');
      }
    }

    // Sort granular data by timestamp
    allGranularData.sort(
      (a, b) => (a['timestamp'] as int).compareTo(b['timestamp'] as int),
    );

    // Update chart data
    _chartData.addAll(allGranularData);

    // Update stats
    if (count > 0) {
      _avgHeartRate.value = (totalHeartRate / count).round();
      _minHeartRate.value = minHr;
      _maxHeartRate.value = maxHr;
      _lastUpdateTime.value = DateTime.now().toString().substring(0, 19);
    }

    print('📈 Processed ${_chartData.length} heart rate data points');
    print(
      '📊 Stats - Avg: ${_avgHeartRate.value}, Min: ${_minHeartRate.value}, Max: ${_maxHeartRate.value}',
    );
  }

  // Get formatted time for chart display
  String getFormattedTime(String datetimeString) {
    try {
      final dateTime = DateTime.parse(datetimeString);
      return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    } catch (e) {
      return datetimeString;
    }
  }

  // Get color for heart rate value
  String getHeartRateColor(int bpm) {
    if (bpm < 60) return '#3498db'; // Blue for low
    if (bpm < 100) return '#2ecc71'; // Green for normal
    if (bpm < 140) return '#f39c12'; // Orange for elevated
    return '#e74c3c'; // Red for high
  }

  // Get latest heart rate statistics
  Map<String, dynamic> getLatestHeartRateStats() {
    if (_heartRateData.isEmpty) {
      return {'avg_bpm': 0, 'max_bpm': 0, 'min_bpm': 0, 'timestamp': null};
    }

    return _heartRateData.first;
  }
}
