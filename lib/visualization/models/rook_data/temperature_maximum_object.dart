import 'package:freezed_annotation/freezed_annotation.dart';

part 'temperature_maximum_object.freezed.dart';
part 'temperature_maximum_object.g.dart';

@freezed
class TemperatureMaximumObject with _$TemperatureMaximumObject {
  factory TemperatureMaximumObject({
    @JsonKey(name: 'temperature_celsius_float') double? temperatureCelsiusFloat,
    @JsonKey(name: 'measurement_type_string') String? measurementTypeString,
  }) = _TemperatureMaximumObject;

  factory TemperatureMaximumObject.fromJson(Map<String, dynamic> json) =>
      _$TemperatureMaximumObjectFromJson(json);
}
