// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
  userId: json['user_id'] as String?,
  totalRecords: (json['total_records'] as num?)?.toInt(),
  types: json['data'] == null
      ? null
      : DataType.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'total_records': instance.totalRecords,
      'data': instance.types,
    };

_$DataTypeImpl _$$DataTypeImplFromJson(Map<String, dynamic> json) =>
    _$DataTypeImpl(
      healthScores: (json['health_scores'] as List<dynamic>?)
          ?.map((e) => HealthScore.fromJson(e as Map<String, dynamic>))
          .toList(),
      healthEvents: (json['health_events'] as List<dynamic>?)
          ?.map((e) => HealthEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      bodySummaries: (json['body_summaries'] as List<dynamic>?)
          ?.map((e) => BodySummary.fromJson(e as Map<String, dynamic>))
          .toList(),
      sleepSummaries: (json['sleep_summaries'] as List<dynamic>?)
          ?.map((e) => SleepSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
      physicalSummaries: (json['physical_summaries'] as List<dynamic>?)
          ?.map((e) => PhysicalSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
      rawWebhooks: (json['raw_webhooks'] as List<dynamic>?)
          ?.map((e) => RawWebhook.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataTypeImplToJson(_$DataTypeImpl instance) =>
    <String, dynamic>{
      'health_scores': instance.healthScores,
      'health_events': instance.healthEvents,
      'body_summaries': instance.bodySummaries,
      'sleep_summaries': instance.sleepSummaries,
      'physical_summaries': instance.physicalSummaries,
      'raw_webhooks': instance.rawWebhooks,
    };
