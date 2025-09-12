// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'non_structured_data_array.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NonStructuredDataArrayImpl _$$NonStructuredDataArrayImplFromJson(
        Map<String, dynamic> json) =>
    _$NonStructuredDataArrayImpl(
      sourceOfDataString: json['source_of_data_string'] as String?,
      timeZone: json['time_zone'] as String?,
      offsetTimeZone: (json['offset_time_zone'] as num?)?.toInt(),
      uuidDevice: json['uuid_device'] as String?,
      walkingSpeed: (json['walking_speed'] as num?)?.toInt(),
      walkingStepLength: (json['walking_step_length'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$NonStructuredDataArrayImplToJson(
        _$NonStructuredDataArrayImpl instance) =>
    <String, dynamic>{
      'source_of_data_string': instance.sourceOfDataString,
      'time_zone': instance.timeZone,
      'offset_time_zone': instance.offsetTimeZone,
      'uuid_device': instance.uuidDevice,
      'walking_speed': instance.walkingSpeed,
      'walking_step_length': instance.walkingStepLength,
    };
