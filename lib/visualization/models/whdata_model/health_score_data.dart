import 'package:freezed_annotation/freezed_annotation.dart';

import 'body_health_score.dart';
import 'metadata.dart';
import 'overall_scores.dart';
import 'physical_health_score.dart';
import 'sleep_health_score.dart';

part 'health_score_data.freezed.dart';
part 'health_score_data.g.dart';

@freezed
class HealthScoreData with _$HealthScoreData {
  factory HealthScoreData({
    Metadata? metadata,
    @JsonKey(name: 'overall_scores') OverallScores? overallScores,
    @JsonKey(name: 'physical_health_score')
    PhysicalHealthScore? physicalHealthScore,
    @JsonKey(name: 'sleep_health_score') SleepHealthScore? sleepHealthScore,
    @JsonKey(name: 'body_health_score') BodyHealthScore? bodyHealthScore,
  }) = _HealthScoreData;

  factory HealthScoreData.fromJson(Map<String, dynamic> json) =>
      _$HealthScoreDataFromJson(json);
}
