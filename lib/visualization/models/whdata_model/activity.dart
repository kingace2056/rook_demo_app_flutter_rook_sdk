import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@freezed
class Activity with _$Activity {
  factory Activity({
    @JsonKey(name: 'active_seconds_int') int? activeSecondsInt,
    @JsonKey(name: 'rest_seconds_int') int? restSecondsInt,
    @JsonKey(name: 'low_intensity_seconds_int') int? lowIntensitySecondsInt,
    @JsonKey(name: 'moderate_intensity_seconds_int')
    int? moderateIntensitySecondsInt,
    @JsonKey(name: 'vigorous_intensity_seconds_int')
    int? vigorousIntensitySecondsInt,
    @JsonKey(name: 'inactivity_seconds_int') int? inactivitySecondsInt,
    @JsonKey(name: 'continuous_inactive_periods_int')
    int? continuousInactivePeriodsInt,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
