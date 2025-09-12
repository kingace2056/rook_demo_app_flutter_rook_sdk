import 'package:freezed_annotation/freezed_annotation.dart';

part 'traveled_distance_granular_data_array.freezed.dart';
part 'traveled_distance_granular_data_array.g.dart';

@freezed
class TraveledDistanceGranularDataArray
    with _$TraveledDistanceGranularDataArray {
  factory TraveledDistanceGranularDataArray({
    @JsonKey(name: 'traveled_distance_meters_float')
    int? traveledDistanceMetersFloat,
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'interval_duration_seconds_float')
    int? intervalDurationSecondsFloat,
    @JsonKey(name: 'source_of_data_string') String? sourceOfDataString,
  }) = _TraveledDistanceGranularDataArray;

  factory TraveledDistanceGranularDataArray.fromJson(
    Map<String, dynamic> json,
  ) => _$TraveledDistanceGranularDataArrayFromJson(json);
}
