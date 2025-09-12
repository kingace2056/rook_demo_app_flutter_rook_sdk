// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_pressure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BloodPressure _$BloodPressureFromJson(Map<String, dynamic> json) {
  return _BloodPressure.fromJson(json);
}

/// @nodoc
mixin _$BloodPressure {
  @JsonKey(name: 'blood_pressure_avg_object')
  BloodPressureAvgObject? get bloodPressureAvgObject =>
      throw _privateConstructorUsedError;

  /// Serializes this BloodPressure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BloodPressure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BloodPressureCopyWith<BloodPressure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodPressureCopyWith<$Res> {
  factory $BloodPressureCopyWith(
          BloodPressure value, $Res Function(BloodPressure) then) =
      _$BloodPressureCopyWithImpl<$Res, BloodPressure>;
  @useResult
  $Res call(
      {@JsonKey(name: 'blood_pressure_avg_object')
      BloodPressureAvgObject? bloodPressureAvgObject});

  $BloodPressureAvgObjectCopyWith<$Res>? get bloodPressureAvgObject;
}

/// @nodoc
class _$BloodPressureCopyWithImpl<$Res, $Val extends BloodPressure>
    implements $BloodPressureCopyWith<$Res> {
  _$BloodPressureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BloodPressure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodPressureAvgObject = freezed,
  }) {
    return _then(_value.copyWith(
      bloodPressureAvgObject: freezed == bloodPressureAvgObject
          ? _value.bloodPressureAvgObject
          : bloodPressureAvgObject // ignore: cast_nullable_to_non_nullable
              as BloodPressureAvgObject?,
    ) as $Val);
  }

  /// Create a copy of BloodPressure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BloodPressureAvgObjectCopyWith<$Res>? get bloodPressureAvgObject {
    if (_value.bloodPressureAvgObject == null) {
      return null;
    }

    return $BloodPressureAvgObjectCopyWith<$Res>(_value.bloodPressureAvgObject!,
        (value) {
      return _then(_value.copyWith(bloodPressureAvgObject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BloodPressureImplCopyWith<$Res>
    implements $BloodPressureCopyWith<$Res> {
  factory _$$BloodPressureImplCopyWith(
          _$BloodPressureImpl value, $Res Function(_$BloodPressureImpl) then) =
      __$$BloodPressureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'blood_pressure_avg_object')
      BloodPressureAvgObject? bloodPressureAvgObject});

  @override
  $BloodPressureAvgObjectCopyWith<$Res>? get bloodPressureAvgObject;
}

/// @nodoc
class __$$BloodPressureImplCopyWithImpl<$Res>
    extends _$BloodPressureCopyWithImpl<$Res, _$BloodPressureImpl>
    implements _$$BloodPressureImplCopyWith<$Res> {
  __$$BloodPressureImplCopyWithImpl(
      _$BloodPressureImpl _value, $Res Function(_$BloodPressureImpl) _then)
      : super(_value, _then);

  /// Create a copy of BloodPressure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodPressureAvgObject = freezed,
  }) {
    return _then(_$BloodPressureImpl(
      bloodPressureAvgObject: freezed == bloodPressureAvgObject
          ? _value.bloodPressureAvgObject
          : bloodPressureAvgObject // ignore: cast_nullable_to_non_nullable
              as BloodPressureAvgObject?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BloodPressureImpl implements _BloodPressure {
  _$BloodPressureImpl(
      {@JsonKey(name: 'blood_pressure_avg_object')
      this.bloodPressureAvgObject});

  factory _$BloodPressureImpl.fromJson(Map<String, dynamic> json) =>
      _$$BloodPressureImplFromJson(json);

  @override
  @JsonKey(name: 'blood_pressure_avg_object')
  final BloodPressureAvgObject? bloodPressureAvgObject;

  @override
  String toString() {
    return 'BloodPressure(bloodPressureAvgObject: $bloodPressureAvgObject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BloodPressureImpl &&
            (identical(other.bloodPressureAvgObject, bloodPressureAvgObject) ||
                other.bloodPressureAvgObject == bloodPressureAvgObject));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bloodPressureAvgObject);

  /// Create a copy of BloodPressure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BloodPressureImplCopyWith<_$BloodPressureImpl> get copyWith =>
      __$$BloodPressureImplCopyWithImpl<_$BloodPressureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BloodPressureImplToJson(
      this,
    );
  }
}

abstract class _BloodPressure implements BloodPressure {
  factory _BloodPressure(
          {@JsonKey(name: 'blood_pressure_avg_object')
          final BloodPressureAvgObject? bloodPressureAvgObject}) =
      _$BloodPressureImpl;

  factory _BloodPressure.fromJson(Map<String, dynamic> json) =
      _$BloodPressureImpl.fromJson;

  @override
  @JsonKey(name: 'blood_pressure_avg_object')
  BloodPressureAvgObject? get bloodPressureAvgObject;

  /// Create a copy of BloodPressure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BloodPressureImplCopyWith<_$BloodPressureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
