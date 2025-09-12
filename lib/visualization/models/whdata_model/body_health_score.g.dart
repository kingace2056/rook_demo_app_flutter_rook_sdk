// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_health_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyHealthScoreImpl _$$BodyHealthScoreImplFromJson(
        Map<String, dynamic> json) =>
    _$BodyHealthScoreImpl(
      score0100Int: (json['score_0_100_int'] as num?)?.toInt(),
      bmiScore: json['bmi_score'] == null
          ? null
          : BmiScore.fromJson(json['bmi_score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BodyHealthScoreImplToJson(
        _$BodyHealthScoreImpl instance) =>
    <String, dynamic>{
      'score_0_100_int': instance.score0100Int,
      'bmi_score': instance.bmiScore,
    };
