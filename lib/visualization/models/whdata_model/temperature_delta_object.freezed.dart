// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature_delta_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TemperatureDeltaObject _$TemperatureDeltaObjectFromJson(
  Map<String, dynamic> json,
) {
  return _TemperatureDeltaObject.fromJson(json);
}

/// @nodoc
mixin _$TemperatureDeltaObject {
  @JsonKey(name: 'temperature_celsius_float')
  double? get temperatureCelsiusFloat => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_type_string')
  String? get measurementTypeString => throw _privateConstructorUsedError;

  /// Serializes this TemperatureDeltaObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TemperatureDeltaObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemperatureDeltaObjectCopyWith<TemperatureDeltaObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureDeltaObjectCopyWith<$Res> {
  factory $TemperatureDeltaObjectCopyWith(
    TemperatureDeltaObject value,
    $Res Function(TemperatureDeltaObject) then,
  ) = _$TemperatureDeltaObjectCopyWithImpl<$Res, TemperatureDeltaObject>;
  @useResult
  $Res call({
    @JsonKey(name: 'temperature_celsius_float') double? temperatureCelsiusFloat,
    @JsonKey(name: 'measurement_type_string') String? measurementTypeString,
  });
}

/// @nodoc
class _$TemperatureDeltaObjectCopyWithImpl<
  $Res,
  $Val extends TemperatureDeltaObject
>
    implements $TemperatureDeltaObjectCopyWith<$Res> {
  _$TemperatureDeltaObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemperatureDeltaObject
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
abstract class _$$TemperatureDeltaObjectImplCopyWith<$Res>
    implements $TemperatureDeltaObjectCopyWith<$Res> {
  factory _$$TemperatureDeltaObjectImplCopyWith(
    _$TemperatureDeltaObjectImpl value,
    $Res Function(_$TemperatureDeltaObjectImpl) then,
  ) = __$$TemperatureDeltaObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'temperature_celsius_float') double? temperatureCelsiusFloat,
    @JsonKey(name: 'measurement_type_string') String? measurementTypeString,
  });
}

/// @nodoc
class __$$TemperatureDeltaObjectImplCopyWithImpl<$Res>
    extends
        _$TemperatureDeltaObjectCopyWithImpl<$Res, _$TemperatureDeltaObjectImpl>
    implements _$$TemperatureDeltaObjectImplCopyWith<$Res> {
  __$$TemperatureDeltaObjectImplCopyWithImpl(
    _$TemperatureDeltaObjectImpl _value,
    $Res Function(_$TemperatureDeltaObjectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TemperatureDeltaObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureCelsiusFloat = freezed,
    Object? measurementTypeString = freezed,
  }) {
    return _then(
      _$TemperatureDeltaObjectImpl(
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
class _$TemperatureDeltaObjectImpl implements _TemperatureDeltaObject {
  _$TemperatureDeltaObjectImpl({
    @JsonKey(name: 'temperature_celsius_float') this.temperatureCelsiusFloat,
    @JsonKey(name: 'measurement_type_string') this.measurementTypeString,
  });

  factory _$TemperatureDeltaObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureDeltaObjectImplFromJson(json);

  @override
  @JsonKey(name: 'temperature_celsius_float')
  final double? temperatureCelsiusFloat;
  @override
  @JsonKey(name: 'measurement_type_string')
  final String? measurementTypeString;

  @override
  String toString() {
    return 'TemperatureDeltaObject(temperatureCelsiusFloat: $temperatureCelsiusFloat, measurementTypeString: $measurementTypeString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureDeltaObjectImpl &&
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

  /// Create a copy of TemperatureDeltaObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureDeltaObjectImplCopyWith<_$TemperatureDeltaObjectImpl>
  get copyWith =>
      __$$TemperatureDeltaObjectImplCopyWithImpl<_$TemperatureDeltaObjectImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureDeltaObjectImplToJson(this);
  }
}

abstract class _TemperatureDeltaObject implements TemperatureDeltaObject {
  factory _TemperatureDeltaObject({
    @JsonKey(name: 'temperature_celsius_float')
    final double? temperatureCelsiusFloat,
    @JsonKey(name: 'measurement_type_string')
    final String? measurementTypeString,
  }) = _$TemperatureDeltaObjectImpl;

  factory _TemperatureDeltaObject.fromJson(Map<String, dynamic> json) =
      _$TemperatureDeltaObjectImpl.fromJson;

  @override
  @JsonKey(name: 'temperature_celsius_float')
  double? get temperatureCelsiusFloat;
  @override
  @JsonKey(name: 'measurement_type_string')
  String? get measurementTypeString;

  /// Create a copy of TemperatureDeltaObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemperatureDeltaObjectImplCopyWith<_$TemperatureDeltaObjectImpl>
  get copyWith => throw _privateConstructorUsedError;
}
