// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floors_climbed_granular_data_array.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FloorsClimbedGranularDataArrayImpl
_$$FloorsClimbedGranularDataArrayImplFromJson(Map<String, dynamic> json) =>
    _$FloorsClimbedGranularDataArrayImpl(
      floorsClimbedFloat: (json['floors_climbed_float'] as num?)?.toInt(),
      datetimeString: json['datetime_string'] == null
          ? null
          : DateTime.parse(json['datetime_string'] as String),
      intervalDurationSecondsFloat:
          (json['interval_duration_seconds_float'] as num?)?.toInt(),
      sourceOfDataString: json['source_of_data_string'] as String?,
    );

Map<String, dynamic> _$$FloorsClimbedGranularDataArrayImplToJson(
  _$FloorsClimbedGranularDataArrayImpl instance,
) => <String, dynamic>{
  'floors_climbed_float': instance.floorsClimbedFloat,
  'datetime_string': instance.datetimeString?.toIso8601String(),
  'interval_duration_seconds_float': instance.intervalDurationSecondsFloat,
  'source_of_data_string': instance.sourceOfDataString,
};
