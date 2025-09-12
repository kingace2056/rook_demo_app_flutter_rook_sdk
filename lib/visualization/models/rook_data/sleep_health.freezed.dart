// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sleep_health.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SleepHealth _$SleepHealthFromJson(Map<String, dynamic> json) {
  return _SleepHealth.fromJson(json);
}

/// @nodoc
mixin _$SleepHealth {
  Summary? get summary => throw _privateConstructorUsedError;

  /// Serializes this SleepHealth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SleepHealth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SleepHealthCopyWith<SleepHealth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SleepHealthCopyWith<$Res> {
  factory $SleepHealthCopyWith(
    SleepHealth value,
    $Res Function(SleepHealth) then,
  ) = _$SleepHealthCopyWithImpl<$Res, SleepHealth>;
  @useResult
  $Res call({Summary? summary});

  $SummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class _$SleepHealthCopyWithImpl<$Res, $Val extends SleepHealth>
    implements $SleepHealthCopyWith<$Res> {
  _$SleepHealthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SleepHealth
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

  /// Create a copy of SleepHealth
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
abstract class _$$SleepHealthImplCopyWith<$Res>
    implements $SleepHealthCopyWith<$Res> {
  factory _$$SleepHealthImplCopyWith(
    _$SleepHealthImpl value,
    $Res Function(_$SleepHealthImpl) then,
  ) = __$$SleepHealthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Summary? summary});

  @override
  $SummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class __$$SleepHealthImplCopyWithImpl<$Res>
    extends _$SleepHealthCopyWithImpl<$Res, _$SleepHealthImpl>
    implements _$$SleepHealthImplCopyWith<$Res> {
  __$$SleepHealthImplCopyWithImpl(
    _$SleepHealthImpl _value,
    $Res Function(_$SleepHealthImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SleepHealth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? summary = freezed}) {
    return _then(
      _$SleepHealthImpl(
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
class _$SleepHealthImpl implements _SleepHealth {
  _$SleepHealthImpl({this.summary});

  factory _$SleepHealthImpl.fromJson(Map<String, dynamic> json) =>
      _$$SleepHealthImplFromJson(json);

  @override
  final Summary? summary;

  @override
  String toString() {
    return 'SleepHealth(summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SleepHealthImpl &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, summary);

  /// Create a copy of SleepHealth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SleepHealthImplCopyWith<_$SleepHealthImpl> get copyWith =>
      __$$SleepHealthImplCopyWithImpl<_$SleepHealthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SleepHealthImplToJson(this);
  }
}

abstract class _SleepHealth implements SleepHealth {
  factory _SleepHealth({final Summary? summary}) = _$SleepHealthImpl;

  factory _SleepHealth.fromJson(Map<String, dynamic> json) =
      _$SleepHealthImpl.fromJson;

  @override
  Summary? get summary;

  /// Create a copy of SleepHealth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SleepHealthImplCopyWith<_$SleepHealthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
