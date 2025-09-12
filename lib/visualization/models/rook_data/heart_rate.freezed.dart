// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HeartRate _$HeartRateFromJson(Map<String, dynamic> json) {
  return _HeartRate.fromJson(json);
}

/// @nodoc
mixin _$HeartRate {
  @JsonKey(name: 'hr_maximum_bpm_int')
  int? get hrMaximumBpmInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'hr_minimum_bpm_int')
  int? get hrMinimumBpmInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'hr_avg_bpm_int')
  int? get hrAvgBpmInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'hr_resting_bpm_int')
  int? get hrRestingBpmInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'hrv_avg_rmssd_float')
  double? get hrvAvgRmssdFloat => throw _privateConstructorUsedError;
  @JsonKey(name: 'hrv_avg_sdnn_float')
  double? get hrvAvgSdnnFloat => throw _privateConstructorUsedError;

  /// Serializes this HeartRate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeartRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartRateCopyWith<HeartRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartRateCopyWith<$Res> {
  factory $HeartRateCopyWith(HeartRate value, $Res Function(HeartRate) then) =
      _$HeartRateCopyWithImpl<$Res, HeartRate>;
  @useResult
  $Res call({
    @JsonKey(name: 'hr_maximum_bpm_int') int? hrMaximumBpmInt,
    @JsonKey(name: 'hr_minimum_bpm_int') int? hrMinimumBpmInt,
    @JsonKey(name: 'hr_avg_bpm_int') int? hrAvgBpmInt,
    @JsonKey(name: 'hr_resting_bpm_int') int? hrRestingBpmInt,
    @JsonKey(name: 'hrv_avg_rmssd_float') double? hrvAvgRmssdFloat,
    @JsonKey(name: 'hrv_avg_sdnn_float') double? hrvAvgSdnnFloat,
  });
}

/// @nodoc
class _$HeartRateCopyWithImpl<$Res, $Val extends HeartRate>
    implements $HeartRateCopyWith<$Res> {
  _$HeartRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartRate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hrMaximumBpmInt = freezed,
    Object? hrMinimumBpmInt = freezed,
    Object? hrAvgBpmInt = freezed,
    Object? hrRestingBpmInt = freezed,
    Object? hrvAvgRmssdFloat = freezed,
    Object? hrvAvgSdnnFloat = freezed,
  }) {
    return _then(
      _value.copyWith(
            hrMaximumBpmInt: freezed == hrMaximumBpmInt
                ? _value.hrMaximumBpmInt
                : hrMaximumBpmInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            hrMinimumBpmInt: freezed == hrMinimumBpmInt
                ? _value.hrMinimumBpmInt
                : hrMinimumBpmInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            hrAvgBpmInt: freezed == hrAvgBpmInt
                ? _value.hrAvgBpmInt
                : hrAvgBpmInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            hrRestingBpmInt: freezed == hrRestingBpmInt
                ? _value.hrRestingBpmInt
                : hrRestingBpmInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            hrvAvgRmssdFloat: freezed == hrvAvgRmssdFloat
                ? _value.hrvAvgRmssdFloat
                : hrvAvgRmssdFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
            hrvAvgSdnnFloat: freezed == hrvAvgSdnnFloat
                ? _value.hrvAvgSdnnFloat
                : hrvAvgSdnnFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HeartRateImplCopyWith<$Res>
    implements $HeartRateCopyWith<$Res> {
  factory _$$HeartRateImplCopyWith(
    _$HeartRateImpl value,
    $Res Function(_$HeartRateImpl) then,
  ) = __$$HeartRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'hr_maximum_bpm_int') int? hrMaximumBpmInt,
    @JsonKey(name: 'hr_minimum_bpm_int') int? hrMinimumBpmInt,
    @JsonKey(name: 'hr_avg_bpm_int') int? hrAvgBpmInt,
    @JsonKey(name: 'hr_resting_bpm_int') int? hrRestingBpmInt,
    @JsonKey(name: 'hrv_avg_rmssd_float') double? hrvAvgRmssdFloat,
    @JsonKey(name: 'hrv_avg_sdnn_float') double? hrvAvgSdnnFloat,
  });
}

/// @nodoc
class __$$HeartRateImplCopyWithImpl<$Res>
    extends _$HeartRateCopyWithImpl<$Res, _$HeartRateImpl>
    implements _$$HeartRateImplCopyWith<$Res> {
  __$$HeartRateImplCopyWithImpl(
    _$HeartRateImpl _value,
    $Res Function(_$HeartRateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HeartRate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hrMaximumBpmInt = freezed,
    Object? hrMinimumBpmInt = freezed,
    Object? hrAvgBpmInt = freezed,
    Object? hrRestingBpmInt = freezed,
    Object? hrvAvgRmssdFloat = freezed,
    Object? hrvAvgSdnnFloat = freezed,
  }) {
    return _then(
      _$HeartRateImpl(
        hrMaximumBpmInt: freezed == hrMaximumBpmInt
            ? _value.hrMaximumBpmInt
            : hrMaximumBpmInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        hrMinimumBpmInt: freezed == hrMinimumBpmInt
            ? _value.hrMinimumBpmInt
            : hrMinimumBpmInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        hrAvgBpmInt: freezed == hrAvgBpmInt
            ? _value.hrAvgBpmInt
            : hrAvgBpmInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        hrRestingBpmInt: freezed == hrRestingBpmInt
            ? _value.hrRestingBpmInt
            : hrRestingBpmInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        hrvAvgRmssdFloat: freezed == hrvAvgRmssdFloat
            ? _value.hrvAvgRmssdFloat
            : hrvAvgRmssdFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
        hrvAvgSdnnFloat: freezed == hrvAvgSdnnFloat
            ? _value.hrvAvgSdnnFloat
            : hrvAvgSdnnFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartRateImpl implements _HeartRate {
  _$HeartRateImpl({
    @JsonKey(name: 'hr_maximum_bpm_int') this.hrMaximumBpmInt,
    @JsonKey(name: 'hr_minimum_bpm_int') this.hrMinimumBpmInt,
    @JsonKey(name: 'hr_avg_bpm_int') this.hrAvgBpmInt,
    @JsonKey(name: 'hr_resting_bpm_int') this.hrRestingBpmInt,
    @JsonKey(name: 'hrv_avg_rmssd_float') this.hrvAvgRmssdFloat,
    @JsonKey(name: 'hrv_avg_sdnn_float') this.hrvAvgSdnnFloat,
  });

  factory _$HeartRateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartRateImplFromJson(json);

  @override
  @JsonKey(name: 'hr_maximum_bpm_int')
  final int? hrMaximumBpmInt;
  @override
  @JsonKey(name: 'hr_minimum_bpm_int')
  final int? hrMinimumBpmInt;
  @override
  @JsonKey(name: 'hr_avg_bpm_int')
  final int? hrAvgBpmInt;
  @override
  @JsonKey(name: 'hr_resting_bpm_int')
  final int? hrRestingBpmInt;
  @override
  @JsonKey(name: 'hrv_avg_rmssd_float')
  final double? hrvAvgRmssdFloat;
  @override
  @JsonKey(name: 'hrv_avg_sdnn_float')
  final double? hrvAvgSdnnFloat;

  @override
  String toString() {
    return 'HeartRate(hrMaximumBpmInt: $hrMaximumBpmInt, hrMinimumBpmInt: $hrMinimumBpmInt, hrAvgBpmInt: $hrAvgBpmInt, hrRestingBpmInt: $hrRestingBpmInt, hrvAvgRmssdFloat: $hrvAvgRmssdFloat, hrvAvgSdnnFloat: $hrvAvgSdnnFloat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartRateImpl &&
            (identical(other.hrMaximumBpmInt, hrMaximumBpmInt) ||
                other.hrMaximumBpmInt == hrMaximumBpmInt) &&
            (identical(other.hrMinimumBpmInt, hrMinimumBpmInt) ||
                other.hrMinimumBpmInt == hrMinimumBpmInt) &&
            (identical(other.hrAvgBpmInt, hrAvgBpmInt) ||
                other.hrAvgBpmInt == hrAvgBpmInt) &&
            (identical(other.hrRestingBpmInt, hrRestingBpmInt) ||
                other.hrRestingBpmInt == hrRestingBpmInt) &&
            (identical(other.hrvAvgRmssdFloat, hrvAvgRmssdFloat) ||
                other.hrvAvgRmssdFloat == hrvAvgRmssdFloat) &&
            (identical(other.hrvAvgSdnnFloat, hrvAvgSdnnFloat) ||
                other.hrvAvgSdnnFloat == hrvAvgSdnnFloat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    hrMaximumBpmInt,
    hrMinimumBpmInt,
    hrAvgBpmInt,
    hrRestingBpmInt,
    hrvAvgRmssdFloat,
    hrvAvgSdnnFloat,
  );

  /// Create a copy of HeartRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartRateImplCopyWith<_$HeartRateImpl> get copyWith =>
      __$$HeartRateImplCopyWithImpl<_$HeartRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartRateImplToJson(this);
  }
}

abstract class _HeartRate implements HeartRate {
  factory _HeartRate({
    @JsonKey(name: 'hr_maximum_bpm_int') final int? hrMaximumBpmInt,
    @JsonKey(name: 'hr_minimum_bpm_int') final int? hrMinimumBpmInt,
    @JsonKey(name: 'hr_avg_bpm_int') final int? hrAvgBpmInt,
    @JsonKey(name: 'hr_resting_bpm_int') final int? hrRestingBpmInt,
    @JsonKey(name: 'hrv_avg_rmssd_float') final double? hrvAvgRmssdFloat,
    @JsonKey(name: 'hrv_avg_sdnn_float') final double? hrvAvgSdnnFloat,
  }) = _$HeartRateImpl;

  factory _HeartRate.fromJson(Map<String, dynamic> json) =
      _$HeartRateImpl.fromJson;

  @override
  @JsonKey(name: 'hr_maximum_bpm_int')
  int? get hrMaximumBpmInt;
  @override
  @JsonKey(name: 'hr_minimum_bpm_int')
  int? get hrMinimumBpmInt;
  @override
  @JsonKey(name: 'hr_avg_bpm_int')
  int? get hrAvgBpmInt;
  @override
  @JsonKey(name: 'hr_resting_bpm_int')
  int? get hrRestingBpmInt;
  @override
  @JsonKey(name: 'hrv_avg_rmssd_float')
  double? get hrvAvgRmssdFloat;
  @override
  @JsonKey(name: 'hrv_avg_sdnn_float')
  double? get hrvAvgSdnnFloat;

  /// Create a copy of HeartRate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartRateImplCopyWith<_$HeartRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
