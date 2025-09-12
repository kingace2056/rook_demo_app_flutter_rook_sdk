import 'package:freezed_annotation/freezed_annotation.dart';

import 'activity_score.dart';
import 'calories_score.dart';
import 'steps_score.dart';

part 'physical_health_score.freezed.dart';
part 'physical_health_score.g.dart';

@freezed
class PhysicalHealthScore with _$PhysicalHealthScore {
  factory PhysicalHealthScore({
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'calories_score') CaloriesScore? caloriesScore,
    @JsonKey(name: 'activity_score') ActivityScore? activityScore,
    @JsonKey(name: 'steps_score') StepsScore? stepsScore,
  }) = _PhysicalHealthScore;

  factory PhysicalHealthScore.fromJson(Map<String, dynamic> json) =>
      _$PhysicalHealthScoreFromJson(json);
}
