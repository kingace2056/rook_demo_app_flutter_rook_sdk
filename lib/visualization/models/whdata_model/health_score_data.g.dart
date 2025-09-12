// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_score_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthScoreDataImpl _$$HealthScoreDataImplFromJson(
  Map<String, dynamic> json,
) => _$HealthScoreDataImpl(
  metadata: json['metadata'] == null
      ? null
      : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
  overallScores: json['overall_scores'] == null
      ? null
      : OverallScores.fromJson(json['overall_scores'] as Map<String, dynamic>),
  physicalHealthScore: json['physical_health_score'] == null
      ? null
      : PhysicalHealthScore.fromJson(
          json['physical_health_score'] as Map<String, dynamic>,
        ),
  sleepHealthScore: json['sleep_health_score'] == null
      ? null
      : SleepHealthScore.fromJson(
          json['sleep_health_score'] as Map<String, dynamic>,
        ),
  bodyHealthScore: json['body_health_score'] == null
      ? null
      : BodyHealthScore.fromJson(
          json['body_health_score'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$HealthScoreDataImplToJson(
  _$HealthScoreDataImpl instance,
) => <String, dynamic>{
  'metadata': instance.metadata,
  'overall_scores': instance.overallScores,
  'physical_health_score': instance.physicalHealthScore,
  'sleep_health_score': instance.sleepHealthScore,
  'body_health_score': instance.bodyHealthScore,
};
