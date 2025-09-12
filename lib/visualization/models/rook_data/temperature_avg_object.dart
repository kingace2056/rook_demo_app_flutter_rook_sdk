import 'package:freezed_annotation/freezed_annotation.dart';

part 'temperature_avg_object.freezed.dart';
part 'temperature_avg_object.g.dart';

@freezed
class TemperatureAvgObject with _$TemperatureAvgObject {
  factory TemperatureAvgObject({
    @JsonKey(name: 'temperature_celsius_float') double? temperatureCelsiusFloat,
    @JsonKey(name: 'measurement_type_string') String? measurementTypeString,
  }) = _TemperatureAvgObject;

  factory TemperatureAvgObject.fromJson(Map<String, dynamic> json) =>
      _$TemperatureAvgObjectFromJson(json);
}
