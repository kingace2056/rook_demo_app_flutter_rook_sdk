import 'package:freezed_annotation/freezed_annotation.dart';

import 'blood_pressure_avg_object.dart';

part 'blood_pressure.freezed.dart';
part 'blood_pressure.g.dart';

@freezed
class BloodPressure with _$BloodPressure {
  factory BloodPressure({
    @JsonKey(name: 'blood_pressure_avg_object')
    BloodPressureAvgObject? bloodPressureAvgObject,
  }) = _BloodPressure;

  factory BloodPressure.fromJson(Map<String, dynamic> json) =>
      _$BloodPressureFromJson(json);
}
