// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_avg_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemperatureAvgObjectImpl _$$TemperatureAvgObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$TemperatureAvgObjectImpl(
      temperatureCelsiusFloat:
          (json['temperature_celsius_float'] as num?)?.toDouble(),
      measurementTypeString: json['measurement_type_string'] as String?,
    );

Map<String, dynamic> _$$TemperatureAvgObjectImplToJson(
        _$TemperatureAvgObjectImpl instance) =>
    <String, dynamic>{
      'temperature_celsius_float': instance.temperatureCelsiusFloat,
      'measurement_type_string': instance.measurementTypeString,
    };
