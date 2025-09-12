// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RawDataImpl _$$RawDataImplFromJson(Map<String, dynamic> json) =>
    _$RawDataImpl(
      version: (json['version'] as num?)?.toInt(),
      dataStructure: json['data_structure'] as String?,
      clientUuid: json['client_uuid'] as String?,
      userId: json['user_id'] as String?,
      documentVersion: (json['document_version'] as num?)?.toInt(),
      preExistingData: json['pre_existing_data'] as bool?,
      sleepHealth: json['sleep_health'] == null
          ? null
          : SleepHealth.fromJson(json['sleep_health'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RawDataImplToJson(_$RawDataImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'data_structure': instance.dataStructure,
      'client_uuid': instance.clientUuid,
      'user_id': instance.userId,
      'document_version': instance.documentVersion,
      'pre_existing_data': instance.preExistingData,
      'sleep_health': instance.sleepHealth,
    };
