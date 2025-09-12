// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_maximum_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemperatureMaximumObjectImpl _$$TemperatureMaximumObjectImplFromJson(
  Map<String, dynamic> json,
) => _$TemperatureMaximumObjectImpl(
  temperatureCelsiusFloat: (json['temperature_celsius_float'] as num?)
      ?.toDouble(),
  measurementTypeString: json['measurement_type_string'] as String?,
);

Map<String, dynamic> _$$TemperatureMaximumObjectImplToJson(
  _$TemperatureMaximumObjectImpl instance,
) => <String, dynamic>{
  'temperature_celsius_float': instance.temperatureCelsiusFloat,
  'measurement_type_string': instance.measurementTypeString,
};
