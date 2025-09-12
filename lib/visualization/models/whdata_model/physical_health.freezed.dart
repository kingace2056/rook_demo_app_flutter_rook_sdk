// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'physical_health.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PhysicalHealth _$PhysicalHealthFromJson(Map<String, dynamic> json) {
  return _PhysicalHealth.fromJson(json);
}

/// @nodoc
mixin _$PhysicalHealth {
  Summary? get summary => throw _privateConstructorUsedError;

  /// Serializes this PhysicalHealth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhysicalHealth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhysicalHealthCopyWith<PhysicalHealth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalHealthCopyWith<$Res> {
  factory $PhysicalHealthCopyWith(
    PhysicalHealth value,
    $Res Function(PhysicalHealth) then,
  ) = _$PhysicalHealthCopyWithImpl<$Res, PhysicalHealth>;
  @useResult
  $Res call({Summary? summary});

  $SummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class _$PhysicalHealthCopyWithImpl<$Res, $Val extends PhysicalHealth>
    implements $PhysicalHealthCopyWith<$Res> {
  _$PhysicalHealthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhysicalHealth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? summary = freezed}) {
    return _then(
      _value.copyWith(
            summary: freezed == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as Summary?,
          )
          as $Val,
    );
  }

  /// Create a copy of PhysicalHealth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SummaryCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $SummaryCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhysicalHealthImplCopyWith<$Res>
    implements $PhysicalHealthCopyWith<$Res> {
  factory _$$PhysicalHealthImplCopyWith(
    _$PhysicalHealthImpl value,
    $Res Function(_$PhysicalHealthImpl) then,
  ) = __$$PhysicalHealthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Summary? summary});

  @override
  $SummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class __$$PhysicalHealthImplCopyWithImpl<$Res>
    extends _$PhysicalHealthCopyWithImpl<$Res, _$PhysicalHealthImpl>
    implements _$$PhysicalHealthImplCopyWith<$Res> {
  __$$PhysicalHealthImplCopyWithImpl(
    _$PhysicalHealthImpl _value,
    $Res Function(_$PhysicalHealthImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PhysicalHealth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? summary = freezed}) {
    return _then(
      _$PhysicalHealthImpl(
        summary: freezed == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as Summary?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PhysicalHealthImpl implements _PhysicalHealth {
  _$PhysicalHealthImpl({this.summary});

  factory _$PhysicalHealthImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhysicalHealthImplFromJson(json);

  @override
  final Summary? summary;

  @override
  String toString() {
    return 'PhysicalHealth(summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhysicalHealthImpl &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, summary);

  /// Create a copy of PhysicalHealth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhysicalHealthImplCopyWith<_$PhysicalHealthImpl> get copyWith =>
      __$$PhysicalHealthImplCopyWithImpl<_$PhysicalHealthImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PhysicalHealthImplToJson(this);
  }
}

abstract class _PhysicalHealth implements PhysicalHealth {
  factory _PhysicalHealth({final Summary? summary}) = _$PhysicalHealthImpl;

  factory _PhysicalHealth.fromJson(Map<String, dynamic> json) =
      _$PhysicalHealthImpl.fromJson;

  @override
  Summary? get summary;

  /// Create a copy of PhysicalHealth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhysicalHealthImplCopyWith<_$PhysicalHealthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
