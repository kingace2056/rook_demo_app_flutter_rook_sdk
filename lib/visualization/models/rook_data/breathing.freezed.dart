// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breathing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Breathing _$BreathingFromJson(Map<String, dynamic> json) {
  return _Breathing.fromJson(json);
}

/// @nodoc
mixin _$Breathing {
  @JsonKey(name: 'breaths_minimum_per_min_int')
  int? get breathsMinimumPerMinInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'breaths_avg_per_min_int')
  int? get breathsAvgPerMinInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'breaths_maximum_per_min_int')
  int? get breathsMaximumPerMinInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'snoring_events_count_int')
  int? get snoringEventsCountInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'snoring_duration_total_seconds_int')
  int? get snoringDurationTotalSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'saturation_avg_percentage_int')
  int? get saturationAvgPercentageInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'saturation_minimum_percentage_int')
  int? get saturationMinimumPercentageInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'saturation_maximum_percentage_int')
  int? get saturationMaximumPercentageInt => throw _privateConstructorUsedError;

  /// Serializes this Breathing to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Breathing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BreathingCopyWith<Breathing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreathingCopyWith<$Res> {
  factory $BreathingCopyWith(Breathing value, $Res Function(Breathing) then) =
      _$BreathingCopyWithImpl<$Res, Breathing>;
  @useResult
  $Res call({
    @JsonKey(name: 'breaths_minimum_per_min_int') int? breathsMinimumPerMinInt,
    @JsonKey(name: 'breaths_avg_per_min_int') int? breathsAvgPerMinInt,
    @JsonKey(name: 'breaths_maximum_per_min_int') int? breathsMaximumPerMinInt,
    @JsonKey(name: 'snoring_events_count_int') int? snoringEventsCountInt,
    @JsonKey(name: 'snoring_duration_total_seconds_int')
    int? snoringDurationTotalSecondsInt,
    @JsonKey(name: 'saturation_avg_percentage_int')
    int? saturationAvgPercentageInt,
    @JsonKey(name: 'saturation_minimum_percentage_int')
    int? saturationMinimumPercentageInt,
    @JsonKey(name: 'saturation_maximum_percentage_int')
    int? saturationMaximumPercentageInt,
  });
}

/// @nodoc
class _$BreathingCopyWithImpl<$Res, $Val extends Breathing>
    implements $BreathingCopyWith<$Res> {
  _$BreathingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Breathing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breathsMinimumPerMinInt = freezed,
    Object? breathsAvgPerMinInt = freezed,
    Object? breathsMaximumPerMinInt = freezed,
    Object? snoringEventsCountInt = freezed,
    Object? snoringDurationTotalSecondsInt = freezed,
    Object? saturationAvgPercentageInt = freezed,
    Object? saturationMinimumPercentageInt = freezed,
    Object? saturationMaximumPercentageInt = freezed,
  }) {
    return _then(
      _value.copyWith(
            breathsMinimumPerMinInt: freezed == breathsMinimumPerMinInt
                ? _value.breathsMinimumPerMinInt
                : breathsMinimumPerMinInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            breathsAvgPerMinInt: freezed == breathsAvgPerMinInt
                ? _value.breathsAvgPerMinInt
                : breathsAvgPerMinInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            breathsMaximumPerMinInt: freezed == breathsMaximumPerMinInt
                ? _value.breathsMaximumPerMinInt
                : breathsMaximumPerMinInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            snoringEventsCountInt: freezed == snoringEventsCountInt
                ? _value.snoringEventsCountInt
                : snoringEventsCountInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            snoringDurationTotalSecondsInt:
                freezed == snoringDurationTotalSecondsInt
                ? _value.snoringDurationTotalSecondsInt
                : snoringDurationTotalSecondsInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            saturationAvgPercentageInt: freezed == saturationAvgPercentageInt
                ? _value.saturationAvgPercentageInt
                : saturationAvgPercentageInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            saturationMinimumPercentageInt:
                freezed == saturationMinimumPercentageInt
                ? _value.saturationMinimumPercentageInt
                : saturationMinimumPercentageInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            saturationMaximumPercentageInt:
                freezed == saturationMaximumPercentageInt
                ? _value.saturationMaximumPercentageInt
                : saturationMaximumPercentageInt // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BreathingImplCopyWith<$Res>
    implements $BreathingCopyWith<$Res> {
  factory _$$BreathingImplCopyWith(
    _$BreathingImpl value,
    $Res Function(_$BreathingImpl) then,
  ) = __$$BreathingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'breaths_minimum_per_min_int') int? breathsMinimumPerMinInt,
    @JsonKey(name: 'breaths_avg_per_min_int') int? breathsAvgPerMinInt,
    @JsonKey(name: 'breaths_maximum_per_min_int') int? breathsMaximumPerMinInt,
    @JsonKey(name: 'snoring_events_count_int') int? snoringEventsCountInt,
    @JsonKey(name: 'snoring_duration_total_seconds_int')
    int? snoringDurationTotalSecondsInt,
    @JsonKey(name: 'saturation_avg_percentage_int')
    int? saturationAvgPercentageInt,
    @JsonKey(name: 'saturation_minimum_percentage_int')
    int? saturationMinimumPercentageInt,
    @JsonKey(name: 'saturation_maximum_percentage_int')
    int? saturationMaximumPercentageInt,
  });
}

/// @nodoc
class __$$BreathingImplCopyWithImpl<$Res>
    extends _$BreathingCopyWithImpl<$Res, _$BreathingImpl>
    implements _$$BreathingImplCopyWith<$Res> {
  __$$BreathingImplCopyWithImpl(
    _$BreathingImpl _value,
    $Res Function(_$BreathingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Breathing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breathsMinimumPerMinInt = freezed,
    Object? breathsAvgPerMinInt = freezed,
    Object? breathsMaximumPerMinInt = freezed,
    Object? snoringEventsCountInt = freezed,
    Object? snoringDurationTotalSecondsInt = freezed,
    Object? saturationAvgPercentageInt = freezed,
    Object? saturationMinimumPercentageInt = freezed,
    Object? saturationMaximumPercentageInt = freezed,
  }) {
    return _then(
      _$BreathingImpl(
        breathsMinimumPerMinInt: freezed == breathsMinimumPerMinInt
            ? _value.breathsMinimumPerMinInt
            : breathsMinimumPerMinInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        breathsAvgPerMinInt: freezed == breathsAvgPerMinInt
            ? _value.breathsAvgPerMinInt
            : breathsAvgPerMinInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        breathsMaximumPerMinInt: freezed == breathsMaximumPerMinInt
            ? _value.breathsMaximumPerMinInt
            : breathsMaximumPerMinInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        snoringEventsCountInt: freezed == snoringEventsCountInt
            ? _value.snoringEventsCountInt
            : snoringEventsCountInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        snoringDurationTotalSecondsInt:
            freezed == snoringDurationTotalSecondsInt
            ? _value.snoringDurationTotalSecondsInt
            : snoringDurationTotalSecondsInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        saturationAvgPercentageInt: freezed == saturationAvgPercentageInt
            ? _value.saturationAvgPercentageInt
            : saturationAvgPercentageInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        saturationMinimumPercentageInt:
            freezed == saturationMinimumPercentageInt
            ? _value.saturationMinimumPercentageInt
            : saturationMinimumPercentageInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        saturationMaximumPercentageInt:
            freezed == saturationMaximumPercentageInt
            ? _value.saturationMaximumPercentageInt
            : saturationMaximumPercentageInt // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BreathingImpl implements _Breathing {
  _$BreathingImpl({
    @JsonKey(name: 'breaths_minimum_per_min_int') this.breathsMinimumPerMinInt,
    @JsonKey(name: 'breaths_avg_per_min_int') this.breathsAvgPerMinInt,
    @JsonKey(name: 'breaths_maximum_per_min_int') this.breathsMaximumPerMinInt,
    @JsonKey(name: 'snoring_events_count_int') this.snoringEventsCountInt,
    @JsonKey(name: 'snoring_duration_total_seconds_int')
    this.snoringDurationTotalSecondsInt,
    @JsonKey(name: 'saturation_avg_percentage_int')
    this.saturationAvgPercentageInt,
    @JsonKey(name: 'saturation_minimum_percentage_int')
    this.saturationMinimumPercentageInt,
    @JsonKey(name: 'saturation_maximum_percentage_int')
    this.saturationMaximumPercentageInt,
  });

  factory _$BreathingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreathingImplFromJson(json);

  @override
  @JsonKey(name: 'breaths_minimum_per_min_int')
  final int? breathsMinimumPerMinInt;
  @override
  @JsonKey(name: 'breaths_avg_per_min_int')
  final int? breathsAvgPerMinInt;
  @override
  @JsonKey(name: 'breaths_maximum_per_min_int')
  final int? breathsMaximumPerMinInt;
  @override
  @JsonKey(name: 'snoring_events_count_int')
  final int? snoringEventsCountInt;
  @override
  @JsonKey(name: 'snoring_duration_total_seconds_int')
  final int? snoringDurationTotalSecondsInt;
  @override
  @JsonKey(name: 'saturation_avg_percentage_int')
  final int? saturationAvgPercentageInt;
  @override
  @JsonKey(name: 'saturation_minimum_percentage_int')
  final int? saturationMinimumPercentageInt;
  @override
  @JsonKey(name: 'saturation_maximum_percentage_int')
  final int? saturationMaximumPercentageInt;

  @override
  String toString() {
    return 'Breathing(breathsMinimumPerMinInt: $breathsMinimumPerMinInt, breathsAvgPerMinInt: $breathsAvgPerMinInt, breathsMaximumPerMinInt: $breathsMaximumPerMinInt, snoringEventsCountInt: $snoringEventsCountInt, snoringDurationTotalSecondsInt: $snoringDurationTotalSecondsInt, saturationAvgPercentageInt: $saturationAvgPercentageInt, saturationMinimumPercentageInt: $saturationMinimumPercentageInt, saturationMaximumPercentageInt: $saturationMaximumPercentageInt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreathingImpl &&
            (identical(
                  other.breathsMinimumPerMinInt,
                  breathsMinimumPerMinInt,
                ) ||
                other.breathsMinimumPerMinInt == breathsMinimumPerMinInt) &&
            (identical(other.breathsAvgPerMinInt, breathsAvgPerMinInt) ||
                other.breathsAvgPerMinInt == breathsAvgPerMinInt) &&
            (identical(
                  other.breathsMaximumPerMinInt,
                  breathsMaximumPerMinInt,
                ) ||
                other.breathsMaximumPerMinInt == breathsMaximumPerMinInt) &&
            (identical(other.snoringEventsCountInt, snoringEventsCountInt) ||
                other.snoringEventsCountInt == snoringEventsCountInt) &&
            (identical(
                  other.snoringDurationTotalSecondsInt,
                  snoringDurationTotalSecondsInt,
                ) ||
                other.snoringDurationTotalSecondsInt ==
                    snoringDurationTotalSecondsInt) &&
            (identical(
                  other.saturationAvgPercentageInt,
                  saturationAvgPercentageInt,
                ) ||
                other.saturationAvgPercentageInt ==
                    saturationAvgPercentageInt) &&
            (identical(
                  other.saturationMinimumPercentageInt,
                  saturationMinimumPercentageInt,
                ) ||
                other.saturationMinimumPercentageInt ==
                    saturationMinimumPercentageInt) &&
            (identical(
                  other.saturationMaximumPercentageInt,
                  saturationMaximumPercentageInt,
                ) ||
                other.saturationMaximumPercentageInt ==
                    saturationMaximumPercentageInt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    breathsMinimumPerMinInt,
    breathsAvgPerMinInt,
    breathsMaximumPerMinInt,
    snoringEventsCountInt,
    snoringDurationTotalSecondsInt,
    saturationAvgPercentageInt,
    saturationMinimumPercentageInt,
    saturationMaximumPercentageInt,
  );

  /// Create a copy of Breathing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreathingImplCopyWith<_$BreathingImpl> get copyWith =>
      __$$BreathingImplCopyWithImpl<_$BreathingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreathingImplToJson(this);
  }
}

abstract class _Breathing implements Breathing {
  factory _Breathing({
    @JsonKey(name: 'breaths_minimum_per_min_int')
    final int? breathsMinimumPerMinInt,
    @JsonKey(name: 'breaths_avg_per_min_int') final int? breathsAvgPerMinInt,
    @JsonKey(name: 'breaths_maximum_per_min_int')
    final int? breathsMaximumPerMinInt,
    @JsonKey(name: 'snoring_events_count_int') final int? snoringEventsCountInt,
    @JsonKey(name: 'snoring_duration_total_seconds_int')
    final int? snoringDurationTotalSecondsInt,
    @JsonKey(name: 'saturation_avg_percentage_int')
    final int? saturationAvgPercentageInt,
    @JsonKey(name: 'saturation_minimum_percentage_int')
    final int? saturationMinimumPercentageInt,
    @JsonKey(name: 'saturation_maximum_percentage_int')
    final int? saturationMaximumPercentageInt,
  }) = _$BreathingImpl;

  factory _Breathing.fromJson(Map<String, dynamic> json) =
      _$BreathingImpl.fromJson;

  @override
  @JsonKey(name: 'breaths_minimum_per_min_int')
  int? get breathsMinimumPerMinInt;
  @override
  @JsonKey(name: 'breaths_avg_per_min_int')
  int? get breathsAvgPerMinInt;
  @override
  @JsonKey(name: 'breaths_maximum_per_min_int')
  int? get breathsMaximumPerMinInt;
  @override
  @JsonKey(name: 'snoring_events_count_int')
  int? get snoringEventsCountInt;
  @override
  @JsonKey(name: 'snoring_duration_total_seconds_int')
  int? get snoringDurationTotalSecondsInt;
  @override
  @JsonKey(name: 'saturation_avg_percentage_int')
  int? get saturationAvgPercentageInt;
  @override
  @JsonKey(name: 'saturation_minimum_percentage_int')
  int? get saturationMinimumPercentageInt;
  @override
  @JsonKey(name: 'saturation_maximum_percentage_int')
  int? get saturationMaximumPercentageInt;

  /// Create a copy of Breathing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreathingImplCopyWith<_$BreathingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
