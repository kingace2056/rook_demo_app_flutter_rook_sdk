import 'package:freezed_annotation/freezed_annotation.dart';

import 'readiness_score.dart';
import 'sleep_duration_score.dart';
import 'sleep_quality_score.dart';

part 'sleep_health_score.freezed.dart';
part 'sleep_health_score.g.dart';

@freezed
class SleepHealthScore with _$SleepHealthScore {
  factory SleepHealthScore({
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'sleep_duration_score')
    SleepDurationScore? sleepDurationScore,
    @JsonKey(name: 'sleep_quality_score') SleepQualityScore? sleepQualityScore,
    @JsonKey(name: 'readiness_score') ReadinessScore? readinessScore,
  }) = _SleepHealthScore;

  factory SleepHealthScore.fromJson(Map<String, dynamic> json) =>
      _$SleepHealthScoreFromJson(json);
}
