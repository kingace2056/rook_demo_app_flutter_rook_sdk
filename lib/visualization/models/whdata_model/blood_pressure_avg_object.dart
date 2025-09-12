import 'package:freezed_annotation/freezed_annotation.dart';

part 'blood_pressure_avg_object.freezed.dart';
part 'blood_pressure_avg_object.g.dart';

@freezed
class BloodPressureAvgObject with _$BloodPressureAvgObject {
  factory BloodPressureAvgObject({
    @JsonKey(name: 'systolic_mmHg_int') int? systolicMmHgInt,
    @JsonKey(name: 'diastolic_mmHg_int') int? diastolicMmHgInt,
  }) = _BloodPressureAvgObject;

  factory BloodPressureAvgObject.fromJson(Map<String, dynamic> json) =>
      _$BloodPressureAvgObjectFromJson(json);
}
