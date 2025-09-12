// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Temperature _$TemperatureFromJson(Map<String, dynamic> json) {
  return _Temperature.fromJson(json);
}

/// @nodoc
mixin _$Temperature {
  @JsonKey(name: 'temperature_avg_object')
  TemperatureAvgObject? get temperatureAvgObject =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_maximum_object')
  TemperatureMaximumObject? get temperatureMaximumObject =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_minimum_object')
  TemperatureMinimumObject? get temperatureMinimumObject =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_delta_object')
  TemperatureDeltaObject? get temperatureDeltaObject =>
      throw _privateConstructorUsedError;

  /// Serializes this Temperature to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemperatureCopyWith<Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureCopyWith<$Res> {
  factory $TemperatureCopyWith(
    Temperature value,
    $Res Function(Temperature) then,
  ) = _$TemperatureCopyWithImpl<$Res, Temperature>;
  @useResult
  $Res call({
    @JsonKey(name: 'temperature_avg_object')
    TemperatureAvgObject? temperatureAvgObject,
    @JsonKey(name: 'temperature_maximum_object')
    TemperatureMaximumObject? temperatureMaximumObject,
    @JsonKey(name: 'temperature_minimum_object')
    TemperatureMinimumObject? temperatureMinimumObject,
    @JsonKey(name: 'temperature_delta_object')
    TemperatureDeltaObject? temperatureDeltaObject,
  });

  $TemperatureAvgObjectCopyWith<$Res>? get temperatureAvgObject;
  $TemperatureMaximumObjectCopyWith<$Res>? get temperatureMaximumObject;
  $TemperatureMinimumObjectCopyWith<$Res>? get temperatureMinimumObject;
  $TemperatureDeltaObjectCopyWith<$Res>? get temperatureDeltaObject;
}

/// @nodoc
class _$TemperatureCopyWithImpl<$Res, $Val extends Temperature>
    implements $TemperatureCopyWith<$Res> {
  _$TemperatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureAvgObject = freezed,
    Object? temperatureMaximumObject = freezed,
    Object? temperatureMinimumObject = freezed,
    Object? temperatureDeltaObject = freezed,
  }) {
    return _then(
      _value.copyWith(
            temperatureAvgObject: freezed == temperatureAvgObject
                ? _value.temperatureAvgObject
                : temperatureAvgObject // ignore: cast_nullable_to_non_nullable
                      as TemperatureAvgObject?,
            temperatureMaximumObject: freezed == temperatureMaximumObject
                ? _value.temperatureMaximumObject
                : temperatureMaximumObject // ignore: cast_nullable_to_non_nullable
                      as TemperatureMaximumObject?,
            temperatureMinimumObject: freezed == temperatureMinimumObject
                ? _value.temperatureMinimumObject
                : temperatureMinimumObject // ignore: cast_nullable_to_non_nullable
                      as TemperatureMinimumObject?,
            temperatureDeltaObject: freezed == temperatureDeltaObject
                ? _value.temperatureDeltaObject
                : temperatureDeltaObject // ignore: cast_nullable_to_non_nullable
                      as TemperatureDeltaObject?,
          )
          as $Val,
    );
  }

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureAvgObjectCopyWith<$Res>? get temperatureAvgObject {
    if (_value.temperatureAvgObject == null) {
      return null;
    }

    return $TemperatureAvgObjectCopyWith<$Res>(_value.temperatureAvgObject!, (
      value,
    ) {
      return _then(_value.copyWith(temperatureAvgObject: value) as $Val);
    });
  }

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureMaximumObjectCopyWith<$Res>? get temperatureMaximumObject {
    if (_value.temperatureMaximumObject == null) {
      return null;
    }

    return $TemperatureMaximumObjectCopyWith<$Res>(
      _value.temperatureMaximumObject!,
      (value) {
        return _then(_value.copyWith(temperatureMaximumObject: value) as $Val);
      },
    );
  }

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureMinimumObjectCopyWith<$Res>? get temperatureMinimumObject {
    if (_value.temperatureMinimumObject == null) {
      return null;
    }

    return $TemperatureMinimumObjectCopyWith<$Res>(
      _value.temperatureMinimumObject!,
      (value) {
        return _then(_value.copyWith(temperatureMinimumObject: value) as $Val);
      },
    );
  }

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureDeltaObjectCopyWith<$Res>? get temperatureDeltaObject {
    if (_value.temperatureDeltaObject == null) {
      return null;
    }

    return $TemperatureDeltaObjectCopyWith<$Res>(
      _value.temperatureDeltaObject!,
      (value) {
        return _then(_value.copyWith(temperatureDeltaObject: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$TemperatureImplCopyWith<$Res>
    implements $TemperatureCopyWith<$Res> {
  factory _$$TemperatureImplCopyWith(
    _$TemperatureImpl value,
    $Res Function(_$TemperatureImpl) then,
  ) = __$$TemperatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'temperature_avg_object')
    TemperatureAvgObject? temperatureAvgObject,
    @JsonKey(name: 'temperature_maximum_object')
    TemperatureMaximumObject? temperatureMaximumObject,
    @JsonKey(name: 'temperature_minimum_object')
    TemperatureMinimumObject? temperatureMinimumObject,
    @JsonKey(name: 'temperature_delta_object')
    TemperatureDeltaObject? temperatureDeltaObject,
  });

  @override
  $TemperatureAvgObjectCopyWith<$Res>? get temperatureAvgObject;
  @override
  $TemperatureMaximumObjectCopyWith<$Res>? get temperatureMaximumObject;
  @override
  $TemperatureMinimumObjectCopyWith<$Res>? get temperatureMinimumObject;
  @override
  $TemperatureDeltaObjectCopyWith<$Res>? get temperatureDeltaObject;
}

/// @nodoc
class __$$TemperatureImplCopyWithImpl<$Res>
    extends _$TemperatureCopyWithImpl<$Res, _$TemperatureImpl>
    implements _$$TemperatureImplCopyWith<$Res> {
  __$$TemperatureImplCopyWithImpl(
    _$TemperatureImpl _value,
    $Res Function(_$TemperatureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureAvgObject = freezed,
    Object? temperatureMaximumObject = freezed,
    Object? temperatureMinimumObject = freezed,
    Object? temperatureDeltaObject = freezed,
  }) {
    return _then(
      _$TemperatureImpl(
        temperatureAvgObject: freezed == temperatureAvgObject
            ? _value.temperatureAvgObject
            : temperatureAvgObject // ignore: cast_nullable_to_non_nullable
                  as TemperatureAvgObject?,
        temperatureMaximumObject: freezed == temperatureMaximumObject
            ? _value.temperatureMaximumObject
            : temperatureMaximumObject // ignore: cast_nullable_to_non_nullable
                  as TemperatureMaximumObject?,
        temperatureMinimumObject: freezed == temperatureMinimumObject
            ? _value.temperatureMinimumObject
            : temperatureMinimumObject // ignore: cast_nullable_to_non_nullable
                  as TemperatureMinimumObject?,
        temperatureDeltaObject: freezed == temperatureDeltaObject
            ? _value.temperatureDeltaObject
            : temperatureDeltaObject // ignore: cast_nullable_to_non_nullable
                  as TemperatureDeltaObject?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TemperatureImpl implements _Temperature {
  _$TemperatureImpl({
    @JsonKey(name: 'temperature_avg_object') this.temperatureAvgObject,
    @JsonKey(name: 'temperature_maximum_object') this.temperatureMaximumObject,
    @JsonKey(name: 'temperature_minimum_object') this.temperatureMinimumObject,
    @JsonKey(name: 'temperature_delta_object') this.temperatureDeltaObject,
  });

  factory _$TemperatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureImplFromJson(json);

  @override
  @JsonKey(name: 'temperature_avg_object')
  final TemperatureAvgObject? temperatureAvgObject;
  @override
  @JsonKey(name: 'temperature_maximum_object')
  final TemperatureMaximumObject? temperatureMaximumObject;
  @override
  @JsonKey(name: 'temperature_minimum_object')
  final TemperatureMinimumObject? temperatureMinimumObject;
  @override
  @JsonKey(name: 'temperature_delta_object')
  final TemperatureDeltaObject? temperatureDeltaObject;

  @override
  String toString() {
    return 'Temperature(temperatureAvgObject: $temperatureAvgObject, temperatureMaximumObject: $temperatureMaximumObject, temperatureMinimumObject: $temperatureMinimumObject, temperatureDeltaObject: $temperatureDeltaObject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureImpl &&
            (identical(other.temperatureAvgObject, temperatureAvgObject) ||
                other.temperatureAvgObject == temperatureAvgObject) &&
            (identical(
                  other.temperatureMaximumObject,
                  temperatureMaximumObject,
                ) ||
                other.temperatureMaximumObject == temperatureMaximumObject) &&
            (identical(
                  other.temperatureMinimumObject,
                  temperatureMinimumObject,
                ) ||
                other.temperatureMinimumObject == temperatureMinimumObject) &&
            (identical(other.temperatureDeltaObject, temperatureDeltaObject) ||
                other.temperatureDeltaObject == temperatureDeltaObject));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    temperatureAvgObject,
    temperatureMaximumObject,
    temperatureMinimumObject,
    temperatureDeltaObject,
  );

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureImplCopyWith<_$TemperatureImpl> get copyWith =>
      __$$TemperatureImplCopyWithImpl<_$TemperatureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureImplToJson(this);
  }
}

abstract class _Temperature implements Temperature {
  factory _Temperature({
    @JsonKey(name: 'temperature_avg_object')
    final TemperatureAvgObject? temperatureAvgObject,
    @JsonKey(name: 'temperature_maximum_object')
    final TemperatureMaximumObject? temperatureMaximumObject,
    @JsonKey(name: 'temperature_minimum_object')
    final TemperatureMinimumObject? temperatureMinimumObject,
    @JsonKey(name: 'temperature_delta_object')
    final TemperatureDeltaObject? temperatureDeltaObject,
  }) = _$TemperatureImpl;

  factory _Temperature.fromJson(Map<String, dynamic> json) =
      _$TemperatureImpl.fromJson;

  @override
  @JsonKey(name: 'temperature_avg_object')
  TemperatureAvgObject? get temperatureAvgObject;
  @override
  @JsonKey(name: 'temperature_maximum_object')
  TemperatureMaximumObject? get temperatureMaximumObject;
  @override
  @JsonKey(name: 'temperature_minimum_object')
  TemperatureMinimumObject? get temperatureMinimumObject;
  @override
  @JsonKey(name: 'temperature_delta_object')
  TemperatureDeltaObject? get temperatureDeltaObject;

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemperatureImplCopyWith<_$TemperatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
