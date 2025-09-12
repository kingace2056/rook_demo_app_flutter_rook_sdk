// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature_minimum_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TemperatureMinimumObject _$TemperatureMinimumObjectFromJson(
    Map<String, dynamic> json) {
  return _TemperatureMinimumObject.fromJson(json);
}

/// @nodoc
mixin _$TemperatureMinimumObject {
  @JsonKey(name: 'temperature_celsius_float')
  double? get temperatureCelsiusFloat => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_type_string')
  String? get measurementTypeString => throw _privateConstructorUsedError;

  /// Serializes this TemperatureMinimumObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TemperatureMinimumObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemperatureMinimumObjectCopyWith<TemperatureMinimumObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureMinimumObjectCopyWith<$Res> {
  factory $TemperatureMinimumObjectCopyWith(TemperatureMinimumObject value,
          $Res Function(TemperatureMinimumObject) then) =
      _$TemperatureMinimumObjectCopyWithImpl<$Res, TemperatureMinimumObject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_celsius_float')
      double? temperatureCelsiusFloat,
      @JsonKey(name: 'measurement_type_string') String? measurementTypeString});
}

/// @nodoc
class _$TemperatureMinimumObjectCopyWithImpl<$Res,
        $Val extends TemperatureMinimumObject>
    implements $TemperatureMinimumObjectCopyWith<$Res> {
  _$TemperatureMinimumObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemperatureMinimumObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureCelsiusFloat = freezed,
    Object? measurementTypeString = freezed,
  }) {
    return _then(_value.copyWith(
      temperatureCelsiusFloat: freezed == temperatureCelsiusFloat
          ? _value.temperatureCelsiusFloat
          : temperatureCelsiusFloat // ignore: cast_nullable_to_non_nullable
              as double?,
      measurementTypeString: freezed == measurementTypeString
          ? _value.measurementTypeString
          : measurementTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemperatureMinimumObjectImplCopyWith<$Res>
    implements $TemperatureMinimumObjectCopyWith<$Res> {
  factory _$$TemperatureMinimumObjectImplCopyWith(
          _$TemperatureMinimumObjectImpl value,
          $Res Function(_$TemperatureMinimumObjectImpl) then) =
      __$$TemperatureMinimumObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_celsius_float')
      double? temperatureCelsiusFloat,
      @JsonKey(name: 'measurement_type_string') String? measurementTypeString});
}

/// @nodoc
class __$$TemperatureMinimumObjectImplCopyWithImpl<$Res>
    extends _$TemperatureMinimumObjectCopyWithImpl<$Res,
        _$TemperatureMinimumObjectImpl>
    implements _$$TemperatureMinimumObjectImplCopyWith<$Res> {
  __$$TemperatureMinimumObjectImplCopyWithImpl(
      _$TemperatureMinimumObjectImpl _value,
      $Res Function(_$TemperatureMinimumObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of TemperatureMinimumObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureCelsiusFloat = freezed,
    Object? measurementTypeString = freezed,
  }) {
    return _then(_$TemperatureMinimumObjectImpl(
      temperatureCelsiusFloat: freezed == temperatureCelsiusFloat
          ? _value.temperatureCelsiusFloat
          : temperatureCelsiusFloat // ignore: cast_nullable_to_non_nullable
              as double?,
      measurementTypeString: freezed == measurementTypeString
          ? _value.measurementTypeString
          : measurementTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemperatureMinimumObjectImpl implements _TemperatureMinimumObject {
  _$TemperatureMinimumObjectImpl(
      {@JsonKey(name: 'temperature_celsius_float') this.temperatureCelsiusFloat,
      @JsonKey(name: 'measurement_type_string') this.measurementTypeString});

  factory _$TemperatureMinimumObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureMinimumObjectImplFromJson(json);

  @override
  @JsonKey(name: 'temperature_celsius_float')
  final double? temperatureCelsiusFloat;
  @override
  @JsonKey(name: 'measurement_type_string')
  final String? measurementTypeString;

  @override
  String toString() {
    return 'TemperatureMinimumObject(temperatureCelsiusFloat: $temperatureCelsiusFloat, measurementTypeString: $measurementTypeString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureMinimumObjectImpl &&
            (identical(
                    other.temperatureCelsiusFloat, temperatureCelsiusFloat) ||
                other.temperatureCelsiusFloat == temperatureCelsiusFloat) &&
            (identical(other.measurementTypeString, measurementTypeString) ||
                other.measurementTypeString == measurementTypeString));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, temperatureCelsiusFloat, measurementTypeString);

  /// Create a copy of TemperatureMinimumObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureMinimumObjectImplCopyWith<_$TemperatureMinimumObjectImpl>
      get copyWith => __$$TemperatureMinimumObjectImplCopyWithImpl<
          _$TemperatureMinimumObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureMinimumObjectImplToJson(
      this,
    );
  }
}

abstract class _TemperatureMinimumObject implements TemperatureMinimumObject {
  factory _TemperatureMinimumObject(
      {@JsonKey(name: 'temperature_celsius_float')
      final double? temperatureCelsiusFloat,
      @JsonKey(name: 'measurement_type_string')
      final String? measurementTypeString}) = _$TemperatureMinimumObjectImpl;

  factory _TemperatureMinimumObject.fromJson(Map<String, dynamic> json) =
      _$TemperatureMinimumObjectImpl.fromJson;

  @override
  @JsonKey(name: 'temperature_celsius_float')
  double? get temperatureCelsiusFloat;
  @override
  @JsonKey(name: 'measurement_type_string')
  String? get measurementTypeString;

  /// Create a copy of TemperatureMinimumObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemperatureMinimumObjectImplCopyWith<_$TemperatureMinimumObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
