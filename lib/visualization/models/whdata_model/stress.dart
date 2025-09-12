import 'package:freezed_annotation/freezed_annotation.dart';

part 'stress.freezed.dart';
part 'stress.g.dart';

@freezed
class Stress with _$Stress {
  factory Stress({
    @JsonKey(name: 'stress_at_rest_duration_seconds_int')
    int? stressAtRestDurationSecondsInt,
    @JsonKey(name: 'stress_duration_seconds_int') int? stressDurationSecondsInt,
    @JsonKey(name: 'low_stress_duration_seconds_int')
    int? lowStressDurationSecondsInt,
    @JsonKey(name: 'medium_stress_duration_seconds_int')
    int? mediumStressDurationSecondsInt,
    @JsonKey(name: 'high_stress_duration_seconds_int')
    int? highStressDurationSecondsInt,
    @JsonKey(name: 'stress_avg_level_int') int? stressAvgLevelInt,
    @JsonKey(name: 'stress_maximum_level_int') int? stressMaximumLevelInt,
  }) = _Stress;

  factory Stress.fromJson(Map<String, dynamic> json) => _$StressFromJson(json);
}
