import 'package:freezed_annotation/freezed_annotation.dart';

part 'heart_rate.freezed.dart';
part 'heart_rate.g.dart';

@freezed
class HeartRate with _$HeartRate {
  factory HeartRate({
    @JsonKey(name: 'hr_maximum_bpm_int') int? hrMaximumBpmInt,
    @JsonKey(name: 'hr_minimum_bpm_int') int? hrMinimumBpmInt,
    @JsonKey(name: 'hr_avg_bpm_int') int? hrAvgBpmInt,
    @JsonKey(name: 'hr_resting_bpm_int') int? hrRestingBpmInt,
    @JsonKey(name: 'hrv_avg_rmssd_float') double? hrvAvgRmssdFloat,
    @JsonKey(name: 'hrv_avg_sdnn_float') double? hrvAvgSdnnFloat,
  }) = _HeartRate;

  factory HeartRate.fromJson(Map<String, dynamic> json) =>
      _$HeartRateFromJson(json);
}
