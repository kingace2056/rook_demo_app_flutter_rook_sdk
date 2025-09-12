// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scores.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScoresImpl _$$ScoresImplFromJson(Map<String, dynamic> json) => _$ScoresImpl(
  sleepQualityRating15ScoreInt:
      (json['sleep_quality_rating_1_5_score_int'] as num?)?.toInt(),
  sleepEfficiency1100ScoreInt:
      (json['sleep_efficiency_1_100_score_int'] as num?)?.toInt(),
  sleepGoalSecondsInt: (json['sleep_goal_seconds_int'] as num?)?.toInt(),
  sleepContinuity15ScoreInt: (json['sleep_continuity_1_5_score_int'] as num?)
      ?.toInt(),
  sleepContinuity15RatingInt: (json['sleep_continuity_1_5_rating_int'] as num?)
      ?.toInt(),
);

Map<String, dynamic> _$$ScoresImplToJson(
  _$ScoresImpl instance,
) => <String, dynamic>{
  'sleep_quality_rating_1_5_score_int': instance.sleepQualityRating15ScoreInt,
  'sleep_efficiency_1_100_score_int': instance.sleepEfficiency1100ScoreInt,
  'sleep_goal_seconds_int': instance.sleepGoalSecondsInt,
  'sleep_continuity_1_5_score_int': instance.sleepContinuity15ScoreInt,
  'sleep_continuity_1_5_rating_int': instance.sleepContinuity15RatingInt,
};
