// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistanceImpl _$$DistanceImplFromJson(Map<String, dynamic> json) =>
    _$DistanceImpl(
      stepsInt: (json['steps_int'] as num?)?.toInt(),
      walkedDistanceMetersFloat:
          (json['walked_distance_meters_float'] as num?)?.toInt(),
      traveledDistanceMetersFloat:
          (json['traveled_distance_meters_float'] as num?)?.toInt(),
      floorsClimbedFloat: (json['floors_climbed_float'] as num?)?.toInt(),
      elevationAvgAltitudeMetersFloat:
          (json['elevation_avg_altitude_meters_float'] as num?)?.toDouble(),
      elevationMinimumAltitudeMetersFloat:
          (json['elevation_minimum_altitude_meters_float'] as num?)?.toDouble(),
      elevationMaximumAltitudeMetersFloat:
          (json['elevation_maximum_altitude_meters_float'] as num?)?.toDouble(),
      elevationLossActualAltitudeMetersFloat:
          (json['elevation_loss_actual_altitude_meters_float'] as num?)
              ?.toDouble(),
      elevationGainActualAltitudeMetersFloat:
          (json['elevation_gain_actual_altitude_meters_float'] as num?)
              ?.toDouble(),
      elevationPlannedGainMetersFloat:
          (json['elevation_planned_gain_meters_float'] as num?)?.toDouble(),
      swimmingNumStrokesFloat:
          (json['swimming_num_strokes_float'] as num?)?.toDouble(),
      swimmingNumLapsInt: (json['swimming_num_laps_int'] as num?)?.toInt(),
      swimmingPoolLengthMetersFloat:
          (json['swimming_pool_length_meters_float'] as num?)?.toDouble(),
      swimmingTotalDistanceMetersFloat:
          (json['swimming_total_distance_meters_float'] as num?)?.toDouble(),
      activeStepsInt: (json['active_steps_int'] as num?)?.toInt(),
      activeStepsGranularDataArray: (json['activeStepsGranularDataArray']
              as List<dynamic>?)
          ?.map((e) =>
              ActiveStepsGranularDataArray.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DistanceImplToJson(_$DistanceImpl instance) =>
    <String, dynamic>{
      'steps_int': instance.stepsInt,
      'walked_distance_meters_float': instance.walkedDistanceMetersFloat,
      'traveled_distance_meters_float': instance.traveledDistanceMetersFloat,
      'floors_climbed_float': instance.floorsClimbedFloat,
      'elevation_avg_altitude_meters_float':
          instance.elevationAvgAltitudeMetersFloat,
      'elevation_minimum_altitude_meters_float':
          instance.elevationMinimumAltitudeMetersFloat,
      'elevation_maximum_altitude_meters_float':
          instance.elevationMaximumAltitudeMetersFloat,
      'elevation_loss_actual_altitude_meters_float':
          instance.elevationLossActualAltitudeMetersFloat,
      'elevation_gain_actual_altitude_meters_float':
          instance.elevationGainActualAltitudeMetersFloat,
      'elevation_planned_gain_meters_float':
          instance.elevationPlannedGainMetersFloat,
      'swimming_num_strokes_float': instance.swimmingNumStrokesFloat,
      'swimming_num_laps_int': instance.swimmingNumLapsInt,
      'swimming_pool_length_meters_float':
          instance.swimmingPoolLengthMetersFloat,
      'swimming_total_distance_meters_float':
          instance.swimmingTotalDistanceMetersFloat,
      'active_steps_int': instance.activeStepsInt,
      'activeStepsGranularDataArray': instance.activeStepsGranularDataArray,
    };
