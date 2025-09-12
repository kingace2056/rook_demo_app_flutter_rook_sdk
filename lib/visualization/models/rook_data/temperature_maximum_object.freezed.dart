// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature_maximum_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TemperatureMaximumObject _$TemperatureMaximumObjectFromJson(
    Map<String, dynamic> json) {
  return _TemperatureMaximumObject.fromJson(json);
}

/// @nodoc
mixin _$TemperatureMaximumObject {
  @JsonKey(name: 'temperature_celsius_float')
  double? get temperatureCelsiusFloat => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_type_string')
  String? get measurementTypeString => throw _privateConstructorUsedError;

  /// Serializes this TemperatureMaximumObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TemperatureMaximumObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemperatureMaximumObjectCopyWith<TemperatureMaximumObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureMaximumObjectCopyWith<$Res> {
  factory $TemperatureMaximumObjectCopyWith(TemperatureMaximumObject value,
          $Res Function(TemperatureMaximumObject) then) =
      _$TemperatureMaximumObjectCopyWithImpl<$Res, TemperatureMaximumObject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_celsius_float')
      double? temperatureCelsiusFloat,
      @JsonKey(name: 'measurement_type_string') String? measurementTypeString});
}

/// @nodoc
class _$TemperatureMaximumObjectCopyWithImpl<$Res,
        $Val extends TemperatureMaximumObject>
    implements $TemperatureMaximumObjectCopyWith<$Res> {
  _$TemperatureMaximumObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemperatureMaximumObject
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
abstract class _$$TemperatureMaximumObjectImplCopyWith<$Res>
    implements $TemperatureMaximumObjectCopyWith<$Res> {
  factory _$$TemperatureMaximumObjectImplCopyWith(
          _$TemperatureMaximumObjectImpl value,
          $Res Function(_$TemperatureMaximumObjectImpl) then) =
      __$$TemperatureMaximumObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_celsius_float')
      double? temperatureCelsiusFloat,
      @JsonKey(name: 'measurement_type_string') String? measurementTypeString});
}

/// @nodoc
class __$$TemperatureMaximumObjectImplCopyWithImpl<$Res>
    extends _$TemperatureMaximumObjectCopyWithImpl<$Res,
        _$TemperatureMaximumObjectImpl>
    implements _$$TemperatureMaximumObjectImplCopyWith<$Res> {
  __$$TemperatureMaximumObjectImplCopyWithImpl(
      _$TemperatureMaximumObjectImpl _value,
      $Res Function(_$TemperatureMaximumObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of TemperatureMaximumObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureCelsiusFloat = freezed,
    Object? measurementTypeString = freezed,
  }) {
    return _then(_$TemperatureMaximumObjectImpl(
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
class _$TemperatureMaximumObjectImpl implements _TemperatureMaximumObject {
  _$TemperatureMaximumObjectImpl(
      {@JsonKey(name: 'temperature_celsius_float') this.temperatureCelsiusFloat,
      @JsonKey(name: 'measurement_type_string') this.measurementTypeString});

  factory _$TemperatureMaximumObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureMaximumObjectImplFromJson(json);

  @override
  @JsonKey(name: 'temperature_celsius_float')
  final double? temperatureCelsiusFloat;
  @override
  @JsonKey(name: 'measurement_type_string')
  final String? measurementTypeString;

  @override
  String toString() {
    return 'TemperatureMaximumObject(temperatureCelsiusFloat: $temperatureCelsiusFloat, measurementTypeString: $measurementTypeString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureMaximumObjectImpl &&
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

  /// Create a copy of TemperatureMaximumObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureMaximumObjectImplCopyWith<_$TemperatureMaximumObjectImpl>
      get copyWith => __$$TemperatureMaximumObjectImplCopyWithImpl<
          _$TemperatureMaximumObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureMaximumObjectImplToJson(
      this,
    );
  }
}

abstract class _TemperatureMaximumObject implements TemperatureMaximumObject {
  factory _TemperatureMaximumObject(
      {@JsonKey(name: 'temperature_celsius_float')
      final double? temperatureCelsiusFloat,
      @JsonKey(name: 'measurement_type_string')
      final String? measurementTypeString}) = _$TemperatureMaximumObjectImpl;

  factory _TemperatureMaximumObject.fromJson(Map<String, dynamic> json) =
      _$TemperatureMaximumObjectImpl.fromJson;

  @override
  @JsonKey(name: 'temperature_celsius_float')
  double? get temperatureCelsiusFloat;
  @override
  @JsonKey(name: 'measurement_type_string')
  String? get measurementTypeString;

  /// Create a copy of TemperatureMaximumObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemperatureMaximumObjectImplCopyWith<_$TemperatureMaximumObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
