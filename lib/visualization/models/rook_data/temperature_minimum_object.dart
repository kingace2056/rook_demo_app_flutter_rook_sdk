import 'package:freezed_annotation/freezed_annotation.dart';

part 'temperature_minimum_object.freezed.dart';
part 'temperature_minimum_object.g.dart';

@freezed
class TemperatureMinimumObject with _$TemperatureMinimumObject {
  factory TemperatureMinimumObject({
    @JsonKey(name: 'temperature_celsius_float') double? temperatureCelsiusFloat,
    @JsonKey(name: 'measurement_type_string') String? measurementTypeString,
  }) = _TemperatureMinimumObject;

  factory TemperatureMinimumObject.fromJson(Map<String, dynamic> json) =>
      _$TemperatureMinimumObjectFromJson(json);
}
