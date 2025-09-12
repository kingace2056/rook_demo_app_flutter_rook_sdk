// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oxygenation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Oxygenation _$OxygenationFromJson(Map<String, dynamic> json) {
  return _Oxygenation.fromJson(json);
}

/// @nodoc
mixin _$Oxygenation {
  @JsonKey(name: 'saturation_avg_percentage_int')
  int? get saturationAvgPercentageInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'vo2max_mL_per_min_per_kg_int')
  int? get vo2maxMLPerMinPerKgInt => throw _privateConstructorUsedError;

  /// Serializes this Oxygenation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Oxygenation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OxygenationCopyWith<Oxygenation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OxygenationCopyWith<$Res> {
  factory $OxygenationCopyWith(
    Oxygenation value,
    $Res Function(Oxygenation) then,
  ) = _$OxygenationCopyWithImpl<$Res, Oxygenation>;
  @useResult
  $Res call({
    @JsonKey(name: 'saturation_avg_percentage_int')
    int? saturationAvgPercentageInt,
    @JsonKey(name: 'vo2max_mL_per_min_per_kg_int') int? vo2maxMLPerMinPerKgInt,
  });
}

/// @nodoc
class _$OxygenationCopyWithImpl<$Res, $Val extends Oxygenation>
    implements $OxygenationCopyWith<$Res> {
  _$OxygenationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Oxygenation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saturationAvgPercentageInt = freezed,
    Object? vo2maxMLPerMinPerKgInt = freezed,
  }) {
    return _then(
      _value.copyWith(
            saturationAvgPercentageInt: freezed == saturationAvgPercentageInt
                ? _value.saturationAvgPercentageInt
                : saturationAvgPercentageInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            vo2maxMLPerMinPerKgInt: freezed == vo2maxMLPerMinPerKgInt
                ? _value.vo2maxMLPerMinPerKgInt
                : vo2maxMLPerMinPerKgInt // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OxygenationImplCopyWith<$Res>
    implements $OxygenationCopyWith<$Res> {
  factory _$$OxygenationImplCopyWith(
    _$OxygenationImpl value,
    $Res Function(_$OxygenationImpl) then,
  ) = __$$OxygenationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'saturation_avg_percentage_int')
    int? saturationAvgPercentageInt,
    @JsonKey(name: 'vo2max_mL_per_min_per_kg_int') int? vo2maxMLPerMinPerKgInt,
  });
}

/// @nodoc
class __$$OxygenationImplCopyWithImpl<$Res>
    extends _$OxygenationCopyWithImpl<$Res, _$OxygenationImpl>
    implements _$$OxygenationImplCopyWith<$Res> {
  __$$OxygenationImplCopyWithImpl(
    _$OxygenationImpl _value,
    $Res Function(_$OxygenationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Oxygenation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saturationAvgPercentageInt = freezed,
    Object? vo2maxMLPerMinPerKgInt = freezed,
  }) {
    return _then(
      _$OxygenationImpl(
        saturationAvgPercentageInt: freezed == saturationAvgPercentageInt
            ? _value.saturationAvgPercentageInt
            : saturationAvgPercentageInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        vo2maxMLPerMinPerKgInt: freezed == vo2maxMLPerMinPerKgInt
            ? _value.vo2maxMLPerMinPerKgInt
            : vo2maxMLPerMinPerKgInt // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OxygenationImpl implements _Oxygenation {
  _$OxygenationImpl({
    @JsonKey(name: 'saturation_avg_percentage_int')
    this.saturationAvgPercentageInt,
    @JsonKey(name: 'vo2max_mL_per_min_per_kg_int') this.vo2maxMLPerMinPerKgInt,
  });

  factory _$OxygenationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OxygenationImplFromJson(json);

  @override
  @JsonKey(name: 'saturation_avg_percentage_int')
  final int? saturationAvgPercentageInt;
  @override
  @JsonKey(name: 'vo2max_mL_per_min_per_kg_int')
  final int? vo2maxMLPerMinPerKgInt;

  @override
  String toString() {
    return 'Oxygenation(saturationAvgPercentageInt: $saturationAvgPercentageInt, vo2maxMLPerMinPerKgInt: $vo2maxMLPerMinPerKgInt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OxygenationImpl &&
            (identical(
                  other.saturationAvgPercentageInt,
                  saturationAvgPercentageInt,
                ) ||
                other.saturationAvgPercentageInt ==
                    saturationAvgPercentageInt) &&
            (identical(other.vo2maxMLPerMinPerKgInt, vo2maxMLPerMinPerKgInt) ||
                other.vo2maxMLPerMinPerKgInt == vo2maxMLPerMinPerKgInt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    saturationAvgPercentageInt,
    vo2maxMLPerMinPerKgInt,
  );

  /// Create a copy of Oxygenation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OxygenationImplCopyWith<_$OxygenationImpl> get copyWith =>
      __$$OxygenationImplCopyWithImpl<_$OxygenationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OxygenationImplToJson(this);
  }
}

abstract class _Oxygenation implements Oxygenation {
  factory _Oxygenation({
    @JsonKey(name: 'saturation_avg_percentage_int')
    final int? saturationAvgPercentageInt,
    @JsonKey(name: 'vo2max_mL_per_min_per_kg_int')
    final int? vo2maxMLPerMinPerKgInt,
  }) = _$OxygenationImpl;

  factory _Oxygenation.fromJson(Map<String, dynamic> json) =
      _$OxygenationImpl.fromJson;

  @override
  @JsonKey(name: 'saturation_avg_percentage_int')
  int? get saturationAvgPercentageInt;
  @override
  @JsonKey(name: 'vo2max_mL_per_min_per_kg_int')
  int? get vo2maxMLPerMinPerKgInt;

  /// Create a copy of Oxygenation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OxygenationImplCopyWith<_$OxygenationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
