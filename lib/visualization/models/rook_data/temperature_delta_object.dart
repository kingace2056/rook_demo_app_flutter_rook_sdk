import 'package:freezed_annotation/freezed_annotation.dart';

part 'temperature_delta_object.freezed.dart';
part 'temperature_delta_object.g.dart';

@freezed
class TemperatureDeltaObject with _$TemperatureDeltaObject {
  factory TemperatureDeltaObject({
    @JsonKey(name: 'temperature_celsius_float') double? temperatureCelsiusFloat,
    @JsonKey(name: 'measurement_type_string') String? measurementTypeString,
  }) = _TemperatureDeltaObject;

  factory TemperatureDeltaObject.fromJson(Map<String, dynamic> json) =>
      _$TemperatureDeltaObjectFromJson(json);
}
