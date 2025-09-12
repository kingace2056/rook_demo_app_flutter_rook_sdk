// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_minimum_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemperatureMinimumObjectImpl _$$TemperatureMinimumObjectImplFromJson(
  Map<String, dynamic> json,
) => _$TemperatureMinimumObjectImpl(
  temperatureCelsiusFloat: (json['temperature_celsius_float'] as num?)
      ?.toDouble(),
  measurementTypeString: json['measurement_type_string'] as String?,
);

Map<String, dynamic> _$$TemperatureMinimumObjectImplToJson(
  _$TemperatureMinimumObjectImpl instance,
) => <String, dynamic>{
  'temperature_celsius_float': instance.temperatureCelsiusFloat,
  'measurement_type_string': instance.measurementTypeString,
};
