import 'package:flutter/material.dart';

enum SleepStage { awake, light, deep, rem, unknown }

class HeartRateDataPoint {
  final int heartRate;
  final DateTime timestamp;
  final String? source;

  HeartRateDataPoint({
    required this.heartRate,
    required this.timestamp,
    this.source,
  });

  factory HeartRateDataPoint.fromJson(Map<String, dynamic> json) {
    return HeartRateDataPoint(
      heartRate: json['hr_bpm_int'] ?? 0,
      timestamp: DateTime.parse(json['datetime_string']),
      source: json['source_of_data_string'],
    );
  }

  // Get time of day for chart display
  double get timeOfDay {
    return timestamp.hour + (timestamp.minute / 60.0);
  }

  // Get formatted time string
  String get formattedTime {
    return '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}';
  }
}

class SleepStageData {
  final SleepStage stage;
  final DateTime startTime;
  final DateTime endTime;
  final Duration duration;

  SleepStageData({
    required this.stage,
    required this.startTime,
    required this.endTime,
    required this.duration,
  });

  // Get time of day for chart display
  double get startTimeOfDay {
    return startTime.hour + (startTime.minute / 60.0);
  }

  double get endTimeOfDay {
    return endTime.hour + (endTime.minute / 60.0);
  }

  // Get formatted time string
  String get formattedStartTime {
    return '${startTime.hour.toString().padLeft(2, '0')}:${startTime.minute.toString().padLeft(2, '0')}';
  }

  String get formattedEndTime {
    return '${endTime.hour.toString().padLeft(2, '0')}:${endTime.minute.toString().padLeft(2, '0')}';
  }

  // Get stage color
  Color get stageColor {
    switch (stage) {
      case SleepStage.awake:
        return Colors.red[400]!;
      case SleepStage.light:
        return Colors.lightBlue[300]!;
      case SleepStage.deep:
        return Colors.indigo[600]!;
      case SleepStage.rem:
        return Colors.purple[400]!;
      case SleepStage.unknown:
        return Colors.grey[400]!;
    }
  }

  // Get stage name
  String get stageName {
    switch (stage) {
      case SleepStage.awake:
        return 'Awake';
      case SleepStage.light:
        return 'Light Sleep';
      case SleepStage.deep:
        return 'Deep Sleep';
      case SleepStage.rem:
        return 'REM Sleep';
      case SleepStage.unknown:
        return 'Unknown';
    }
  }
}

class DetailedSleepSummary {
  final String id;
  final String sleepDate;
  final DateTime sleepStart;
  final DateTime sleepEnd;
  final int totalSleepDuration;
  final int lightSleepDuration;
  final int remSleepDuration;
  final int deepSleepDuration;
  final DateTime createdAt;
  final List<SleepStageData> sleepStages;
  final List<HeartRateDataPoint> sleepHeartRate;

  DetailedSleepSummary({
    required this.id,
    required this.sleepDate,
    required this.sleepStart,
    required this.sleepEnd,
    required this.totalSleepDuration,
    required this.lightSleepDuration,
    required this.remSleepDuration,
    required this.deepSleepDuration,
    required this.createdAt,
    required this.sleepStages,
    required this.sleepHeartRate,
  });

  // Convert seconds to hours for display
  double get totalHours => totalSleepDuration / 3600;
  double get lightHours => lightSleepDuration / 3600;
  double get remHours => remSleepDuration / 3600;
  double get deepHours => deepSleepDuration / 3600;

  // Get sleep date as DateTime
  DateTime get sleepDateTime => DateTime.parse(sleepDate);

  factory DetailedSleepSummary.fromJson(Map<String, dynamic> json) {
    final sleepSummary = json['sleep_health']['summary']['sleep_summary'];
    final duration = sleepSummary['duration'];

    final sleepStart = DateTime.parse(duration['sleep_start_datetime_string']);
    final sleepEnd = DateTime.parse(duration['sleep_end_datetime_string']);

    // Create synthetic sleep stage data based on duration data
    final List<SleepStageData> stages = [];

    // Calculate stage timing based on typical sleep patterns
    DateTime currentTime = sleepStart;

    // Light sleep first (usually starts with light sleep)
    final lightDuration = Duration(
      seconds: duration['light_sleep_duration_seconds_int'] ?? 0,
    );
    final deepDuration = Duration(
      seconds: duration['deep_sleep_duration_seconds_int'] ?? 0,
    );
    final remDuration = Duration(
      seconds: duration['rem_sleep_duration_seconds_int'] ?? 0,
    );

    // Distribute stages throughout the night (simplified simulation)
    if (lightDuration.inSeconds > 0) {
      // Split light sleep into multiple periods
      final lightPeriods = 3;
      final lightPeriodDuration = Duration(
        seconds: lightDuration.inSeconds ~/ lightPeriods,
      );

      for (int i = 0; i < lightPeriods; i++) {
        final start = currentTime.add(
          Duration(seconds: i * (lightPeriodDuration.inSeconds + 1800)),
        ); // 30 min gaps
        final end = start.add(lightPeriodDuration);
        stages.add(
          SleepStageData(
            stage: SleepStage.light,
            startTime: start,
            endTime: end,
            duration: lightPeriodDuration,
          ),
        );
      }
    }

    // Add deep sleep periods
    if (deepDuration.inSeconds > 0) {
      final deepStart = sleepStart.add(
        Duration(hours: 1),
      ); // Deep sleep usually starts after 1 hour
      stages.add(
        SleepStageData(
          stage: SleepStage.deep,
          startTime: deepStart,
          endTime: deepStart.add(deepDuration),
          duration: deepDuration,
        ),
      );
    }

    // Add REM sleep periods
    if (remDuration.inSeconds > 0) {
      final remStart = sleepEnd
          .subtract(remDuration)
          .subtract(Duration(hours: 1)); // REM usually near end
      stages.add(
        SleepStageData(
          stage: SleepStage.rem,
          startTime: remStart,
          endTime: remStart.add(remDuration),
          duration: remDuration,
        ),
      );
    }

    // Parse heart rate data during sleep
    final heartRateData =
        sleepSummary['heart_rate']['hr_granular_data_array'] as List? ?? [];
    final sleepHeartRate = heartRateData
        .map((data) => HeartRateDataPoint.fromJson(data))
        .toList();

    return DetailedSleepSummary(
      id: json['_id'],
      sleepDate: duration['sleep_date_string'],
      sleepStart: sleepStart,
      sleepEnd: sleepEnd,
      totalSleepDuration: duration['sleep_duration_seconds_int'] ?? 0,
      lightSleepDuration: duration['light_sleep_duration_seconds_int'] ?? 0,
      remSleepDuration: duration['rem_sleep_duration_seconds_int'] ?? 0,
      deepSleepDuration: duration['deep_sleep_duration_seconds_int'] ?? 0,
      createdAt: DateTime.parse(json['created_at']),
      sleepStages: stages,
      sleepHeartRate: sleepHeartRate,
    );
  }
}
