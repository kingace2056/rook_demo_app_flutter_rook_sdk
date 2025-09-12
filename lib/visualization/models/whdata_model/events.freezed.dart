// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Events _$EventsFromJson(Map<String, dynamic> json) {
  return _Events.fromJson(json);
}

/// @nodoc
mixin _$Events {
  @JsonKey(name: 'heart_rate_event')
  List<HeartRateEvent>? get heartRateEvent =>
      throw _privateConstructorUsedError;

  /// Serializes this Events to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventsCopyWith<Events> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsCopyWith<$Res> {
  factory $EventsCopyWith(Events value, $Res Function(Events) then) =
      _$EventsCopyWithImpl<$Res, Events>;
  @useResult
  $Res call(
      {@JsonKey(name: 'heart_rate_event')
      List<HeartRateEvent>? heartRateEvent});
}

/// @nodoc
class _$EventsCopyWithImpl<$Res, $Val extends Events>
    implements $EventsCopyWith<$Res> {
  _$EventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heartRateEvent = freezed,
  }) {
    return _then(_value.copyWith(
      heartRateEvent: freezed == heartRateEvent
          ? _value.heartRateEvent
          : heartRateEvent // ignore: cast_nullable_to_non_nullable
              as List<HeartRateEvent>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventsImplCopyWith<$Res> implements $EventsCopyWith<$Res> {
  factory _$$EventsImplCopyWith(
          _$EventsImpl value, $Res Function(_$EventsImpl) then) =
      __$$EventsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'heart_rate_event')
      List<HeartRateEvent>? heartRateEvent});
}

/// @nodoc
class __$$EventsImplCopyWithImpl<$Res>
    extends _$EventsCopyWithImpl<$Res, _$EventsImpl>
    implements _$$EventsImplCopyWith<$Res> {
  __$$EventsImplCopyWithImpl(
      _$EventsImpl _value, $Res Function(_$EventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heartRateEvent = freezed,
  }) {
    return _then(_$EventsImpl(
      heartRateEvent: freezed == heartRateEvent
          ? _value._heartRateEvent
          : heartRateEvent // ignore: cast_nullable_to_non_nullable
              as List<HeartRateEvent>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventsImpl implements _Events {
  _$EventsImpl(
      {@JsonKey(name: 'heart_rate_event')
      final List<HeartRateEvent>? heartRateEvent})
      : _heartRateEvent = heartRateEvent;

  factory _$EventsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventsImplFromJson(json);

  final List<HeartRateEvent>? _heartRateEvent;
  @override
  @JsonKey(name: 'heart_rate_event')
  List<HeartRateEvent>? get heartRateEvent {
    final value = _heartRateEvent;
    if (value == null) return null;
    if (_heartRateEvent is EqualUnmodifiableListView) return _heartRateEvent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Events(heartRateEvent: $heartRateEvent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsImpl &&
            const DeepCollectionEquality()
                .equals(other._heartRateEvent, _heartRateEvent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_heartRateEvent));

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsImplCopyWith<_$EventsImpl> get copyWith =>
      __$$EventsImplCopyWithImpl<_$EventsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventsImplToJson(
      this,
    );
  }
}

abstract class _Events implements Events {
  factory _Events(
      {@JsonKey(name: 'heart_rate_event')
      final List<HeartRateEvent>? heartRateEvent}) = _$EventsImpl;

  factory _Events.fromJson(Map<String, dynamic> json) = _$EventsImpl.fromJson;

  @override
  @JsonKey(name: 'heart_rate_event')
  List<HeartRateEvent>? get heartRateEvent;

  /// Create a copy of Events
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventsImplCopyWith<_$EventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
