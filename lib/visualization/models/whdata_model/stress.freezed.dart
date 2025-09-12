// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Stress _$StressFromJson(Map<String, dynamic> json) {
  return _Stress.fromJson(json);
}

/// @nodoc
mixin _$Stress {
  @JsonKey(name: 'stress_at_rest_duration_seconds_int')
  int? get stressAtRestDurationSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'stress_duration_seconds_int')
  int? get stressDurationSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'low_stress_duration_seconds_int')
  int? get lowStressDurationSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'medium_stress_duration_seconds_int')
  int? get mediumStressDurationSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'high_stress_duration_seconds_int')
  int? get highStressDurationSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'stress_avg_level_int')
  int? get stressAvgLevelInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'stress_maximum_level_int')
  int? get stressMaximumLevelInt => throw _privateConstructorUsedError;

  /// Serializes this Stress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Stress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StressCopyWith<Stress> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StressCopyWith<$Res> {
  factory $StressCopyWith(Stress value, $Res Function(Stress) then) =
      _$StressCopyWithImpl<$Res, Stress>;
  @useResult
  $Res call(
      {@JsonKey(name: 'stress_at_rest_duration_seconds_int')
      int? stressAtRestDurationSecondsInt,
      @JsonKey(name: 'stress_duration_seconds_int')
      int? stressDurationSecondsInt,
      @JsonKey(name: 'low_stress_duration_seconds_int')
      int? lowStressDurationSecondsInt,
      @JsonKey(name: 'medium_stress_duration_seconds_int')
      int? mediumStressDurationSecondsInt,
      @JsonKey(name: 'high_stress_duration_seconds_int')
      int? highStressDurationSecondsInt,
      @JsonKey(name: 'stress_avg_level_int') int? stressAvgLevelInt,
      @JsonKey(name: 'stress_maximum_level_int') int? stressMaximumLevelInt});
}

/// @nodoc
class _$StressCopyWithImpl<$Res, $Val extends Stress>
    implements $StressCopyWith<$Res> {
  _$StressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Stress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stressAtRestDurationSecondsInt = freezed,
    Object? stressDurationSecondsInt = freezed,
    Object? lowStressDurationSecondsInt = freezed,
    Object? mediumStressDurationSecondsInt = freezed,
    Object? highStressDurationSecondsInt = freezed,
    Object? stressAvgLevelInt = freezed,
    Object? stressMaximumLevelInt = freezed,
  }) {
    return _then(_value.copyWith(
      stressAtRestDurationSecondsInt: freezed == stressAtRestDurationSecondsInt
          ? _value.stressAtRestDurationSecondsInt
          : stressAtRestDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      stressDurationSecondsInt: freezed == stressDurationSecondsInt
          ? _value.stressDurationSecondsInt
          : stressDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      lowStressDurationSecondsInt: freezed == lowStressDurationSecondsInt
          ? _value.lowStressDurationSecondsInt
          : lowStressDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      mediumStressDurationSecondsInt: freezed == mediumStressDurationSecondsInt
          ? _value.mediumStressDurationSecondsInt
          : mediumStressDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      highStressDurationSecondsInt: freezed == highStressDurationSecondsInt
          ? _value.highStressDurationSecondsInt
          : highStressDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      stressAvgLevelInt: freezed == stressAvgLevelInt
          ? _value.stressAvgLevelInt
          : stressAvgLevelInt // ignore: cast_nullable_to_non_nullable
              as int?,
      stressMaximumLevelInt: freezed == stressMaximumLevelInt
          ? _value.stressMaximumLevelInt
          : stressMaximumLevelInt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StressImplCopyWith<$Res> implements $StressCopyWith<$Res> {
  factory _$$StressImplCopyWith(
          _$StressImpl value, $Res Function(_$StressImpl) then) =
      __$$StressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'stress_at_rest_duration_seconds_int')
      int? stressAtRestDurationSecondsInt,
      @JsonKey(name: 'stress_duration_seconds_int')
      int? stressDurationSecondsInt,
      @JsonKey(name: 'low_stress_duration_seconds_int')
      int? lowStressDurationSecondsInt,
      @JsonKey(name: 'medium_stress_duration_seconds_int')
      int? mediumStressDurationSecondsInt,
      @JsonKey(name: 'high_stress_duration_seconds_int')
      int? highStressDurationSecondsInt,
      @JsonKey(name: 'stress_avg_level_int') int? stressAvgLevelInt,
      @JsonKey(name: 'stress_maximum_level_int') int? stressMaximumLevelInt});
}

/// @nodoc
class __$$StressImplCopyWithImpl<$Res>
    extends _$StressCopyWithImpl<$Res, _$StressImpl>
    implements _$$StressImplCopyWith<$Res> {
  __$$StressImplCopyWithImpl(
      _$StressImpl _value, $Res Function(_$StressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Stress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stressAtRestDurationSecondsInt = freezed,
    Object? stressDurationSecondsInt = freezed,
    Object? lowStressDurationSecondsInt = freezed,
    Object? mediumStressDurationSecondsInt = freezed,
    Object? highStressDurationSecondsInt = freezed,
    Object? stressAvgLevelInt = freezed,
    Object? stressMaximumLevelInt = freezed,
  }) {
    return _then(_$StressImpl(
      stressAtRestDurationSecondsInt: freezed == stressAtRestDurationSecondsInt
          ? _value.stressAtRestDurationSecondsInt
          : stressAtRestDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      stressDurationSecondsInt: freezed == stressDurationSecondsInt
          ? _value.stressDurationSecondsInt
          : stressDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      lowStressDurationSecondsInt: freezed == lowStressDurationSecondsInt
          ? _value.lowStressDurationSecondsInt
          : lowStressDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      mediumStressDurationSecondsInt: freezed == mediumStressDurationSecondsInt
          ? _value.mediumStressDurationSecondsInt
          : mediumStressDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      highStressDurationSecondsInt: freezed == highStressDurationSecondsInt
          ? _value.highStressDurationSecondsInt
          : highStressDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      stressAvgLevelInt: freezed == stressAvgLevelInt
          ? _value.stressAvgLevelInt
          : stressAvgLevelInt // ignore: cast_nullable_to_non_nullable
              as int?,
      stressMaximumLevelInt: freezed == stressMaximumLevelInt
          ? _value.stressMaximumLevelInt
          : stressMaximumLevelInt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StressImpl implements _Stress {
  _$StressImpl(
      {@JsonKey(name: 'stress_at_rest_duration_seconds_int')
      this.stressAtRestDurationSecondsInt,
      @JsonKey(name: 'stress_duration_seconds_int')
      this.stressDurationSecondsInt,
      @JsonKey(name: 'low_stress_duration_seconds_int')
      this.lowStressDurationSecondsInt,
      @JsonKey(name: 'medium_stress_duration_seconds_int')
      this.mediumStressDurationSecondsInt,
      @JsonKey(name: 'high_stress_duration_seconds_int')
      this.highStressDurationSecondsInt,
      @JsonKey(name: 'stress_avg_level_int') this.stressAvgLevelInt,
      @JsonKey(name: 'stress_maximum_level_int') this.stressMaximumLevelInt});

  factory _$StressImpl.fromJson(Map<String, dynamic> json) =>
      _$$StressImplFromJson(json);

  @override
  @JsonKey(name: 'stress_at_rest_duration_seconds_int')
  final int? stressAtRestDurationSecondsInt;
  @override
  @JsonKey(name: 'stress_duration_seconds_int')
  final int? stressDurationSecondsInt;
  @override
  @JsonKey(name: 'low_stress_duration_seconds_int')
  final int? lowStressDurationSecondsInt;
  @override
  @JsonKey(name: 'medium_stress_duration_seconds_int')
  final int? mediumStressDurationSecondsInt;
  @override
  @JsonKey(name: 'high_stress_duration_seconds_int')
  final int? highStressDurationSecondsInt;
  @override
  @JsonKey(name: 'stress_avg_level_int')
  final int? stressAvgLevelInt;
  @override
  @JsonKey(name: 'stress_maximum_level_int')
  final int? stressMaximumLevelInt;

  @override
  String toString() {
    return 'Stress(stressAtRestDurationSecondsInt: $stressAtRestDurationSecondsInt, stressDurationSecondsInt: $stressDurationSecondsInt, lowStressDurationSecondsInt: $lowStressDurationSecondsInt, mediumStressDurationSecondsInt: $mediumStressDurationSecondsInt, highStressDurationSecondsInt: $highStressDurationSecondsInt, stressAvgLevelInt: $stressAvgLevelInt, stressMaximumLevelInt: $stressMaximumLevelInt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StressImpl &&
            (identical(other.stressAtRestDurationSecondsInt,
                    stressAtRestDurationSecondsInt) ||
                other.stressAtRestDurationSecondsInt ==
                    stressAtRestDurationSecondsInt) &&
            (identical(
                    other.stressDurationSecondsInt, stressDurationSecondsInt) ||
                other.stressDurationSecondsInt == stressDurationSecondsInt) &&
            (identical(other.lowStressDurationSecondsInt,
                    lowStressDurationSecondsInt) ||
                other.lowStressDurationSecondsInt ==
                    lowStressDurationSecondsInt) &&
            (identical(other.mediumStressDurationSecondsInt,
                    mediumStressDurationSecondsInt) ||
                other.mediumStressDurationSecondsInt ==
                    mediumStressDurationSecondsInt) &&
            (identical(other.highStressDurationSecondsInt,
                    highStressDurationSecondsInt) ||
                other.highStressDurationSecondsInt ==
                    highStressDurationSecondsInt) &&
            (identical(other.stressAvgLevelInt, stressAvgLevelInt) ||
                other.stressAvgLevelInt == stressAvgLevelInt) &&
            (identical(other.stressMaximumLevelInt, stressMaximumLevelInt) ||
                other.stressMaximumLevelInt == stressMaximumLevelInt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      stressAtRestDurationSecondsInt,
      stressDurationSecondsInt,
      lowStressDurationSecondsInt,
      mediumStressDurationSecondsInt,
      highStressDurationSecondsInt,
      stressAvgLevelInt,
      stressMaximumLevelInt);

  /// Create a copy of Stress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StressImplCopyWith<_$StressImpl> get copyWith =>
      __$$StressImplCopyWithImpl<_$StressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StressImplToJson(
      this,
    );
  }
}

abstract class _Stress implements Stress {
  factory _Stress(
      {@JsonKey(name: 'stress_at_rest_duration_seconds_int')
      final int? stressAtRestDurationSecondsInt,
      @JsonKey(name: 'stress_duration_seconds_int')
      final int? stressDurationSecondsInt,
      @JsonKey(name: 'low_stress_duration_seconds_int')
      final int? lowStressDurationSecondsInt,
      @JsonKey(name: 'medium_stress_duration_seconds_int')
      final int? mediumStressDurationSecondsInt,
      @JsonKey(name: 'high_stress_duration_seconds_int')
      final int? highStressDurationSecondsInt,
      @JsonKey(name: 'stress_avg_level_int') final int? stressAvgLevelInt,
      @JsonKey(name: 'stress_maximum_level_int')
      final int? stressMaximumLevelInt}) = _$StressImpl;

  factory _Stress.fromJson(Map<String, dynamic> json) = _$StressImpl.fromJson;

  @override
  @JsonKey(name: 'stress_at_rest_duration_seconds_int')
  int? get stressAtRestDurationSecondsInt;
  @override
  @JsonKey(name: 'stress_duration_seconds_int')
  int? get stressDurationSecondsInt;
  @override
  @JsonKey(name: 'low_stress_duration_seconds_int')
  int? get lowStressDurationSecondsInt;
  @override
  @JsonKey(name: 'medium_stress_duration_seconds_int')
  int? get mediumStressDurationSecondsInt;
  @override
  @JsonKey(name: 'high_stress_duration_seconds_int')
  int? get highStressDurationSecondsInt;
  @override
  @JsonKey(name: 'stress_avg_level_int')
  int? get stressAvgLevelInt;
  @override
  @JsonKey(name: 'stress_maximum_level_int')
  int? get stressMaximumLevelInt;

  /// Create a copy of Stress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StressImplCopyWith<_$StressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
