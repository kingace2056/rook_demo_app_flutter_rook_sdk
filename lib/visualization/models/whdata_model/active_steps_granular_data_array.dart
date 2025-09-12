import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_steps_granular_data_array.freezed.dart';
part 'active_steps_granular_data_array.g.dart';

@freezed
class ActiveStepsGranularDataArray with _$ActiveStepsGranularDataArray {
  factory ActiveStepsGranularDataArray({
    @JsonKey(name: 'steps_int') int? stepsInt,
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'interval_duration_seconds_float')
    int? intervalDurationSecondsFloat,
    @JsonKey(name: 'source_of_data_string') String? sourceOfDataString,
  }) = _ActiveStepsGranularDataArray;

  factory ActiveStepsGranularDataArray.fromJson(Map<String, dynamic> json) =>
      _$ActiveStepsGranularDataArrayFromJson(json);
}
