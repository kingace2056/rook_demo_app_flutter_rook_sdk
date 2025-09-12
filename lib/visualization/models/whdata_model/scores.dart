import 'package:freezed_annotation/freezed_annotation.dart';

part 'scores.freezed.dart';
part 'scores.g.dart';

@freezed
class Scores with _$Scores {
  factory Scores({
    @JsonKey(name: 'sleep_quality_rating_1_5_score_int')
    int? sleepQualityRating15ScoreInt,
    @JsonKey(name: 'sleep_efficiency_1_100_score_int')
    int? sleepEfficiency1100ScoreInt,
    @JsonKey(name: 'sleep_goal_seconds_int') int? sleepGoalSecondsInt,
    @JsonKey(name: 'sleep_continuity_1_5_score_int')
    int? sleepContinuity15ScoreInt,
    @JsonKey(name: 'sleep_continuity_1_5_rating_int')
    int? sleepContinuity15RatingInt,
  }) = _Scores;

  factory Scores.fromJson(Map<String, dynamic> json) => _$ScoresFromJson(json);
}
