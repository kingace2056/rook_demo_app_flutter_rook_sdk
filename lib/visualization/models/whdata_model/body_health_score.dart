import 'package:freezed_annotation/freezed_annotation.dart';

import 'bmi_score.dart';

part 'body_health_score.freezed.dart';
part 'body_health_score.g.dart';

@freezed
class BodyHealthScore with _$BodyHealthScore {
  factory BodyHealthScore({
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'bmi_score') BmiScore? bmiScore,
  }) = _BodyHealthScore;

  factory BodyHealthScore.fromJson(Map<String, dynamic> json) =>
      _$BodyHealthScoreFromJson(json);
}
