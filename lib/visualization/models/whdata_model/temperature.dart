import 'package:freezed_annotation/freezed_annotation.dart';

import 'temperature_avg_object.dart';
import 'temperature_delta_object.dart';
import 'temperature_maximum_object.dart';
import 'temperature_minimum_object.dart';

part 'temperature.freezed.dart';
part 'temperature.g.dart';

@freezed
class Temperature with _$Temperature {
  factory Temperature({
    @JsonKey(name: 'temperature_avg_object')
    TemperatureAvgObject? temperatureAvgObject,
    @JsonKey(name: 'temperature_maximum_object')
    TemperatureMaximumObject? temperatureMaximumObject,
    @JsonKey(name: 'temperature_minimum_object')
    TemperatureMinimumObject? temperatureMinimumObject,
    @JsonKey(name: 'temperature_delta_object')
    TemperatureDeltaObject? temperatureDeltaObject,
  }) = _Temperature;

  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);
}
