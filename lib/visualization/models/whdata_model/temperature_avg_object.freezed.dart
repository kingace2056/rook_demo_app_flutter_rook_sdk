// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature_avg_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TemperatureAvgObject _$TemperatureAvgObjectFromJson(Map<String, dynamic> json) {
  return _TemperatureAvgObject.fromJson(json);
}

/// @nodoc
mixin _$TemperatureAvgObject {
  @JsonKey(name: 'temperature_celsius_float')
  double? get temperatureCelsiusFloat => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_type_string')
  String? get measurementTypeString => throw _privateConstructorUsedError;

  /// Serializes this TemperatureAvgObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TemperatureAvgObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemperatureAvgObjectCopyWith<TemperatureAvgObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureAvgObjectCopyWith<$Res> {
  factory $TemperatureAvgObjectCopyWith(
    TemperatureAvgObject value,
    $Res Function(TemperatureAvgObject) then,
  ) = _$TemperatureAvgObjectCopyWithImpl<$Res, TemperatureAvgObject>;
  @useResult
  $Res call({
    @JsonKey(name: 'temperature_celsius_float') double? temperatureCelsiusFloat,
    @JsonKey(name: 'measurement_type_string') String? measurementTypeString,
  });
}

/// @nodoc
class _$TemperatureAvgObjectCopyWithImpl<
  $Res,
  $Val extends TemperatureAvgObject
>
    implements $TemperatureAvgObjectCopyWith<$Res> {
  _$TemperatureAvgObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemperatureAvgObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureCelsiusFloat = freezed,
    Object? measurementTypeString = freezed,
  }) {
    return _then(
      _value.copyWith(
            temperatureCelsiusFloat: freezed == temperatureCelsiusFloat
                ? _value.temperatureCelsiusFloat
                : temperatureCelsiusFloat // ignore: cast_nullable_to_non_nullable
                      as double?,
            measurementTypeString: freezed == measurementTypeString
                ? _value.measurementTypeString
                : measurementTypeString // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TemperatureAvgObjectImplCopyWith<$Res>
    implements $TemperatureAvgObjectCopyWith<$Res> {
  factory _$$TemperatureAvgObjectImplCopyWith(
    _$TemperatureAvgObjectImpl value,
    $Res Function(_$TemperatureAvgObjectImpl) then,
  ) = __$$TemperatureAvgObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'temperature_celsius_float') double? temperatureCelsiusFloat,
    @JsonKey(name: 'measurement_type_string') String? measurementTypeString,
  });
}

/// @nodoc
class __$$TemperatureAvgObjectImplCopyWithImpl<$Res>
    extends _$TemperatureAvgObjectCopyWithImpl<$Res, _$TemperatureAvgObjectImpl>
    implements _$$TemperatureAvgObjectImplCopyWith<$Res> {
  __$$TemperatureAvgObjectImplCopyWithImpl(
    _$TemperatureAvgObjectImpl _value,
    $Res Function(_$TemperatureAvgObjectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TemperatureAvgObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureCelsiusFloat = freezed,
    Object? measurementTypeString = freezed,
  }) {
    return _then(
      _$TemperatureAvgObjectImpl(
        temperatureCelsiusFloat: freezed == temperatureCelsiusFloat
            ? _value.temperatureCelsiusFloat
            : temperatureCelsiusFloat // ignore: cast_nullable_to_non_nullable
                  as double?,
        measurementTypeString: freezed == measurementTypeString
            ? _value.measurementTypeString
            : measurementTypeString // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TemperatureAvgObjectImpl implements _TemperatureAvgObject {
  _$TemperatureAvgObjectImpl({
    @JsonKey(name: 'temperature_celsius_float') this.temperatureCelsiusFloat,
    @JsonKey(name: 'measurement_type_string') this.measurementTypeString,
  });

  factory _$TemperatureAvgObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureAvgObjectImplFromJson(json);

  @override
  @JsonKey(name: 'temperature_celsius_float')
  final double? temperatureCelsiusFloat;
  @override
  @JsonKey(name: 'measurement_type_string')
  final String? measurementTypeString;

  @override
  String toString() {
    return 'TemperatureAvgObject(temperatureCelsiusFloat: $temperatureCelsiusFloat, measurementTypeString: $measurementTypeString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureAvgObjectImpl &&
            (identical(
                  other.temperatureCelsiusFloat,
                  temperatureCelsiusFloat,
                ) ||
                other.temperatureCelsiusFloat == temperatureCelsiusFloat) &&
            (identical(other.measurementTypeString, measurementTypeString) ||
                other.measurementTypeString == measurementTypeString));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, temperatureCelsiusFloat, measurementTypeString);

  /// Create a copy of TemperatureAvgObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureAvgObjectImplCopyWith<_$TemperatureAvgObjectImpl>
  get copyWith =>
      __$$TemperatureAvgObjectImplCopyWithImpl<_$TemperatureAvgObjectImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureAvgObjectImplToJson(this);
  }
}

abstract class _TemperatureAvgObject implements TemperatureAvgObject {
  factory _TemperatureAvgObject({
    @JsonKey(name: 'temperature_celsius_float')
    final double? temperatureCelsiusFloat,
    @JsonKey(name: 'measurement_type_string')
    final String? measurementTypeString,
  }) = _$TemperatureAvgObjectImpl;

  factory _TemperatureAvgObject.fromJson(Map<String, dynamic> json) =
      _$TemperatureAvgObjectImpl.fromJson;

  @override
  @JsonKey(name: 'temperature_celsius_float')
  double? get temperatureCelsiusFloat;
  @override
  @JsonKey(name: 'measurement_type_string')
  String? get measurementTypeString;

  /// Create a copy of TemperatureAvgObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemperatureAvgObjectImplCopyWith<_$TemperatureAvgObjectImpl>
  get copyWith => throw _privateConstructorUsedError;
}
