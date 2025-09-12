import 'package:freezed_annotation/freezed_annotation.dart';

part 'hr_granular_data_array.freezed.dart';
part 'hr_granular_data_array.g.dart';

@freezed
class HrGranularDataArray with _$HrGranularDataArray {
  factory HrGranularDataArray({
    @JsonKey(name: 'hr_bpm_int') int? hrBpmInt,
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'interval_duration_seconds_float')
    double? intervalDurationSecondsFloat,
    @JsonKey(name: 'source_of_data_string') String? sourceOfDataString,
  }) = _HrGranularDataArray;

  factory HrGranularDataArray.fromJson(Map<String, dynamic> json) =>
      _$HrGranularDataArrayFromJson(json);
}
