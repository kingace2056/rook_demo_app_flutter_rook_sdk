// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BodyMetrics _$BodyMetricsFromJson(Map<String, dynamic> json) {
  return _BodyMetrics.fromJson(json);
}

/// @nodoc
mixin _$BodyMetrics {
  @JsonKey(name: 'waist_circumference_cm_int')
  int? get waistCircumferenceCmInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'hip_circumference_cm_int')
  int? get hipCircumferenceCmInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'chest_circumference_cm_int')
  int? get chestCircumferenceCmInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'bone_composition_percentage_int')
  int? get boneCompositionPercentageInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'muscle_composition_percentage_int')
  int? get muscleCompositionPercentageInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'water_composition_percentage_int')
  int? get waterCompositionPercentageInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight_kg_float')
  double? get weightKgFloat => throw _privateConstructorUsedError;
  @JsonKey(name: 'height_cm_int')
  int? get heightCmInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'bmi_float')
  double? get bmiFloat => throw _privateConstructorUsedError;

  /// Serializes this BodyMetrics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyMetricsCopyWith<BodyMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyMetricsCopyWith<$Res> {
  factory $BodyMetricsCopyWith(
    BodyMetrics value,
    $Res Function(BodyMetrics) then,
  ) = _$BodyMetricsCopyWithImpl<$Res, BodyMetrics>;
  @useResult
  $Res call({
    @JsonKey(name: 'waist_circumference_cm_int') int? waistCircumferenceCmInt,
    @JsonKey(name: 'hip_circumference_cm_int') int? hipCircumferenceCmInt,
    @JsonKey(name: 'chest_circumference_cm_int') int? chestCircumferenceCmInt,
    @JsonKey(name: 'bone_composition_percentage_int')
    int? boneCompositionPercentageInt,
    @JsonKey(name: 'muscle_composition_percentage_int')
    int? muscleCompositionPercentageInt,
    @JsonKey(name: 'water_composition_percentage_int')
    int? waterCompositionPercentageInt,
    @JsonKey(name: 'weight_kg_float') double? weightKgFloat,
    @JsonKey(name: 'height_cm_int') int? heightCmInt,
    @JsonKey(name: 'bmi_float') double? bmiFloat,
  });
}

/// @nodoc
class _$BodyMetricsCopyWithImpl<$Res, $Val extends BodyMetrics>
    implements $BodyMetricsCopyWith<$Res> {
  _$BodyMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waistCircumferenceCmInt = freezed,
    Object? hipCircumferenceCmInt = freezed,
    Object? chestCircumferenceCmInt = freezed,
    Object? boneCompositionPercentageInt = freezed,
    Object? muscleCompositionPercentageInt = freezed,
    Object? waterCompositionPercentageInt = freezed,
    Object? weightKgFloat = freezed,
    Object? heightCmInt = freezed,
    Object? bmiFloat = freezed,
  }) {
    return _then(
      _value.copyWith(
            waistCircumferenceCmInt: freezed == waistCircumferenceCmInt
                ? _value.waistCircumferenceCmInt
                : waistCircumferenceCmInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            hipCircumferenceCmInt: freezed == hipCircumferenceCmInt
                ? _value.hipCircumferenceCmInt
                : hipCircumferenceCmInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            chestCircumferenceCmInt: freezed == chestCircumferenceCmInt
                ? _value.chestCircumferenceCmInt
                : chestCircumferenceCmInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            boneCompositionPercentageInt:
                freezed == boneCompositionPercentageInt
                ? _value.boneCompositionPercentageInt
                : boneCompositionPercentageInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            muscleCompositionPercentageInt:
                freezed == muscleCompositionPercentageInt
                ? _value.muscleCompositionPercentageInt
                : muscleCompositionPercentageInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            waterCompositionPercentageInt:
                freezed == waterCompositionPercentageInt
                ? _value.waterCompositionPercentageInt
                : waterCompositionPercentageInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            weightKgFloat: freezed == weightKgFloat
                ? _value.weightKgFloat
                : weightKgFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
            heightCmInt: freezed == heightCmInt
                ? _value.heightCmInt
                : heightCmInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            bmiFloat: freezed == bmiFloat
                ? _value.bmiFloat
                : bmiFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BodyMetricsImplCopyWith<$Res>
    implements $BodyMetricsCopyWith<$Res> {
  factory _$$BodyMetricsImplCopyWith(
    _$BodyMetricsImpl value,
    $Res Function(_$BodyMetricsImpl) then,
  ) = __$$BodyMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'waist_circumference_cm_int') int? waistCircumferenceCmInt,
    @JsonKey(name: 'hip_circumference_cm_int') int? hipCircumferenceCmInt,
    @JsonKey(name: 'chest_circumference_cm_int') int? chestCircumferenceCmInt,
    @JsonKey(name: 'bone_composition_percentage_int')
    int? boneCompositionPercentageInt,
    @JsonKey(name: 'muscle_composition_percentage_int')
    int? muscleCompositionPercentageInt,
    @JsonKey(name: 'water_composition_percentage_int')
    int? waterCompositionPercentageInt,
    @JsonKey(name: 'weight_kg_float') double? weightKgFloat,
    @JsonKey(name: 'height_cm_int') int? heightCmInt,
    @JsonKey(name: 'bmi_float') double? bmiFloat,
  });
}

/// @nodoc
class __$$BodyMetricsImplCopyWithImpl<$Res>
    extends _$BodyMetricsCopyWithImpl<$Res, _$BodyMetricsImpl>
    implements _$$BodyMetricsImplCopyWith<$Res> {
  __$$BodyMetricsImplCopyWithImpl(
    _$BodyMetricsImpl _value,
    $Res Function(_$BodyMetricsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BodyMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waistCircumferenceCmInt = freezed,
    Object? hipCircumferenceCmInt = freezed,
    Object? chestCircumferenceCmInt = freezed,
    Object? boneCompositionPercentageInt = freezed,
    Object? muscleCompositionPercentageInt = freezed,
    Object? waterCompositionPercentageInt = freezed,
    Object? weightKgFloat = freezed,
    Object? heightCmInt = freezed,
    Object? bmiFloat = freezed,
  }) {
    return _then(
      _$BodyMetricsImpl(
        waistCircumferenceCmInt: freezed == waistCircumferenceCmInt
            ? _value.waistCircumferenceCmInt
            : waistCircumferenceCmInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        hipCircumferenceCmInt: freezed == hipCircumferenceCmInt
            ? _value.hipCircumferenceCmInt
            : hipCircumferenceCmInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        chestCircumferenceCmInt: freezed == chestCircumferenceCmInt
            ? _value.chestCircumferenceCmInt
            : chestCircumferenceCmInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        boneCompositionPercentageInt: freezed == boneCompositionPercentageInt
            ? _value.boneCompositionPercentageInt
            : boneCompositionPercentageInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        muscleCompositionPercentageInt:
            freezed == muscleCompositionPercentageInt
            ? _value.muscleCompositionPercentageInt
            : muscleCompositionPercentageInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        waterCompositionPercentageInt: freezed == waterCompositionPercentageInt
            ? _value.waterCompositionPercentageInt
            : waterCompositionPercentageInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        weightKgFloat: freezed == weightKgFloat
            ? _value.weightKgFloat
            : weightKgFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
        heightCmInt: freezed == heightCmInt
            ? _value.heightCmInt
            : heightCmInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        bmiFloat: freezed == bmiFloat
            ? _value.bmiFloat
            : bmiFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyMetricsImpl implements _BodyMetrics {
  _$BodyMetricsImpl({
    @JsonKey(name: 'waist_circumference_cm_int') this.waistCircumferenceCmInt,
    @JsonKey(name: 'hip_circumference_cm_int') this.hipCircumferenceCmInt,
    @JsonKey(name: 'chest_circumference_cm_int') this.chestCircumferenceCmInt,
    @JsonKey(name: 'bone_composition_percentage_int')
    this.boneCompositionPercentageInt,
    @JsonKey(name: 'muscle_composition_percentage_int')
    this.muscleCompositionPercentageInt,
    @JsonKey(name: 'water_composition_percentage_int')
    this.waterCompositionPercentageInt,
    @JsonKey(name: 'weight_kg_float') this.weightKgFloat,
    @JsonKey(name: 'height_cm_int') this.heightCmInt,
    @JsonKey(name: 'bmi_float') this.bmiFloat,
  });

  factory _$BodyMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyMetricsImplFromJson(json);

  @override
  @JsonKey(name: 'waist_circumference_cm_int')
  final int? waistCircumferenceCmInt;
  @override
  @JsonKey(name: 'hip_circumference_cm_int')
  final int? hipCircumferenceCmInt;
  @override
  @JsonKey(name: 'chest_circumference_cm_int')
  final int? chestCircumferenceCmInt;
  @override
  @JsonKey(name: 'bone_composition_percentage_int')
  final int? boneCompositionPercentageInt;
  @override
  @JsonKey(name: 'muscle_composition_percentage_int')
  final int? muscleCompositionPercentageInt;
  @override
  @JsonKey(name: 'water_composition_percentage_int')
  final int? waterCompositionPercentageInt;
  @override
  @JsonKey(name: 'weight_kg_float')
  final double? weightKgFloat;
  @override
  @JsonKey(name: 'height_cm_int')
  final int? heightCmInt;
  @override
  @JsonKey(name: 'bmi_float')
  final double? bmiFloat;

  @override
  String toString() {
    return 'BodyMetrics(waistCircumferenceCmInt: $waistCircumferenceCmInt, hipCircumferenceCmInt: $hipCircumferenceCmInt, chestCircumferenceCmInt: $chestCircumferenceCmInt, boneCompositionPercentageInt: $boneCompositionPercentageInt, muscleCompositionPercentageInt: $muscleCompositionPercentageInt, waterCompositionPercentageInt: $waterCompositionPercentageInt, weightKgFloat: $weightKgFloat, heightCmInt: $heightCmInt, bmiFloat: $bmiFloat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyMetricsImpl &&
            (identical(
                  other.waistCircumferenceCmInt,
                  waistCircumferenceCmInt,
                ) ||
                other.waistCircumferenceCmInt == waistCircumferenceCmInt) &&
            (identical(other.hipCircumferenceCmInt, hipCircumferenceCmInt) ||
                other.hipCircumferenceCmInt == hipCircumferenceCmInt) &&
            (identical(
                  other.chestCircumferenceCmInt,
                  chestCircumferenceCmInt,
                ) ||
                other.chestCircumferenceCmInt == chestCircumferenceCmInt) &&
            (identical(
                  other.boneCompositionPercentageInt,
                  boneCompositionPercentageInt,
                ) ||
                other.boneCompositionPercentageInt ==
                    boneCompositionPercentageInt) &&
            (identical(
                  other.muscleCompositionPercentageInt,
                  muscleCompositionPercentageInt,
                ) ||
                other.muscleCompositionPercentageInt ==
                    muscleCompositionPercentageInt) &&
            (identical(
                  other.waterCompositionPercentageInt,
                  waterCompositionPercentageInt,
                ) ||
                other.waterCompositionPercentageInt ==
                    waterCompositionPercentageInt) &&
            (identical(other.weightKgFloat, weightKgFloat) ||
                other.weightKgFloat == weightKgFloat) &&
            (identical(other.heightCmInt, heightCmInt) ||
                other.heightCmInt == heightCmInt) &&
            (identical(other.bmiFloat, bmiFloat) ||
                other.bmiFloat == bmiFloat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    waistCircumferenceCmInt,
    hipCircumferenceCmInt,
    chestCircumferenceCmInt,
    boneCompositionPercentageInt,
    muscleCompositionPercentageInt,
    waterCompositionPercentageInt,
    weightKgFloat,
    heightCmInt,
    bmiFloat,
  );

  /// Create a copy of BodyMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyMetricsImplCopyWith<_$BodyMetricsImpl> get copyWith =>
      __$$BodyMetricsImplCopyWithImpl<_$BodyMetricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyMetricsImplToJson(this);
  }
}

abstract class _BodyMetrics implements BodyMetrics {
  factory _BodyMetrics({
    @JsonKey(name: 'waist_circumference_cm_int')
    final int? waistCircumferenceCmInt,
    @JsonKey(name: 'hip_circumference_cm_int') final int? hipCircumferenceCmInt,
    @JsonKey(name: 'chest_circumference_cm_int')
    final int? chestCircumferenceCmInt,
    @JsonKey(name: 'bone_composition_percentage_int')
    final int? boneCompositionPercentageInt,
    @JsonKey(name: 'muscle_composition_percentage_int')
    final int? muscleCompositionPercentageInt,
    @JsonKey(name: 'water_composition_percentage_int')
    final int? waterCompositionPercentageInt,
    @JsonKey(name: 'weight_kg_float') final double? weightKgFloat,
    @JsonKey(name: 'height_cm_int') final int? heightCmInt,
    @JsonKey(name: 'bmi_float') final double? bmiFloat,
  }) = _$BodyMetricsImpl;

  factory _BodyMetrics.fromJson(Map<String, dynamic> json) =
      _$BodyMetricsImpl.fromJson;

  @override
  @JsonKey(name: 'waist_circumference_cm_int')
  int? get waistCircumferenceCmInt;
  @override
  @JsonKey(name: 'hip_circumference_cm_int')
  int? get hipCircumferenceCmInt;
  @override
  @JsonKey(name: 'chest_circumference_cm_int')
  int? get chestCircumferenceCmInt;
  @override
  @JsonKey(name: 'bone_composition_percentage_int')
  int? get boneCompositionPercentageInt;
  @override
  @JsonKey(name: 'muscle_composition_percentage_int')
  int? get muscleCompositionPercentageInt;
  @override
  @JsonKey(name: 'water_composition_percentage_int')
  int? get waterCompositionPercentageInt;
  @override
  @JsonKey(name: 'weight_kg_float')
  double? get weightKgFloat;
  @override
  @JsonKey(name: 'height_cm_int')
  int? get heightCmInt;
  @override
  @JsonKey(name: 'bmi_float')
  double? get bmiFloat;

  /// Create a copy of BodyMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyMetricsImplCopyWith<_$BodyMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
