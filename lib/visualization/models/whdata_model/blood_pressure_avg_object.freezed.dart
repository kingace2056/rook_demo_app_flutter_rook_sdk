// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_pressure_avg_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BloodPressureAvgObject _$BloodPressureAvgObjectFromJson(
    Map<String, dynamic> json) {
  return _BloodPressureAvgObject.fromJson(json);
}

/// @nodoc
mixin _$BloodPressureAvgObject {
  @JsonKey(name: 'systolic_mmHg_int')
  int? get systolicMmHgInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'diastolic_mmHg_int')
  int? get diastolicMmHgInt => throw _privateConstructorUsedError;

  /// Serializes this BloodPressureAvgObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BloodPressureAvgObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BloodPressureAvgObjectCopyWith<BloodPressureAvgObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodPressureAvgObjectCopyWith<$Res> {
  factory $BloodPressureAvgObjectCopyWith(BloodPressureAvgObject value,
          $Res Function(BloodPressureAvgObject) then) =
      _$BloodPressureAvgObjectCopyWithImpl<$Res, BloodPressureAvgObject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'systolic_mmHg_int') int? systolicMmHgInt,
      @JsonKey(name: 'diastolic_mmHg_int') int? diastolicMmHgInt});
}

/// @nodoc
class _$BloodPressureAvgObjectCopyWithImpl<$Res,
        $Val extends BloodPressureAvgObject>
    implements $BloodPressureAvgObjectCopyWith<$Res> {
  _$BloodPressureAvgObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BloodPressureAvgObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systolicMmHgInt = freezed,
    Object? diastolicMmHgInt = freezed,
  }) {
    return _then(_value.copyWith(
      systolicMmHgInt: freezed == systolicMmHgInt
          ? _value.systolicMmHgInt
          : systolicMmHgInt // ignore: cast_nullable_to_non_nullable
              as int?,
      diastolicMmHgInt: freezed == diastolicMmHgInt
          ? _value.diastolicMmHgInt
          : diastolicMmHgInt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BloodPressureAvgObjectImplCopyWith<$Res>
    implements $BloodPressureAvgObjectCopyWith<$Res> {
  factory _$$BloodPressureAvgObjectImplCopyWith(
          _$BloodPressureAvgObjectImpl value,
          $Res Function(_$BloodPressureAvgObjectImpl) then) =
      __$$BloodPressureAvgObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'systolic_mmHg_int') int? systolicMmHgInt,
      @JsonKey(name: 'diastolic_mmHg_int') int? diastolicMmHgInt});
}

/// @nodoc
class __$$BloodPressureAvgObjectImplCopyWithImpl<$Res>
    extends _$BloodPressureAvgObjectCopyWithImpl<$Res,
        _$BloodPressureAvgObjectImpl>
    implements _$$BloodPressureAvgObjectImplCopyWith<$Res> {
  __$$BloodPressureAvgObjectImplCopyWithImpl(
      _$BloodPressureAvgObjectImpl _value,
      $Res Function(_$BloodPressureAvgObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of BloodPressureAvgObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systolicMmHgInt = freezed,
    Object? diastolicMmHgInt = freezed,
  }) {
    return _then(_$BloodPressureAvgObjectImpl(
      systolicMmHgInt: freezed == systolicMmHgInt
          ? _value.systolicMmHgInt
          : systolicMmHgInt // ignore: cast_nullable_to_non_nullable
              as int?,
      diastolicMmHgInt: freezed == diastolicMmHgInt
          ? _value.diastolicMmHgInt
          : diastolicMmHgInt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BloodPressureAvgObjectImpl implements _BloodPressureAvgObject {
  _$BloodPressureAvgObjectImpl(
      {@JsonKey(name: 'systolic_mmHg_int') this.systolicMmHgInt,
      @JsonKey(name: 'diastolic_mmHg_int') this.diastolicMmHgInt});

  factory _$BloodPressureAvgObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$BloodPressureAvgObjectImplFromJson(json);

  @override
  @JsonKey(name: 'systolic_mmHg_int')
  final int? systolicMmHgInt;
  @override
  @JsonKey(name: 'diastolic_mmHg_int')
  final int? diastolicMmHgInt;

  @override
  String toString() {
    return 'BloodPressureAvgObject(systolicMmHgInt: $systolicMmHgInt, diastolicMmHgInt: $diastolicMmHgInt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BloodPressureAvgObjectImpl &&
            (identical(other.systolicMmHgInt, systolicMmHgInt) ||
                other.systolicMmHgInt == systolicMmHgInt) &&
            (identical(other.diastolicMmHgInt, diastolicMmHgInt) ||
                other.diastolicMmHgInt == diastolicMmHgInt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, systolicMmHgInt, diastolicMmHgInt);

  /// Create a copy of BloodPressureAvgObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BloodPressureAvgObjectImplCopyWith<_$BloodPressureAvgObjectImpl>
      get copyWith => __$$BloodPressureAvgObjectImplCopyWithImpl<
          _$BloodPressureAvgObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BloodPressureAvgObjectImplToJson(
      this,
    );
  }
}

abstract class _BloodPressureAvgObject implements BloodPressureAvgObject {
  factory _BloodPressureAvgObject(
          {@JsonKey(name: 'systolic_mmHg_int') final int? systolicMmHgInt,
          @JsonKey(name: 'diastolic_mmHg_int') final int? diastolicMmHgInt}) =
      _$BloodPressureAvgObjectImpl;

  factory _BloodPressureAvgObject.fromJson(Map<String, dynamic> json) =
      _$BloodPressureAvgObjectImpl.fromJson;

  @override
  @JsonKey(name: 'systolic_mmHg_int')
  int? get systolicMmHgInt;
  @override
  @JsonKey(name: 'diastolic_mmHg_int')
  int? get diastolicMmHgInt;

  /// Create a copy of BloodPressureAvgObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BloodPressureAvgObjectImplCopyWith<_$BloodPressureAvgObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
