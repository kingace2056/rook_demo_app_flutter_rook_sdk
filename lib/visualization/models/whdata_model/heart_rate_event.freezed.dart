// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_rate_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HeartRateEvent _$HeartRateEventFromJson(Map<String, dynamic> json) {
  return _HeartRateEvent.fromJson(json);
}

/// @nodoc
mixin _$HeartRateEvent {
  Metadata? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'heart_rate')
  HeartRate? get heartRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'non_structured_data_array')
  List<NonStructuredDataArray>? get nonStructuredDataArray =>
      throw _privateConstructorUsedError;

  /// Serializes this HeartRateEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeartRateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartRateEventCopyWith<HeartRateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartRateEventCopyWith<$Res> {
  factory $HeartRateEventCopyWith(
    HeartRateEvent value,
    $Res Function(HeartRateEvent) then,
  ) = _$HeartRateEventCopyWithImpl<$Res, HeartRateEvent>;
  @useResult
  $Res call({
    Metadata? metadata,
    @JsonKey(name: 'heart_rate') HeartRate? heartRate,
    @JsonKey(name: 'non_structured_data_array')
    List<NonStructuredDataArray>? nonStructuredDataArray,
  });

  $MetadataCopyWith<$Res>? get metadata;
  $HeartRateCopyWith<$Res>? get heartRate;
}

/// @nodoc
class _$HeartRateEventCopyWithImpl<$Res, $Val extends HeartRateEvent>
    implements $HeartRateEventCopyWith<$Res> {
  _$HeartRateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartRateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? heartRate = freezed,
    Object? nonStructuredDataArray = freezed,
  }) {
    return _then(
      _value.copyWith(
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Metadata?,
            heartRate: freezed == heartRate
                ? _value.heartRate
                : heartRate // ignore: cast_nullable_to_non_nullable
                      as HeartRate?,
            nonStructuredDataArray: freezed == nonStructuredDataArray
                ? _value.nonStructuredDataArray
                : nonStructuredDataArray // ignore: cast_nullable_to_non_nullable
                      as List<NonStructuredDataArray>?,
          )
          as $Val,
    );
  }

  /// Create a copy of HeartRateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  /// Create a copy of HeartRateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeartRateCopyWith<$Res>? get heartRate {
    if (_value.heartRate == null) {
      return null;
    }

    return $HeartRateCopyWith<$Res>(_value.heartRate!, (value) {
      return _then(_value.copyWith(heartRate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeartRateEventImplCopyWith<$Res>
    implements $HeartRateEventCopyWith<$Res> {
  factory _$$HeartRateEventImplCopyWith(
    _$HeartRateEventImpl value,
    $Res Function(_$HeartRateEventImpl) then,
  ) = __$$HeartRateEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Metadata? metadata,
    @JsonKey(name: 'heart_rate') HeartRate? heartRate,
    @JsonKey(name: 'non_structured_data_array')
    List<NonStructuredDataArray>? nonStructuredDataArray,
  });

  @override
  $MetadataCopyWith<$Res>? get metadata;
  @override
  $HeartRateCopyWith<$Res>? get heartRate;
}

/// @nodoc
class __$$HeartRateEventImplCopyWithImpl<$Res>
    extends _$HeartRateEventCopyWithImpl<$Res, _$HeartRateEventImpl>
    implements _$$HeartRateEventImplCopyWith<$Res> {
  __$$HeartRateEventImplCopyWithImpl(
    _$HeartRateEventImpl _value,
    $Res Function(_$HeartRateEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HeartRateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? heartRate = freezed,
    Object? nonStructuredDataArray = freezed,
  }) {
    return _then(
      _$HeartRateEventImpl(
        metadata: freezed == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Metadata?,
        heartRate: freezed == heartRate
            ? _value.heartRate
            : heartRate // ignore: cast_nullable_to_non_nullable
                  as HeartRate?,
        nonStructuredDataArray: freezed == nonStructuredDataArray
            ? _value._nonStructuredDataArray
            : nonStructuredDataArray // ignore: cast_nullable_to_non_nullable
                  as List<NonStructuredDataArray>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartRateEventImpl implements _HeartRateEvent {
  _$HeartRateEventImpl({
    this.metadata,
    @JsonKey(name: 'heart_rate') this.heartRate,
    @JsonKey(name: 'non_structured_data_array')
    final List<NonStructuredDataArray>? nonStructuredDataArray,
  }) : _nonStructuredDataArray = nonStructuredDataArray;

  factory _$HeartRateEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartRateEventImplFromJson(json);

  @override
  final Metadata? metadata;
  @override
  @JsonKey(name: 'heart_rate')
  final HeartRate? heartRate;
  final List<NonStructuredDataArray>? _nonStructuredDataArray;
  @override
  @JsonKey(name: 'non_structured_data_array')
  List<NonStructuredDataArray>? get nonStructuredDataArray {
    final value = _nonStructuredDataArray;
    if (value == null) return null;
    if (_nonStructuredDataArray is EqualUnmodifiableListView)
      return _nonStructuredDataArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HeartRateEvent(metadata: $metadata, heartRate: $heartRate, nonStructuredDataArray: $nonStructuredDataArray)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartRateEventImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.heartRate, heartRate) ||
                other.heartRate == heartRate) &&
            const DeepCollectionEquality().equals(
              other._nonStructuredDataArray,
              _nonStructuredDataArray,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    metadata,
    heartRate,
    const DeepCollectionEquality().hash(_nonStructuredDataArray),
  );

  /// Create a copy of HeartRateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartRateEventImplCopyWith<_$HeartRateEventImpl> get copyWith =>
      __$$HeartRateEventImplCopyWithImpl<_$HeartRateEventImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartRateEventImplToJson(this);
  }
}

abstract class _HeartRateEvent implements HeartRateEvent {
  factory _HeartRateEvent({
    final Metadata? metadata,
    @JsonKey(name: 'heart_rate') final HeartRate? heartRate,
    @JsonKey(name: 'non_structured_data_array')
    final List<NonStructuredDataArray>? nonStructuredDataArray,
  }) = _$HeartRateEventImpl;

  factory _HeartRateEvent.fromJson(Map<String, dynamic> json) =
      _$HeartRateEventImpl.fromJson;

  @override
  Metadata? get metadata;
  @override
  @JsonKey(name: 'heart_rate')
  HeartRate? get heartRate;
  @override
  @JsonKey(name: 'non_structured_data_array')
  List<NonStructuredDataArray>? get nonStructuredDataArray;

  /// Create a copy of HeartRateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartRateEventImplCopyWith<_$HeartRateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
