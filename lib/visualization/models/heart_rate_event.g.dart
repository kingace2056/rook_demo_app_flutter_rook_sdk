// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heart_rate_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeartRateEventImpl _$$HeartRateEventImplFromJson(Map<String, dynamic> json) =>
    _$HeartRateEventImpl(
      id: json['_id'] as String?,
      version: (json['version'] as num?)?.toInt(),
      clientUuid: json['client_uuid'] as String?,
      userId: json['user_id'] as String,
      documentVersion: (json['document_version'] as num?)?.toInt(),
      dataStructure: json['data_structure'] as String?,
      autoDetected: json['auto_detected'] as bool?,
      eventType: json['event_type'] as String?,
      eventData: json['event_data'] == null
          ? null
          : HeartRateEventData.fromJson(
              json['event_data'] as Map<String, dynamic>),
      metadata: json['metadata'] == null
          ? null
          : HeartRateMetadata.fromJson(
              json['metadata'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      webhookReceivedAt: json['webhook_received_at'] == null
          ? null
          : DateTime.parse(json['webhook_received_at'] as String),
      createdAtTimestamp: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$HeartRateEventImplToJson(
        _$HeartRateEventImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'version': instance.version,
      'client_uuid': instance.clientUuid,
      'user_id': instance.userId,
      'document_version': instance.documentVersion,
      'data_structure': instance.dataStructure,
      'auto_detected': instance.autoDetected,
      'event_type': instance.eventType,
      'event_data': instance.eventData,
      'metadata': instance.metadata,
      'created_at': instance.createdAt?.toIso8601String(),
      'webhook_received_at': instance.webhookReceivedAt?.toIso8601String(),
      'createdAt': instance.createdAtTimestamp?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$HeartRateEventDataImpl _$$HeartRateEventDataImplFromJson(
        Map<String, dynamic> json) =>
    _$HeartRateEventDataImpl(
      heartRateEvent: (json['heart_rate_event'] as List<dynamic>?)
          ?.map((e) => HeartRateEventDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HeartRateEventDataImplToJson(
        _$HeartRateEventDataImpl instance) =>
    <String, dynamic>{
      'heart_rate_event': instance.heartRateEvent,
    };

_$HeartRateEventDetailImpl _$$HeartRateEventDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$HeartRateEventDetailImpl(
      metadata: json['metadata'] == null
          ? null
          : HeartRateMetadata.fromJson(
              json['metadata'] as Map<String, dynamic>),
      heartRate: json['heart_rate'] == null
          ? null
          : HeartRateData.fromJson(json['heart_rate'] as Map<String, dynamic>),
      nonStructuredDataArray: (json['non_structured_data_array']
              as List<dynamic>?)
          ?.map((e) => NonStructuredData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HeartRateEventDetailImplToJson(
        _$HeartRateEventDetailImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'heart_rate': instance.heartRate,
      'non_structured_data_array': instance.nonStructuredDataArray,
    };

_$HeartRateDataImpl _$$HeartRateDataImplFromJson(Map<String, dynamic> json) =>
    _$HeartRateDataImpl(
      hrMaximumBpm: (json['hr_maximum_bpm_int'] as num?)?.toInt(),
      hrMinimumBpm: (json['hr_minimum_bpm_int'] as num?)?.toInt(),
      hrAvgBpm: (json['hr_avg_bpm_int'] as num?)?.toInt(),
      hrRestingBpm: (json['hr_resting_bpm_int'] as num?)?.toInt(),
      hrvAvgRmssd: (json['hrv_avg_rmssd_float'] as num?)?.toDouble(),
      hrvAvgSdnn: (json['hrv_avg_sdnn_float'] as num?)?.toDouble(),
      hrGranularDataArray: (json['hr_granular_data_array'] as List<dynamic>?)
          ?.map(
              (e) => HeartRateGranularData.fromJson(e as Map<String, dynamic>))
          .toList(),
      hrvSdnnGranularDataArray:
          json['hrv_sdnn_granular_data_array'] as List<dynamic>?,
      hrvRmssdGranularDataArray:
          json['hrv_rmssd_granular_data_array'] as List<dynamic>?,
    );

Map<String, dynamic> _$$HeartRateDataImplToJson(_$HeartRateDataImpl instance) =>
    <String, dynamic>{
      'hr_maximum_bpm_int': instance.hrMaximumBpm,
      'hr_minimum_bpm_int': instance.hrMinimumBpm,
      'hr_avg_bpm_int': instance.hrAvgBpm,
      'hr_resting_bpm_int': instance.hrRestingBpm,
      'hrv_avg_rmssd_float': instance.hrvAvgRmssd,
      'hrv_avg_sdnn_float': instance.hrvAvgSdnn,
      'hr_granular_data_array': instance.hrGranularDataArray,
      'hrv_sdnn_granular_data_array': instance.hrvSdnnGranularDataArray,
      'hrv_rmssd_granular_data_array': instance.hrvRmssdGranularDataArray,
    };

_$HeartRateGranularDataImpl _$$HeartRateGranularDataImplFromJson(
        Map<String, dynamic> json) =>
    _$HeartRateGranularDataImpl(
      hrBpm: (json['hr_bpm_int'] as num?)?.toInt(),
      datetimeString: json['datetime_string'] as String?,
      intervalDurationSeconds:
          (json['interval_duration_seconds_float'] as num?)?.toDouble(),
      sourceOfData: json['source_of_data_string'] as String?,
    );

Map<String, dynamic> _$$HeartRateGranularDataImplToJson(
        _$HeartRateGranularDataImpl instance) =>
    <String, dynamic>{
      'hr_bpm_int': instance.hrBpm,
      'datetime_string': instance.datetimeString,
      'interval_duration_seconds_float': instance.intervalDurationSeconds,
      'source_of_data_string': instance.sourceOfData,
    };

_$HeartRateMetadataImpl _$$HeartRateMetadataImplFromJson(
        Map<String, dynamic> json) =>
    _$HeartRateMetadataImpl(
      datetimeString: json['datetime_string'] as String?,
      userIdString: json['user_id_string'] as String?,
      sourcesOfDataArray: (json['sources_of_data_array'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      wasUserUnderPhysicalActivity:
          json['was_the_user_under_physical_activity_bool'] as bool?,
    );

Map<String, dynamic> _$$HeartRateMetadataImplToJson(
        _$HeartRateMetadataImpl instance) =>
    <String, dynamic>{
      'datetime_string': instance.datetimeString,
      'user_id_string': instance.userIdString,
      'sources_of_data_array': instance.sourcesOfDataArray,
      'was_the_user_under_physical_activity_bool':
          instance.wasUserUnderPhysicalActivity,
    };

_$NonStructuredDataImpl _$$NonStructuredDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NonStructuredDataImpl(
      sourceOfData: json['source_of_data_string'] as String?,
    );

Map<String, dynamic> _$$NonStructuredDataImplToJson(
        _$NonStructuredDataImpl instance) =>
    <String, dynamic>{
      'source_of_data_string': instance.sourceOfData,
    };
