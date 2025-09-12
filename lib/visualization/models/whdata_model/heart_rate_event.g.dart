// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heart_rate_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeartRateEventImpl _$$HeartRateEventImplFromJson(Map<String, dynamic> json) =>
    _$HeartRateEventImpl(
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      heartRate: json['heart_rate'] == null
          ? null
          : HeartRate.fromJson(json['heart_rate'] as Map<String, dynamic>),
      nonStructuredDataArray: (json['non_structured_data_array']
              as List<dynamic>?)
          ?.map(
              (e) => NonStructuredDataArray.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HeartRateEventImplToJson(
        _$HeartRateEventImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'heart_rate': instance.heartRate,
      'non_structured_data_array': instance.nonStructuredDataArray,
    };
