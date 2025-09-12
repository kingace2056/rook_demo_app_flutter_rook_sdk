// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'physical_health_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhysicalHealthScoreImpl _$$PhysicalHealthScoreImplFromJson(
  Map<String, dynamic> json,
) => _$PhysicalHealthScoreImpl(
  score0100Int: (json['score_0_100_int'] as num?)?.toInt(),
  caloriesScore: json['calories_score'] == null
      ? null
      : CaloriesScore.fromJson(json['calories_score'] as Map<String, dynamic>),
  activityScore: json['activity_score'] == null
      ? null
      : ActivityScore.fromJson(json['activity_score'] as Map<String, dynamic>),
  stepsScore: json['steps_score'] == null
      ? null
      : StepsScore.fromJson(json['steps_score'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PhysicalHealthScoreImplToJson(
  _$PhysicalHealthScoreImpl instance,
) => <String, dynamic>{
  'score_0_100_int': instance.score0100Int,
  'calories_score': instance.caloriesScore,
  'activity_score': instance.activityScore,
  'steps_score': instance.stepsScore,
};
