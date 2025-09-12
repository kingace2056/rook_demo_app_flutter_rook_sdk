import 'package:freezed_annotation/freezed_annotation.dart';

import 'active_steps_granular_data_array.dart';
import 'floors_climbed_granular_data_array.dart';
import 'traveled_distance_granular_data_array.dart';

part 'distance.freezed.dart';
part 'distance.g.dart';

@freezed
class Distance with _$Distance {
  factory Distance({
    @JsonKey(name: 'steps_int') int? stepsInt,
    @JsonKey(name: 'walked_distance_meters_float')
    int? walkedDistanceMetersFloat,
    @JsonKey(name: 'traveled_distance_meters_float')
    int? traveledDistanceMetersFloat,
    @JsonKey(name: 'floors_climbed_float') int? floorsClimbedFloat,
    @JsonKey(name: 'elevation_avg_altitude_meters_float')
    double? elevationAvgAltitudeMetersFloat,
    @JsonKey(name: 'elevation_minimum_altitude_meters_float')
    double? elevationMinimumAltitudeMetersFloat,
    @JsonKey(name: 'elevation_maximum_altitude_meters_float')
    double? elevationMaximumAltitudeMetersFloat,
    @JsonKey(name: 'elevation_loss_actual_altitude_meters_float')
    double? elevationLossActualAltitudeMetersFloat,
    @JsonKey(name: 'elevation_gain_actual_altitude_meters_float')
    double? elevationGainActualAltitudeMetersFloat,
    @JsonKey(name: 'elevation_planned_gain_meters_float')
    double? elevationPlannedGainMetersFloat,
    @JsonKey(name: 'swimming_num_strokes_float')
    double? swimmingNumStrokesFloat,
    @JsonKey(name: 'swimming_num_laps_int') int? swimmingNumLapsInt,
    @JsonKey(name: 'swimming_pool_length_meters_float')
    double? swimmingPoolLengthMetersFloat,
    @JsonKey(name: 'swimming_total_distance_meters_float')
    double? swimmingTotalDistanceMetersFloat,

    @JsonKey(name: 'active_steps_int') int? activeStepsInt,

    List<ActiveStepsGranularDataArray>? activeStepsGranularDataArray,
  }) = _Distance;

  factory Distance.fromJson(Map<String, dynamic> json) =>
      _$DistanceFromJson(json);
}
