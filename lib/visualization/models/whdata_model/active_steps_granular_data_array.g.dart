// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_steps_granular_data_array.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActiveStepsGranularDataArrayImpl _$$ActiveStepsGranularDataArrayImplFromJson(
        Map<String, dynamic> json) =>
    _$ActiveStepsGranularDataArrayImpl(
      stepsInt: (json['steps_int'] as num?)?.toInt(),
      datetimeString: json['datetime_string'] == null
          ? null
          : DateTime.parse(json['datetime_string'] as String),
      intervalDurationSecondsFloat:
          (json['interval_duration_seconds_float'] as num?)?.toInt(),
      sourceOfDataString: json['source_of_data_string'] as String?,
    );

Map<String, dynamic> _$$ActiveStepsGranularDataArrayImplToJson(
        _$ActiveStepsGranularDataArrayImpl instance) =>
    <String, dynamic>{
      'steps_int': instance.stepsInt,
      'datetime_string': instance.datetimeString?.toIso8601String(),
      'interval_duration_seconds_float': instance.intervalDurationSecondsFloat,
      'source_of_data_string': instance.sourceOfDataString,
    };
