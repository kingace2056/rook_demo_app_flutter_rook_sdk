// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sleep_health_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SleepHealthScoreImpl _$$SleepHealthScoreImplFromJson(
  Map<String, dynamic> json,
) => _$SleepHealthScoreImpl(
  score0100Int: (json['score_0_100_int'] as num?)?.toInt(),
  sleepDurationScore: json['sleep_duration_score'] == null
      ? null
      : SleepDurationScore.fromJson(
          json['sleep_duration_score'] as Map<String, dynamic>,
        ),
  sleepQualityScore: json['sleep_quality_score'] == null
      ? null
      : SleepQualityScore.fromJson(
          json['sleep_quality_score'] as Map<String, dynamic>,
        ),
  readinessScore: json['readiness_score'] == null
      ? null
      : ReadinessScore.fromJson(
          json['readiness_score'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$SleepHealthScoreImplToJson(
  _$SleepHealthScoreImpl instance,
) => <String, dynamic>{
  'score_0_100_int': instance.score0100Int,
  'sleep_duration_score': instance.sleepDurationScore,
  'sleep_quality_score': instance.sleepQualityScore,
  'readiness_score': instance.readinessScore,
};
