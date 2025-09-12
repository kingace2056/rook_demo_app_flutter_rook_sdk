// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hydration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Hydration _$HydrationFromJson(Map<String, dynamic> json) {
  return _Hydration.fromJson(json);
}

/// @nodoc
mixin _$Hydration {
  @JsonKey(name: 'water_total_consumption_mL_int')
  int? get waterTotalConsumptionMLInt => throw _privateConstructorUsedError;

  /// Serializes this Hydration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Hydration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HydrationCopyWith<Hydration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HydrationCopyWith<$Res> {
  factory $HydrationCopyWith(Hydration value, $Res Function(Hydration) then) =
      _$HydrationCopyWithImpl<$Res, Hydration>;
  @useResult
  $Res call(
      {@JsonKey(name: 'water_total_consumption_mL_int')
      int? waterTotalConsumptionMLInt});
}

/// @nodoc
class _$HydrationCopyWithImpl<$Res, $Val extends Hydration>
    implements $HydrationCopyWith<$Res> {
  _$HydrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Hydration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waterTotalConsumptionMLInt = freezed,
  }) {
    return _then(_value.copyWith(
      waterTotalConsumptionMLInt: freezed == waterTotalConsumptionMLInt
          ? _value.waterTotalConsumptionMLInt
          : waterTotalConsumptionMLInt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HydrationImplCopyWith<$Res>
    implements $HydrationCopyWith<$Res> {
  factory _$$HydrationImplCopyWith(
          _$HydrationImpl value, $Res Function(_$HydrationImpl) then) =
      __$$HydrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'water_total_consumption_mL_int')
      int? waterTotalConsumptionMLInt});
}

/// @nodoc
class __$$HydrationImplCopyWithImpl<$Res>
    extends _$HydrationCopyWithImpl<$Res, _$HydrationImpl>
    implements _$$HydrationImplCopyWith<$Res> {
  __$$HydrationImplCopyWithImpl(
      _$HydrationImpl _value, $Res Function(_$HydrationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Hydration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waterTotalConsumptionMLInt = freezed,
  }) {
    return _then(_$HydrationImpl(
      waterTotalConsumptionMLInt: freezed == waterTotalConsumptionMLInt
          ? _value.waterTotalConsumptionMLInt
          : waterTotalConsumptionMLInt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HydrationImpl implements _Hydration {
  _$HydrationImpl(
      {@JsonKey(name: 'water_total_consumption_mL_int')
      this.waterTotalConsumptionMLInt});

  factory _$HydrationImpl.fromJson(Map<String, dynamic> json) =>
      _$$HydrationImplFromJson(json);

  @override
  @JsonKey(name: 'water_total_consumption_mL_int')
  final int? waterTotalConsumptionMLInt;

  @override
  String toString() {
    return 'Hydration(waterTotalConsumptionMLInt: $waterTotalConsumptionMLInt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HydrationImpl &&
            (identical(other.waterTotalConsumptionMLInt,
                    waterTotalConsumptionMLInt) ||
                other.waterTotalConsumptionMLInt ==
                    waterTotalConsumptionMLInt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, waterTotalConsumptionMLInt);

  /// Create a copy of Hydration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HydrationImplCopyWith<_$HydrationImpl> get copyWith =>
      __$$HydrationImplCopyWithImpl<_$HydrationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HydrationImplToJson(
      this,
    );
  }
}

abstract class _Hydration implements Hydration {
  factory _Hydration(
      {@JsonKey(name: 'water_total_consumption_mL_int')
      final int? waterTotalConsumptionMLInt}) = _$HydrationImpl;

  factory _Hydration.fromJson(Map<String, dynamic> json) =
      _$HydrationImpl.fromJson;

  @override
  @JsonKey(name: 'water_total_consumption_mL_int')
  int? get waterTotalConsumptionMLInt;

  /// Create a copy of Hydration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HydrationImplCopyWith<_$HydrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
