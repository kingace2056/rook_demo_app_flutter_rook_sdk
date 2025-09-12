import 'package:freezed_annotation/freezed_annotation.dart';

part 'floors_climbed_granular_data_array.freezed.dart';
part 'floors_climbed_granular_data_array.g.dart';

@freezed
class FloorsClimbedGranularDataArray with _$FloorsClimbedGranularDataArray {
  factory FloorsClimbedGranularDataArray({
    @JsonKey(name: 'floors_climbed_float') int? floorsClimbedFloat,
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'interval_duration_seconds_float')
    int? intervalDurationSecondsFloat,
    @JsonKey(name: 'source_of_data_string') String? sourceOfDataString,
  }) = _FloorsClimbedGranularDataArray;

  factory FloorsClimbedGranularDataArray.fromJson(Map<String, dynamic> json) =>
      _$FloorsClimbedGranularDataArrayFromJson(json);
}
