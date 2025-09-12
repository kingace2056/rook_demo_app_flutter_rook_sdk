import 'package:freezed_annotation/freezed_annotation.dart';

part 'duration.freezed.dart';
part 'duration.g.dart';

@freezed
class Duration with _$Duration {
  factory Duration({
    @JsonKey(name: 'sleep_start_datetime_string')
    DateTime? sleepStartDatetimeString,
    @JsonKey(name: 'sleep_end_datetime_string')
    DateTime? sleepEndDatetimeString,
    @JsonKey(name: 'sleep_date_string') DateTime? sleepDateString,
    @JsonKey(name: 'sleep_duration_seconds_int') int? sleepDurationSecondsInt,
    @JsonKey(name: 'time_in_bed_seconds_int') int? timeInBedSecondsInt,
    @JsonKey(name: 'light_sleep_duration_seconds_int')
    int? lightSleepDurationSecondsInt,
    @JsonKey(name: 'rem_sleep_duration_seconds_int')
    int? remSleepDurationSecondsInt,
    @JsonKey(name: 'deep_sleep_duration_seconds_int')
    int? deepSleepDurationSecondsInt,
    @JsonKey(name: 'time_to_fall_asleep_seconds_int')
    int? timeToFallAsleepSecondsInt,
    @JsonKey(name: 'time_awake_during_sleep_seconds_int')
    int? timeAwakeDuringSleepSecondsInt,
  }) = _Duration;

  factory Duration.fromJson(Map<String, dynamic> json) =>
      _$DurationFromJson(json);
}
