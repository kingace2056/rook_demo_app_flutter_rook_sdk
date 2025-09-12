import 'package:freezed_annotation/freezed_annotation.dart';

part 'overall_scores.freezed.dart';
part 'overall_scores.g.dart';

@freezed
class OverallScores with _$OverallScores {
  factory OverallScores({
    @JsonKey(name: 'global_score_0_100_int') int? globalScore0100Int,
    @JsonKey(name: 'seven_days_avg_score_0_100_int')
    int? sevenDaysAvgScore0100Int,
  }) = _OverallScores;

  factory OverallScores.fromJson(Map<String, dynamic> json) =>
      _$OverallScoresFromJson(json);
}
