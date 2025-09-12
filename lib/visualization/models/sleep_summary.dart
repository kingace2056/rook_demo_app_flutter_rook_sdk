class SleepSummary {
  final String id;
  final String sleepDate;
  final DateTime sleepStart;
  final DateTime sleepEnd;
  final int totalSleepDuration; // in seconds
  final int lightSleepDuration; // in seconds
  final int remSleepDuration; // in seconds
  final int deepSleepDuration; // in seconds
  final DateTime createdAt;

  SleepSummary({
    required this.id,
    required this.sleepDate,
    required this.sleepStart,
    required this.sleepEnd,
    required this.totalSleepDuration,
    required this.lightSleepDuration,
    required this.remSleepDuration,
    required this.deepSleepDuration,
    required this.createdAt,
  });

  factory SleepSummary.fromJson(Map<String, dynamic> json) {
    final sleepSummary = json['sleep_health']['summary']['sleep_summary'];
    final duration = sleepSummary['duration'];

    return SleepSummary(
      id: json['_id'],
      sleepDate: duration['sleep_date_string'],
      sleepStart: DateTime.parse(duration['sleep_start_datetime_string']),
      sleepEnd: DateTime.parse(duration['sleep_end_datetime_string']),
      totalSleepDuration: duration['sleep_duration_seconds_int'] ?? 0,
      lightSleepDuration: duration['light_sleep_duration_seconds_int'] ?? 0,
      remSleepDuration: duration['rem_sleep_duration_seconds_int'] ?? 0,
      deepSleepDuration: duration['deep_sleep_duration_seconds_int'] ?? 0,
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  // Convert seconds to hours for display
  double get totalHours => totalSleepDuration / 3600;
  double get lightHours => lightSleepDuration / 3600;
  double get remHours => remSleepDuration / 3600;
  double get deepHours => deepSleepDuration / 3600;

  // Get sleep date as DateTime
  DateTime get sleepDateTime => DateTime.parse(sleepDate);

  // Get formatted sleep date string
  String get formattedSleepDate {
    final date = sleepDateTime;
    return '${date.day}/${date.month}/${date.year}';
  }
}
