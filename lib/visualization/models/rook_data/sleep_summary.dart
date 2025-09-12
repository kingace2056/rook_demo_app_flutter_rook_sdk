import 'package:freezed_annotation/freezed_annotation.dart';

import 'breathing.dart';
import 'duration.dart';
import 'heart_rate.dart';
import 'metadata.dart';
import 'scores.dart';
import 'temperature.dart';

part 'sleep_summary.freezed.dart';
part 'sleep_summary.g.dart';

@freezed
class SleepSummaryData with _$SleepSummaryData {
  factory SleepSummaryData({
    Breathing? breathing,
    Duration? duration,
    @JsonKey(name: 'heart_rate') HeartRate? heartRate,
    Scores? scores,
    Temperature? temperature,
    Metadata? metadata,
  }) = _SleepSummaryData;

  factory SleepSummaryData.fromJson(Map<String, dynamic> json) =>
      _$SleepSummaryDataFromJson(json);
}
