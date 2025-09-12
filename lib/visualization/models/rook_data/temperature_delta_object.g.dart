// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_delta_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemperatureDeltaObjectImpl _$$TemperatureDeltaObjectImplFromJson(
  Map<String, dynamic> json,
) => _$TemperatureDeltaObjectImpl(
  temperatureCelsiusFloat: (json['temperature_celsius_float'] as num?)
      ?.toDouble(),
  measurementTypeString: json['measurement_type_string'] as String?,
);

Map<String, dynamic> _$$TemperatureDeltaObjectImplToJson(
  _$TemperatureDeltaObjectImpl instance,
) => <String, dynamic>{
  'temperature_celsius_float': instance.temperatureCelsiusFloat,
  'measurement_type_string': instance.measurementTypeString,
};
