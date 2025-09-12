// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hr_granular_data_array.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HrGranularDataArrayImpl _$$HrGranularDataArrayImplFromJson(
        Map<String, dynamic> json) =>
    _$HrGranularDataArrayImpl(
      hrBpmInt: (json['hr_bpm_int'] as num?)?.toInt(),
      datetimeString: json['datetime_string'] == null
          ? null
          : DateTime.parse(json['datetime_string'] as String),
      intervalDurationSecondsFloat:
          (json['interval_duration_seconds_float'] as num?)?.toDouble(),
      sourceOfDataString: json['source_of_data_string'] as String?,
    );

Map<String, dynamic> _$$HrGranularDataArrayImplToJson(
        _$HrGranularDataArrayImpl instance) =>
    <String, dynamic>{
      'hr_bpm_int': instance.hrBpmInt,
      'datetime_string': instance.datetimeString?.toIso8601String(),
      'interval_duration_seconds_float': instance.intervalDurationSecondsFloat,
      'source_of_data_string': instance.sourceOfDataString,
    };
