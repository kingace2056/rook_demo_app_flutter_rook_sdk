// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traveled_distance_granular_data_array.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TraveledDistanceGranularDataArrayImpl
    _$$TraveledDistanceGranularDataArrayImplFromJson(
            Map<String, dynamic> json) =>
        _$TraveledDistanceGranularDataArrayImpl(
          traveledDistanceMetersFloat:
              (json['traveled_distance_meters_float'] as num?)?.toInt(),
          datetimeString: json['datetime_string'] == null
              ? null
              : DateTime.parse(json['datetime_string'] as String),
          intervalDurationSecondsFloat:
              (json['interval_duration_seconds_float'] as num?)?.toInt(),
          sourceOfDataString: json['source_of_data_string'] as String?,
        );

Map<String, dynamic> _$$TraveledDistanceGranularDataArrayImplToJson(
        _$TraveledDistanceGranularDataArrayImpl instance) =>
    <String, dynamic>{
      'traveled_distance_meters_float': instance.traveledDistanceMetersFloat,
      'datetime_string': instance.datetimeString?.toIso8601String(),
      'interval_duration_seconds_float': instance.intervalDurationSecondsFloat,
      'source_of_data_string': instance.sourceOfDataString,
    };
