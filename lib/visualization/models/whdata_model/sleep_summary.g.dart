// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sleep_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SleepSummaryImpl _$$SleepSummaryImplFromJson(Map<String, dynamic> json) =>
    _$SleepSummaryImpl(
      id: json['_id'] as String?,
      version: (json['version'] as num?)?.toInt(),
      clientUuid: json['client_uuid'] as String?,
      userId: json['user_id'] as String?,
      documentVersion: (json['document_version'] as num?)?.toInt(),
      dataStructure: json['data_structure'] as String?,
      sleepHealth: json['sleep_health'] == null
          ? null
          : SleepHealth.fromJson(json['sleep_health'] as Map<String, dynamic>),
      createdAtRook: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      webhookReceivedAt: json['webhook_received_at'] == null
          ? null
          : DateTime.parse(json['webhook_received_at'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SleepSummaryImplToJson(_$SleepSummaryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'version': instance.version,
      'client_uuid': instance.clientUuid,
      'user_id': instance.userId,
      'document_version': instance.documentVersion,
      'data_structure': instance.dataStructure,
      'sleep_health': instance.sleepHealth,
      'created_at': instance.createdAtRook?.toIso8601String(),
      'webhook_received_at': instance.webhookReceivedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
