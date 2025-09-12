// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'distance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Distance _$DistanceFromJson(Map<String, dynamic> json) {
  return _Distance.fromJson(json);
}

/// @nodoc
mixin _$Distance {
  @JsonKey(name: 'steps_int')
  int? get stepsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'walked_distance_meters_float')
  int? get walkedDistanceMetersFloat => throw _privateConstructorUsedError;
  @JsonKey(name: 'traveled_distance_meters_float')
  int? get traveledDistanceMetersFloat => throw _privateConstructorUsedError;
  @JsonKey(name: 'floors_climbed_float')
  int? get floorsClimbedFloat => throw _privateConstructorUsedError;
  @JsonKey(name: 'elevation_avg_altitude_meters_float')
  double? get elevationAvgAltitudeMetersFloat =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'elevation_minimum_altitude_meters_float')
  double? get elevationMinimumAltitudeMetersFloat =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'elevation_maximum_altitude_meters_float')
  double? get elevationMaximumAltitudeMetersFloat =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'elevation_loss_actual_altitude_meters_float')
  double? get elevationLossActualAltitudeMetersFloat =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'elevation_gain_actual_altitude_meters_float')
  double? get elevationGainActualAltitudeMetersFloat =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'elevation_planned_gain_meters_float')
  double? get elevationPlannedGainMetersFloat =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'swimming_num_strokes_float')
  double? get swimmingNumStrokesFloat => throw _privateConstructorUsedError;
  @JsonKey(name: 'swimming_num_laps_int')
  int? get swimmingNumLapsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'swimming_pool_length_meters_float')
  double? get swimmingPoolLengthMetersFloat =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'swimming_total_distance_meters_float')
  double? get swimmingTotalDistanceMetersFloat =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'active_steps_int')
  int? get activeStepsInt => throw _privateConstructorUsedError;
  List<ActiveStepsGranularDataArray>? get activeStepsGranularDataArray =>
      throw _privateConstructorUsedError;

  /// Serializes this Distance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Distance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistanceCopyWith<Distance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistanceCopyWith<$Res> {
  factory $DistanceCopyWith(Distance value, $Res Function(Distance) then) =
      _$DistanceCopyWithImpl<$Res, Distance>;
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class _$DistanceCopyWithImpl<$Res, $Val extends Distance>
    implements $DistanceCopyWith<$Res> {
  _$DistanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Distance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepsInt = freezed,
    Object? walkedDistanceMetersFloat = freezed,
    Object? traveledDistanceMetersFloat = freezed,
    Object? floorsClimbedFloat = freezed,
    Object? elevationAvgAltitudeMetersFloat = freezed,
    Object? elevationMinimumAltitudeMetersFloat = freezed,
    Object? elevationMaximumAltitudeMetersFloat = freezed,
    Object? elevationLossActualAltitudeMetersFloat = freezed,
    Object? elevationGainActualAltitudeMetersFloat = freezed,
    Object? elevationPlannedGainMetersFloat = freezed,
    Object? swimmingNumStrokesFloat = freezed,
    Object? swimmingNumLapsInt = freezed,
    Object? swimmingPoolLengthMetersFloat = freezed,
    Object? swimmingTotalDistanceMetersFloat = freezed,
    Object? activeStepsInt = freezed,
    Object? activeStepsGranularDataArray = freezed,
  }) {
    return _then(
      _value.copyWith(
            stepsInt: freezed == stepsInt
                ? _value.stepsInt
                : stepsInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            walkedDistanceMetersFloat: freezed == walkedDistanceMetersFloat
                ? _value.walkedDistanceMetersFloat
                : walkedDistanceMetersFloat // ignore: cast_nullable_to_non_nullable
                      as int?,
            traveledDistanceMetersFloat: freezed == traveledDistanceMetersFloat
                ? _value.traveledDistanceMetersFloat
                : traveledDistanceMetersFloat // ignore: cast_nullable_to_non_nullable
                      as int?,
            floorsClimbedFloat: freezed == floorsClimbedFloat
                ? _value.floorsClimbedFloat
                : floorsClimbedFloat // ignore: cast_nullable_to_non_nullable
                      as int?,
            elevationAvgAltitudeMetersFloat:
                freezed == elevationAvgAltitudeMetersFloat
                ? _value.elevationAvgAltitudeMetersFloat
                : elevationAvgAltitudeMetersFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
            elevationMinimumAltitudeMetersFloat:
                freezed == elevationMinimumAltitudeMetersFloat
                ? _value.elevationMinimumAltitudeMetersFloat
                : elevationMinimumAltitudeMetersFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
            elevationMaximumAltitudeMetersFloat:
                freezed == elevationMaximumAltitudeMetersFloat
                ? _value.elevationMaximumAltitudeMetersFloat
                : elevationMaximumAltitudeMetersFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
            elevationLossActualAltitudeMetersFloat:
                freezed == elevationLossActualAltitudeMetersFloat
                ? _value.elevationLossActualAltitudeMetersFloat
                : elevationLossActualAltitudeMetersFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
            elevationGainActualAltitudeMetersFloat:
                freezed == elevationGainActualAltitudeMetersFloat
                ? _value.elevationGainActualAltitudeMetersFloat
                : elevationGainActualAltitudeMetersFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
            elevationPlannedGainMetersFloat:
                freezed == elevationPlannedGainMetersFloat
                ? _value.elevationPlannedGainMetersFloat
                : elevationPlannedGainMetersFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
            swimmingNumStrokesFloat: freezed == swimmingNumStrokesFloat
                ? _value.swimmingNumStrokesFloat
                : swimmingNumStrokesFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
            swimmingNumLapsInt: freezed == swimmingNumLapsInt
                ? _value.swimmingNumLapsInt
                : swimmingNumLapsInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            swimmingPoolLengthMetersFloat:
                freezed == swimmingPoolLengthMetersFloat
                ? _value.swimmingPoolLengthMetersFloat
                : swimmingPoolLengthMetersFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
            swimmingTotalDistanceMetersFloat:
                freezed == swimmingTotalDistanceMetersFloat
                ? _value.swimmingTotalDistanceMetersFloat
                : swimmingTotalDistanceMetersFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
            activeStepsInt: freezed == activeStepsInt
                ? _value.activeStepsInt
                : activeStepsInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            activeStepsGranularDataArray:
                freezed == activeStepsGranularDataArray
                ? _value.activeStepsGranularDataArray
                : activeStepsGranularDataArray // ignore: cast_nullable_to_non_nullable
                      as List<ActiveStepsGranularDataArray>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DistanceImplCopyWith<$Res>
    implements $DistanceCopyWith<$Res> {
  factory _$$DistanceImplCopyWith(
    _$DistanceImpl value,
    $Res Function(_$DistanceImpl) then,
  ) = __$$DistanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class __$$DistanceImplCopyWithImpl<$Res>
    extends _$DistanceCopyWithImpl<$Res, _$DistanceImpl>
    implements _$$DistanceImplCopyWith<$Res> {
  __$$DistanceImplCopyWithImpl(
    _$DistanceImpl _value,
    $Res Function(_$DistanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Distance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepsInt = freezed,
    Object? walkedDistanceMetersFloat = freezed,
    Object? traveledDistanceMetersFloat = freezed,
    Object? floorsClimbedFloat = freezed,
    Object? elevationAvgAltitudeMetersFloat = freezed,
    Object? elevationMinimumAltitudeMetersFloat = freezed,
    Object? elevationMaximumAltitudeMetersFloat = freezed,
    Object? elevationLossActualAltitudeMetersFloat = freezed,
    Object? elevationGainActualAltitudeMetersFloat = freezed,
    Object? elevationPlannedGainMetersFloat = freezed,
    Object? swimmingNumStrokesFloat = freezed,
    Object? swimmingNumLapsInt = freezed,
    Object? swimmingPoolLengthMetersFloat = freezed,
    Object? swimmingTotalDistanceMetersFloat = freezed,
    Object? activeStepsInt = freezed,
    Object? activeStepsGranularDataArray = freezed,
  }) {
    return _then(
      _$DistanceImpl(
        stepsInt: freezed == stepsInt
            ? _value.stepsInt
            : stepsInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        walkedDistanceMetersFloat: freezed == walkedDistanceMetersFloat
            ? _value.walkedDistanceMetersFloat
            : walkedDistanceMetersFloat // ignore: cast_nullable_to_non_nullable
                  as int?,
        traveledDistanceMetersFloat: freezed == traveledDistanceMetersFloat
            ? _value.traveledDistanceMetersFloat
            : traveledDistanceMetersFloat // ignore: cast_nullable_to_non_nullable
                  as int?,
        floorsClimbedFloat: freezed == floorsClimbedFloat
            ? _value.floorsClimbedFloat
            : floorsClimbedFloat // ignore: cast_nullable_to_non_nullable
                  as int?,
        elevationAvgAltitudeMetersFloat:
            freezed == elevationAvgAltitudeMetersFloat
            ? _value.elevationAvgAltitudeMetersFloat
            : elevationAvgAltitudeMetersFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
        elevationMinimumAltitudeMetersFloat:
            freezed == elevationMinimumAltitudeMetersFloat
            ? _value.elevationMinimumAltitudeMetersFloat
            : elevationMinimumAltitudeMetersFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
        elevationMaximumAltitudeMetersFloat:
            freezed == elevationMaximumAltitudeMetersFloat
            ? _value.elevationMaximumAltitudeMetersFloat
            : elevationMaximumAltitudeMetersFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
        elevationLossActualAltitudeMetersFloat:
            freezed == elevationLossActualAltitudeMetersFloat
            ? _value.elevationLossActualAltitudeMetersFloat
            : elevationLossActualAltitudeMetersFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
        elevationGainActualAltitudeMetersFloat:
            freezed == elevationGainActualAltitudeMetersFloat
            ? _value.elevationGainActualAltitudeMetersFloat
            : elevationGainActualAltitudeMetersFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
        elevationPlannedGainMetersFloat:
            freezed == elevationPlannedGainMetersFloat
            ? _value.elevationPlannedGainMetersFloat
            : elevationPlannedGainMetersFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
        swimmingNumStrokesFloat: freezed == swimmingNumStrokesFloat
            ? _value.swimmingNumStrokesFloat
            : swimmingNumStrokesFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
        swimmingNumLapsInt: freezed == swimmingNumLapsInt
            ? _value.swimmingNumLapsInt
            : swimmingNumLapsInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        swimmingPoolLengthMetersFloat: freezed == swimmingPoolLengthMetersFloat
            ? _value.swimmingPoolLengthMetersFloat
            : swimmingPoolLengthMetersFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
        swimmingTotalDistanceMetersFloat:
            freezed == swimmingTotalDistanceMetersFloat
            ? _value.swimmingTotalDistanceMetersFloat
            : swimmingTotalDistanceMetersFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
        activeStepsInt: freezed == activeStepsInt
            ? _value.activeStepsInt
            : activeStepsInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        activeStepsGranularDataArray: freezed == activeStepsGranularDataArray
            ? _value._activeStepsGranularDataArray
            : activeStepsGranularDataArray // ignore: cast_nullable_to_non_nullable
                  as List<ActiveStepsGranularDataArray>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DistanceImpl implements _Distance {
  _$DistanceImpl({
    @JsonKey(name: 'steps_int') this.stepsInt,
    @JsonKey(name: 'walked_distance_meters_float')
    this.walkedDistanceMetersFloat,
    @JsonKey(name: 'traveled_distance_meters_float')
    this.traveledDistanceMetersFloat,
    @JsonKey(name: 'floors_climbed_float') this.floorsClimbedFloat,
    @JsonKey(name: 'elevation_avg_altitude_meters_float')
    this.elevationAvgAltitudeMetersFloat,
    @JsonKey(name: 'elevation_minimum_altitude_meters_float')
    this.elevationMinimumAltitudeMetersFloat,
    @JsonKey(name: 'elevation_maximum_altitude_meters_float')
    this.elevationMaximumAltitudeMetersFloat,
    @JsonKey(name: 'elevation_loss_actual_altitude_meters_float')
    this.elevationLossActualAltitudeMetersFloat,
    @JsonKey(name: 'elevation_gain_actual_altitude_meters_float')
    this.elevationGainActualAltitudeMetersFloat,
    @JsonKey(name: 'elevation_planned_gain_meters_float')
    this.elevationPlannedGainMetersFloat,
    @JsonKey(name: 'swimming_num_strokes_float') this.swimmingNumStrokesFloat,
    @JsonKey(name: 'swimming_num_laps_int') this.swimmingNumLapsInt,
    @JsonKey(name: 'swimming_pool_length_meters_float')
    this.swimmingPoolLengthMetersFloat,
    @JsonKey(name: 'swimming_total_distance_meters_float')
    this.swimmingTotalDistanceMetersFloat,
    @JsonKey(name: 'active_steps_int') this.activeStepsInt,
    final List<ActiveStepsGranularDataArray>? activeStepsGranularDataArray,
  }) : _activeStepsGranularDataArray = activeStepsGranularDataArray;

  factory _$DistanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistanceImplFromJson(json);

  @override
  @JsonKey(name: 'steps_int')
  final int? stepsInt;
  @override
  @JsonKey(name: 'walked_distance_meters_float')
  final int? walkedDistanceMetersFloat;
  @override
  @JsonKey(name: 'traveled_distance_meters_float')
  final int? traveledDistanceMetersFloat;
  @override
  @JsonKey(name: 'floors_climbed_float')
  final int? floorsClimbedFloat;
  @override
  @JsonKey(name: 'elevation_avg_altitude_meters_float')
  final double? elevationAvgAltitudeMetersFloat;
  @override
  @JsonKey(name: 'elevation_minimum_altitude_meters_float')
  final double? elevationMinimumAltitudeMetersFloat;
  @override
  @JsonKey(name: 'elevation_maximum_altitude_meters_float')
  final double? elevationMaximumAltitudeMetersFloat;
  @override
  @JsonKey(name: 'elevation_loss_actual_altitude_meters_float')
  final double? elevationLossActualAltitudeMetersFloat;
  @override
  @JsonKey(name: 'elevation_gain_actual_altitude_meters_float')
  final double? elevationGainActualAltitudeMetersFloat;
  @override
  @JsonKey(name: 'elevation_planned_gain_meters_float')
  final double? elevationPlannedGainMetersFloat;
  @override
  @JsonKey(name: 'swimming_num_strokes_float')
  final double? swimmingNumStrokesFloat;
  @override
  @JsonKey(name: 'swimming_num_laps_int')
  final int? swimmingNumLapsInt;
  @override
  @JsonKey(name: 'swimming_pool_length_meters_float')
  final double? swimmingPoolLengthMetersFloat;
  @override
  @JsonKey(name: 'swimming_total_distance_meters_float')
  final double? swimmingTotalDistanceMetersFloat;
  @override
  @JsonKey(name: 'active_steps_int')
  final int? activeStepsInt;
  final List<ActiveStepsGranularDataArray>? _activeStepsGranularDataArray;
  @override
  List<ActiveStepsGranularDataArray>? get activeStepsGranularDataArray {
    final value = _activeStepsGranularDataArray;
    if (value == null) return null;
    if (_activeStepsGranularDataArray is EqualUnmodifiableListView)
      return _activeStepsGranularDataArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Distance(stepsInt: $stepsInt, walkedDistanceMetersFloat: $walkedDistanceMetersFloat, traveledDistanceMetersFloat: $traveledDistanceMetersFloat, floorsClimbedFloat: $floorsClimbedFloat, elevationAvgAltitudeMetersFloat: $elevationAvgAltitudeMetersFloat, elevationMinimumAltitudeMetersFloat: $elevationMinimumAltitudeMetersFloat, elevationMaximumAltitudeMetersFloat: $elevationMaximumAltitudeMetersFloat, elevationLossActualAltitudeMetersFloat: $elevationLossActualAltitudeMetersFloat, elevationGainActualAltitudeMetersFloat: $elevationGainActualAltitudeMetersFloat, elevationPlannedGainMetersFloat: $elevationPlannedGainMetersFloat, swimmingNumStrokesFloat: $swimmingNumStrokesFloat, swimmingNumLapsInt: $swimmingNumLapsInt, swimmingPoolLengthMetersFloat: $swimmingPoolLengthMetersFloat, swimmingTotalDistanceMetersFloat: $swimmingTotalDistanceMetersFloat, activeStepsInt: $activeStepsInt, activeStepsGranularDataArray: $activeStepsGranularDataArray)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistanceImpl &&
            (identical(other.stepsInt, stepsInt) ||
                other.stepsInt == stepsInt) &&
            (identical(
                  other.walkedDistanceMetersFloat,
                  walkedDistanceMetersFloat,
                ) ||
                other.walkedDistanceMetersFloat == walkedDistanceMetersFloat) &&
            (identical(
                  other.traveledDistanceMetersFloat,
                  traveledDistanceMetersFloat,
                ) ||
                other.traveledDistanceMetersFloat ==
                    traveledDistanceMetersFloat) &&
            (identical(other.floorsClimbedFloat, floorsClimbedFloat) ||
                other.floorsClimbedFloat == floorsClimbedFloat) &&
            (identical(
                  other.elevationAvgAltitudeMetersFloat,
                  elevationAvgAltitudeMetersFloat,
                ) ||
                other.elevationAvgAltitudeMetersFloat ==
                    elevationAvgAltitudeMetersFloat) &&
            (identical(
                  other.elevationMinimumAltitudeMetersFloat,
                  elevationMinimumAltitudeMetersFloat,
                ) ||
                other.elevationMinimumAltitudeMetersFloat ==
                    elevationMinimumAltitudeMetersFloat) &&
            (identical(
                  other.elevationMaximumAltitudeMetersFloat,
                  elevationMaximumAltitudeMetersFloat,
                ) ||
                other.elevationMaximumAltitudeMetersFloat ==
                    elevationMaximumAltitudeMetersFloat) &&
            (identical(
                  other.elevationLossActualAltitudeMetersFloat,
                  elevationLossActualAltitudeMetersFloat,
                ) ||
                other.elevationLossActualAltitudeMetersFloat ==
                    elevationLossActualAltitudeMetersFloat) &&
            (identical(
                  other.elevationGainActualAltitudeMetersFloat,
                  elevationGainActualAltitudeMetersFloat,
                ) ||
                other.elevationGainActualAltitudeMetersFloat ==
                    elevationGainActualAltitudeMetersFloat) &&
            (identical(
                  other.elevationPlannedGainMetersFloat,
                  elevationPlannedGainMetersFloat,
                ) ||
                other.elevationPlannedGainMetersFloat ==
                    elevationPlannedGainMetersFloat) &&
            (identical(
                  other.swimmingNumStrokesFloat,
                  swimmingNumStrokesFloat,
                ) ||
                other.swimmingNumStrokesFloat == swimmingNumStrokesFloat) &&
            (identical(other.swimmingNumLapsInt, swimmingNumLapsInt) ||
                other.swimmingNumLapsInt == swimmingNumLapsInt) &&
            (identical(
                  other.swimmingPoolLengthMetersFloat,
                  swimmingPoolLengthMetersFloat,
                ) ||
                other.swimmingPoolLengthMetersFloat ==
                    swimmingPoolLengthMetersFloat) &&
            (identical(
                  other.swimmingTotalDistanceMetersFloat,
                  swimmingTotalDistanceMetersFloat,
                ) ||
                other.swimmingTotalDistanceMetersFloat ==
                    swimmingTotalDistanceMetersFloat) &&
            (identical(other.activeStepsInt, activeStepsInt) ||
                other.activeStepsInt == activeStepsInt) &&
            const DeepCollectionEquality().equals(
              other._activeStepsGranularDataArray,
              _activeStepsGranularDataArray,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    stepsInt,
    walkedDistanceMetersFloat,
    traveledDistanceMetersFloat,
    floorsClimbedFloat,
    elevationAvgAltitudeMetersFloat,
    elevationMinimumAltitudeMetersFloat,
    elevationMaximumAltitudeMetersFloat,
    elevationLossActualAltitudeMetersFloat,
    elevationGainActualAltitudeMetersFloat,
    elevationPlannedGainMetersFloat,
    swimmingNumStrokesFloat,
    swimmingNumLapsInt,
    swimmingPoolLengthMetersFloat,
    swimmingTotalDistanceMetersFloat,
    activeStepsInt,
    const DeepCollectionEquality().hash(_activeStepsGranularDataArray),
  );

  /// Create a copy of Distance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistanceImplCopyWith<_$DistanceImpl> get copyWith =>
      __$$DistanceImplCopyWithImpl<_$DistanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistanceImplToJson(this);
  }
}

abstract class _Distance implements Distance {
  factory _Distance({
    @JsonKey(name: 'steps_int') final int? stepsInt,
    @JsonKey(name: 'walked_distance_meters_float')
    final int? walkedDistanceMetersFloat,
    @JsonKey(name: 'traveled_distance_meters_float')
    final int? traveledDistanceMetersFloat,
    @JsonKey(name: 'floors_climbed_float') final int? floorsClimbedFloat,
    @JsonKey(name: 'elevation_avg_altitude_meters_float')
    final double? elevationAvgAltitudeMetersFloat,
    @JsonKey(name: 'elevation_minimum_altitude_meters_float')
    final double? elevationMinimumAltitudeMetersFloat,
    @JsonKey(name: 'elevation_maximum_altitude_meters_float')
    final double? elevationMaximumAltitudeMetersFloat,
    @JsonKey(name: 'elevation_loss_actual_altitude_meters_float')
    final double? elevationLossActualAltitudeMetersFloat,
    @JsonKey(name: 'elevation_gain_actual_altitude_meters_float')
    final double? elevationGainActualAltitudeMetersFloat,
    @JsonKey(name: 'elevation_planned_gain_meters_float')
    final double? elevationPlannedGainMetersFloat,
    @JsonKey(name: 'swimming_num_strokes_float')
    final double? swimmingNumStrokesFloat,
    @JsonKey(name: 'swimming_num_laps_int') final int? swimmingNumLapsInt,
    @JsonKey(name: 'swimming_pool_length_meters_float')
    final double? swimmingPoolLengthMetersFloat,
    @JsonKey(name: 'swimming_total_distance_meters_float')
    final double? swimmingTotalDistanceMetersFloat,
    @JsonKey(name: 'active_steps_int') final int? activeStepsInt,
    final List<ActiveStepsGranularDataArray>? activeStepsGranularDataArray,
  }) = _$DistanceImpl;

  factory _Distance.fromJson(Map<String, dynamic> json) =
      _$DistanceImpl.fromJson;

  @override
  @JsonKey(name: 'steps_int')
  int? get stepsInt;
  @override
  @JsonKey(name: 'walked_distance_meters_float')
  int? get walkedDistanceMetersFloat;
  @override
  @JsonKey(name: 'traveled_distance_meters_float')
  int? get traveledDistanceMetersFloat;
  @override
  @JsonKey(name: 'floors_climbed_float')
  int? get floorsClimbedFloat;
  @override
  @JsonKey(name: 'elevation_avg_altitude_meters_float')
  double? get elevationAvgAltitudeMetersFloat;
  @override
  @JsonKey(name: 'elevation_minimum_altitude_meters_float')
  double? get elevationMinimumAltitudeMetersFloat;
  @override
  @JsonKey(name: 'elevation_maximum_altitude_meters_float')
  double? get elevationMaximumAltitudeMetersFloat;
  @override
  @JsonKey(name: 'elevation_loss_actual_altitude_meters_float')
  double? get elevationLossActualAltitudeMetersFloat;
  @override
  @JsonKey(name: 'elevation_gain_actual_altitude_meters_float')
  double? get elevationGainActualAltitudeMetersFloat;
  @override
  @JsonKey(name: 'elevation_planned_gain_meters_float')
  double? get elevationPlannedGainMetersFloat;
  @override
  @JsonKey(name: 'swimming_num_strokes_float')
  double? get swimmingNumStrokesFloat;
  @override
  @JsonKey(name: 'swimming_num_laps_int')
  int? get swimmingNumLapsInt;
  @override
  @JsonKey(name: 'swimming_pool_length_meters_float')
  double? get swimmingPoolLengthMetersFloat;
  @override
  @JsonKey(name: 'swimming_total_distance_meters_float')
  double? get swimmingTotalDistanceMetersFloat;
  @override
  @JsonKey(name: 'active_steps_int')
  int? get activeStepsInt;
  @override
  List<ActiveStepsGranularDataArray>? get activeStepsGranularDataArray;

  /// Create a copy of Distance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistanceImplCopyWith<_$DistanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
