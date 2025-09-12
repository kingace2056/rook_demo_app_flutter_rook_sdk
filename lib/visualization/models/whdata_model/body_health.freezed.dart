// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_health.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyHealth _$BodyHealthFromJson(Map<String, dynamic> json) {
  return _BodyHealth.fromJson(json);
}

/// @nodoc
mixin _$BodyHealth {
  Events? get events => throw _privateConstructorUsedError;

  /// Serializes this BodyHealth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyHealth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyHealthCopyWith<BodyHealth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyHealthCopyWith<$Res> {
  factory $BodyHealthCopyWith(
          BodyHealth value, $Res Function(BodyHealth) then) =
      _$BodyHealthCopyWithImpl<$Res, BodyHealth>;
  @useResult
  $Res call({Events? events});

  $EventsCopyWith<$Res>? get events;
}

/// @nodoc
class _$BodyHealthCopyWithImpl<$Res, $Val extends BodyHealth>
    implements $BodyHealthCopyWith<$Res> {
  _$BodyHealthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyHealth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = freezed,
  }) {
    return _then(_value.copyWith(
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Events?,
    ) as $Val);
  }

  /// Create a copy of BodyHealth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventsCopyWith<$Res>? get events {
    if (_value.events == null) {
      return null;
    }

    return $EventsCopyWith<$Res>(_value.events!, (value) {
      return _then(_value.copyWith(events: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BodyHealthImplCopyWith<$Res>
    implements $BodyHealthCopyWith<$Res> {
  factory _$$BodyHealthImplCopyWith(
          _$BodyHealthImpl value, $Res Function(_$BodyHealthImpl) then) =
      __$$BodyHealthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Events? events});

  @override
  $EventsCopyWith<$Res>? get events;
}

/// @nodoc
class __$$BodyHealthImplCopyWithImpl<$Res>
    extends _$BodyHealthCopyWithImpl<$Res, _$BodyHealthImpl>
    implements _$$BodyHealthImplCopyWith<$Res> {
  __$$BodyHealthImplCopyWithImpl(
      _$BodyHealthImpl _value, $Res Function(_$BodyHealthImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyHealth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = freezed,
  }) {
    return _then(_$BodyHealthImpl(
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Events?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyHealthImpl implements _BodyHealth {
  _$BodyHealthImpl({this.events});

  factory _$BodyHealthImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyHealthImplFromJson(json);

  @override
  final Events? events;

  @override
  String toString() {
    return 'BodyHealth(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyHealthImpl &&
            (identical(other.events, events) || other.events == events));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, events);

  /// Create a copy of BodyHealth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyHealthImplCopyWith<_$BodyHealthImpl> get copyWith =>
      __$$BodyHealthImplCopyWithImpl<_$BodyHealthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyHealthImplToJson(
      this,
    );
  }
}

abstract class _BodyHealth implements BodyHealth {
  factory _BodyHealth({final Events? events}) = _$BodyHealthImpl;

  factory _BodyHealth.fromJson(Map<String, dynamic> json) =
      _$BodyHealthImpl.fromJson;

  @override
  Events? get events;

  /// Create a copy of BodyHealth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyHealthImplCopyWith<_$BodyHealthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
