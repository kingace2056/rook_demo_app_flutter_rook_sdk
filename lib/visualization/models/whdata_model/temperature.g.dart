// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemperatureImpl _$$TemperatureImplFromJson(Map<String, dynamic> json) =>
    _$TemperatureImpl(
      temperatureAvgObject: json['temperature_avg_object'] == null
          ? null
          : TemperatureAvgObject.fromJson(
              json['temperature_avg_object'] as Map<String, dynamic>),
      temperatureMaximumObject: json['temperature_maximum_object'] == null
          ? null
          : TemperatureMaximumObject.fromJson(
              json['temperature_maximum_object'] as Map<String, dynamic>),
      temperatureMinimumObject: json['temperature_minimum_object'] == null
          ? null
          : TemperatureMinimumObject.fromJson(
              json['temperature_minimum_object'] as Map<String, dynamic>),
      temperatureDeltaObject: json['temperature_delta_object'] == null
          ? null
          : TemperatureDeltaObject.fromJson(
              json['temperature_delta_object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TemperatureImplToJson(_$TemperatureImpl instance) =>
    <String, dynamic>{
      'temperature_avg_object': instance.temperatureAvgObject,
      'temperature_maximum_object': instance.temperatureMaximumObject,
      'temperature_minimum_object': instance.temperatureMinimumObject,
      'temperature_delta_object': instance.temperatureDeltaObject,
    };
