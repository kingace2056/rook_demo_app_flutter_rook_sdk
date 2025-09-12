// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sleep_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SleepSummaryDataImpl _$$SleepSummaryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SleepSummaryDataImpl(
      breathing: json['breathing'] == null
          ? null
          : Breathing.fromJson(json['breathing'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : Duration.fromJson(json['duration'] as Map<String, dynamic>),
      heartRate: json['heart_rate'] == null
          ? null
          : HeartRate.fromJson(json['heart_rate'] as Map<String, dynamic>),
      scores: json['scores'] == null
          ? null
          : Scores.fromJson(json['scores'] as Map<String, dynamic>),
      temperature: json['temperature'] == null
          ? null
          : Temperature.fromJson(json['temperature'] as Map<String, dynamic>),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SleepSummaryDataImplToJson(
        _$SleepSummaryDataImpl instance) =>
    <String, dynamic>{
      'breathing': instance.breathing,
      'duration': instance.duration,
      'heart_rate': instance.heartRate,
      'scores': instance.scores,
      'temperature': instance.temperature,
      'metadata': instance.metadata,
    };
