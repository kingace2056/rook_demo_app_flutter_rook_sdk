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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeartRateEvent _$HeartRateEventFromJson(Map<String, dynamic> json) {
  return _HeartRateEvent.fromJson(json);
}

/// @nodoc
mixin _$HeartRateEvent {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  int? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_uuid')
  String? get clientUuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_version')
  int? get documentVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_structure')
  String? get dataStructure => throw _privateConstructorUsedError;
  @JsonKey(name: 'auto_detected')
  bool? get autoDetected => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_type')
  String? get eventType => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_data')
  HeartRateEventData? get eventData => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadata')
  HeartRateMetadata? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'webhook_received_at')
  DateTime? get webhookReceivedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAtTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
          HeartRateEvent value, $Res Function(HeartRateEvent) then) =
      _$HeartRateEventCopyWithImpl<$Res, HeartRateEvent>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'version') int? version,
      @JsonKey(name: 'client_uuid') String? clientUuid,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'document_version') int? documentVersion,
      @JsonKey(name: 'data_structure') String? dataStructure,
      @JsonKey(name: 'auto_detected') bool? autoDetected,
      @JsonKey(name: 'event_type') String? eventType,
      @JsonKey(name: 'event_data') HeartRateEventData? eventData,
      @JsonKey(name: 'metadata') HeartRateMetadata? metadata,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'webhook_received_at') DateTime? webhookReceivedAt,
      @JsonKey(name: 'createdAt') DateTime? createdAtTimestamp,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt});

  $HeartRateEventDataCopyWith<$Res>? get eventData;
  $HeartRateMetadataCopyWith<$Res>? get metadata;
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
    Object? id = freezed,
    Object? version = freezed,
    Object? clientUuid = freezed,
    Object? userId = null,
    Object? documentVersion = freezed,
    Object? dataStructure = freezed,
    Object? autoDetected = freezed,
    Object? eventType = freezed,
    Object? eventData = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? webhookReceivedAt = freezed,
    Object? createdAtTimestamp = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      clientUuid: freezed == clientUuid
          ? _value.clientUuid
          : clientUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      documentVersion: freezed == documentVersion
          ? _value.documentVersion
          : documentVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      dataStructure: freezed == dataStructure
          ? _value.dataStructure
          : dataStructure // ignore: cast_nullable_to_non_nullable
              as String?,
      autoDetected: freezed == autoDetected
          ? _value.autoDetected
          : autoDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      eventData: freezed == eventData
          ? _value.eventData
          : eventData // ignore: cast_nullable_to_non_nullable
              as HeartRateEventData?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as HeartRateMetadata?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      webhookReceivedAt: freezed == webhookReceivedAt
          ? _value.webhookReceivedAt
          : webhookReceivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAtTimestamp: freezed == createdAtTimestamp
          ? _value.createdAtTimestamp
          : createdAtTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of HeartRateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeartRateEventDataCopyWith<$Res>? get eventData {
    if (_value.eventData == null) {
      return null;
    }

    return $HeartRateEventDataCopyWith<$Res>(_value.eventData!, (value) {
      return _then(_value.copyWith(eventData: value) as $Val);
    });
  }

  /// Create a copy of HeartRateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeartRateMetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $HeartRateMetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeartRateEventImplCopyWith<$Res>
    implements $HeartRateEventCopyWith<$Res> {
  factory _$$HeartRateEventImplCopyWith(_$HeartRateEventImpl value,
          $Res Function(_$HeartRateEventImpl) then) =
      __$$HeartRateEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'version') int? version,
      @JsonKey(name: 'client_uuid') String? clientUuid,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'document_version') int? documentVersion,
      @JsonKey(name: 'data_structure') String? dataStructure,
      @JsonKey(name: 'auto_detected') bool? autoDetected,
      @JsonKey(name: 'event_type') String? eventType,
      @JsonKey(name: 'event_data') HeartRateEventData? eventData,
      @JsonKey(name: 'metadata') HeartRateMetadata? metadata,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'webhook_received_at') DateTime? webhookReceivedAt,
      @JsonKey(name: 'createdAt') DateTime? createdAtTimestamp,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt});

  @override
  $HeartRateEventDataCopyWith<$Res>? get eventData;
  @override
  $HeartRateMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$HeartRateEventImplCopyWithImpl<$Res>
    extends _$HeartRateEventCopyWithImpl<$Res, _$HeartRateEventImpl>
    implements _$$HeartRateEventImplCopyWith<$Res> {
  __$$HeartRateEventImplCopyWithImpl(
      _$HeartRateEventImpl _value, $Res Function(_$HeartRateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeartRateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? clientUuid = freezed,
    Object? userId = null,
    Object? documentVersion = freezed,
    Object? dataStructure = freezed,
    Object? autoDetected = freezed,
    Object? eventType = freezed,
    Object? eventData = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? webhookReceivedAt = freezed,
    Object? createdAtTimestamp = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$HeartRateEventImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      clientUuid: freezed == clientUuid
          ? _value.clientUuid
          : clientUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      documentVersion: freezed == documentVersion
          ? _value.documentVersion
          : documentVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      dataStructure: freezed == dataStructure
          ? _value.dataStructure
          : dataStructure // ignore: cast_nullable_to_non_nullable
              as String?,
      autoDetected: freezed == autoDetected
          ? _value.autoDetected
          : autoDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      eventData: freezed == eventData
          ? _value.eventData
          : eventData // ignore: cast_nullable_to_non_nullable
              as HeartRateEventData?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as HeartRateMetadata?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      webhookReceivedAt: freezed == webhookReceivedAt
          ? _value.webhookReceivedAt
          : webhookReceivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAtTimestamp: freezed == createdAtTimestamp
          ? _value.createdAtTimestamp
          : createdAtTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartRateEventImpl implements _HeartRateEvent {
  const _$HeartRateEventImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'version') this.version,
      @JsonKey(name: 'client_uuid') this.clientUuid,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'document_version') this.documentVersion,
      @JsonKey(name: 'data_structure') this.dataStructure,
      @JsonKey(name: 'auto_detected') this.autoDetected,
      @JsonKey(name: 'event_type') this.eventType,
      @JsonKey(name: 'event_data') this.eventData,
      @JsonKey(name: 'metadata') this.metadata,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'webhook_received_at') this.webhookReceivedAt,
      @JsonKey(name: 'createdAt') this.createdAtTimestamp,
      @JsonKey(name: 'updatedAt') this.updatedAt});

  factory _$HeartRateEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartRateEventImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'version')
  final int? version;
  @override
  @JsonKey(name: 'client_uuid')
  final String? clientUuid;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'document_version')
  final int? documentVersion;
  @override
  @JsonKey(name: 'data_structure')
  final String? dataStructure;
  @override
  @JsonKey(name: 'auto_detected')
  final bool? autoDetected;
  @override
  @JsonKey(name: 'event_type')
  final String? eventType;
  @override
  @JsonKey(name: 'event_data')
  final HeartRateEventData? eventData;
  @override
  @JsonKey(name: 'metadata')
  final HeartRateMetadata? metadata;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'webhook_received_at')
  final DateTime? webhookReceivedAt;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAtTimestamp;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'HeartRateEvent(id: $id, version: $version, clientUuid: $clientUuid, userId: $userId, documentVersion: $documentVersion, dataStructure: $dataStructure, autoDetected: $autoDetected, eventType: $eventType, eventData: $eventData, metadata: $metadata, createdAt: $createdAt, webhookReceivedAt: $webhookReceivedAt, createdAtTimestamp: $createdAtTimestamp, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartRateEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.clientUuid, clientUuid) ||
                other.clientUuid == clientUuid) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.documentVersion, documentVersion) ||
                other.documentVersion == documentVersion) &&
            (identical(other.dataStructure, dataStructure) ||
                other.dataStructure == dataStructure) &&
            (identical(other.autoDetected, autoDetected) ||
                other.autoDetected == autoDetected) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.eventData, eventData) ||
                other.eventData == eventData) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.webhookReceivedAt, webhookReceivedAt) ||
                other.webhookReceivedAt == webhookReceivedAt) &&
            (identical(other.createdAtTimestamp, createdAtTimestamp) ||
                other.createdAtTimestamp == createdAtTimestamp) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      version,
      clientUuid,
      userId,
      documentVersion,
      dataStructure,
      autoDetected,
      eventType,
      eventData,
      metadata,
      createdAt,
      webhookReceivedAt,
      createdAtTimestamp,
      updatedAt);

  /// Create a copy of HeartRateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartRateEventImplCopyWith<_$HeartRateEventImpl> get copyWith =>
      __$$HeartRateEventImplCopyWithImpl<_$HeartRateEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartRateEventImplToJson(
      this,
    );
  }
}

abstract class _HeartRateEvent implements HeartRateEvent {
  const factory _HeartRateEvent(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'version') final int? version,
      @JsonKey(name: 'client_uuid') final String? clientUuid,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'document_version') final int? documentVersion,
      @JsonKey(name: 'data_structure') final String? dataStructure,
      @JsonKey(name: 'auto_detected') final bool? autoDetected,
      @JsonKey(name: 'event_type') final String? eventType,
      @JsonKey(name: 'event_data') final HeartRateEventData? eventData,
      @JsonKey(name: 'metadata') final HeartRateMetadata? metadata,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'webhook_received_at') final DateTime? webhookReceivedAt,
      @JsonKey(name: 'createdAt') final DateTime? createdAtTimestamp,
      @JsonKey(name: 'updatedAt')
      final DateTime? updatedAt}) = _$HeartRateEventImpl;

  factory _HeartRateEvent.fromJson(Map<String, dynamic> json) =
      _$HeartRateEventImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'version')
  int? get version;
  @override
  @JsonKey(name: 'client_uuid')
  String? get clientUuid;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'document_version')
  int? get documentVersion;
  @override
  @JsonKey(name: 'data_structure')
  String? get dataStructure;
  @override
  @JsonKey(name: 'auto_detected')
  bool? get autoDetected;
  @override
  @JsonKey(name: 'event_type')
  String? get eventType;
  @override
  @JsonKey(name: 'event_data')
  HeartRateEventData? get eventData;
  @override
  @JsonKey(name: 'metadata')
  HeartRateMetadata? get metadata;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'webhook_received_at')
  DateTime? get webhookReceivedAt;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAtTimestamp;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;

  /// Create a copy of HeartRateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartRateEventImplCopyWith<_$HeartRateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeartRateEventData _$HeartRateEventDataFromJson(Map<String, dynamic> json) {
  return _HeartRateEventData.fromJson(json);
}

/// @nodoc
mixin _$HeartRateEventData {
  @JsonKey(name: 'heart_rate_event')
  List<HeartRateEventDetail>? get heartRateEvent =>
      throw _privateConstructorUsedError;

  /// Serializes this HeartRateEventData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeartRateEventData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartRateEventDataCopyWith<HeartRateEventData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartRateEventDataCopyWith<$Res> {
  factory $HeartRateEventDataCopyWith(
          HeartRateEventData value, $Res Function(HeartRateEventData) then) =
      _$HeartRateEventDataCopyWithImpl<$Res, HeartRateEventData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'heart_rate_event')
      List<HeartRateEventDetail>? heartRateEvent});
}

/// @nodoc
class _$HeartRateEventDataCopyWithImpl<$Res, $Val extends HeartRateEventData>
    implements $HeartRateEventDataCopyWith<$Res> {
  _$HeartRateEventDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartRateEventData
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
              as List<HeartRateEventDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeartRateEventDataImplCopyWith<$Res>
    implements $HeartRateEventDataCopyWith<$Res> {
  factory _$$HeartRateEventDataImplCopyWith(_$HeartRateEventDataImpl value,
          $Res Function(_$HeartRateEventDataImpl) then) =
      __$$HeartRateEventDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'heart_rate_event')
      List<HeartRateEventDetail>? heartRateEvent});
}

/// @nodoc
class __$$HeartRateEventDataImplCopyWithImpl<$Res>
    extends _$HeartRateEventDataCopyWithImpl<$Res, _$HeartRateEventDataImpl>
    implements _$$HeartRateEventDataImplCopyWith<$Res> {
  __$$HeartRateEventDataImplCopyWithImpl(_$HeartRateEventDataImpl _value,
      $Res Function(_$HeartRateEventDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeartRateEventData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heartRateEvent = freezed,
  }) {
    return _then(_$HeartRateEventDataImpl(
      heartRateEvent: freezed == heartRateEvent
          ? _value._heartRateEvent
          : heartRateEvent // ignore: cast_nullable_to_non_nullable
              as List<HeartRateEventDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartRateEventDataImpl implements _HeartRateEventData {
  const _$HeartRateEventDataImpl(
      {@JsonKey(name: 'heart_rate_event')
      final List<HeartRateEventDetail>? heartRateEvent})
      : _heartRateEvent = heartRateEvent;

  factory _$HeartRateEventDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartRateEventDataImplFromJson(json);

  final List<HeartRateEventDetail>? _heartRateEvent;
  @override
  @JsonKey(name: 'heart_rate_event')
  List<HeartRateEventDetail>? get heartRateEvent {
    final value = _heartRateEvent;
    if (value == null) return null;
    if (_heartRateEvent is EqualUnmodifiableListView) return _heartRateEvent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HeartRateEventData(heartRateEvent: $heartRateEvent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartRateEventDataImpl &&
            const DeepCollectionEquality()
                .equals(other._heartRateEvent, _heartRateEvent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_heartRateEvent));

  /// Create a copy of HeartRateEventData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartRateEventDataImplCopyWith<_$HeartRateEventDataImpl> get copyWith =>
      __$$HeartRateEventDataImplCopyWithImpl<_$HeartRateEventDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartRateEventDataImplToJson(
      this,
    );
  }
}

abstract class _HeartRateEventData implements HeartRateEventData {
  const factory _HeartRateEventData(
          {@JsonKey(name: 'heart_rate_event')
          final List<HeartRateEventDetail>? heartRateEvent}) =
      _$HeartRateEventDataImpl;

  factory _HeartRateEventData.fromJson(Map<String, dynamic> json) =
      _$HeartRateEventDataImpl.fromJson;

  @override
  @JsonKey(name: 'heart_rate_event')
  List<HeartRateEventDetail>? get heartRateEvent;

  /// Create a copy of HeartRateEventData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartRateEventDataImplCopyWith<_$HeartRateEventDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeartRateEventDetail _$HeartRateEventDetailFromJson(Map<String, dynamic> json) {
  return _HeartRateEventDetail.fromJson(json);
}

/// @nodoc
mixin _$HeartRateEventDetail {
  @JsonKey(name: 'metadata')
  HeartRateMetadata? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'heart_rate')
  HeartRateData? get heartRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'non_structured_data_array')
  List<NonStructuredData>? get nonStructuredDataArray =>
      throw _privateConstructorUsedError;

  /// Serializes this HeartRateEventDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeartRateEventDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartRateEventDetailCopyWith<HeartRateEventDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartRateEventDetailCopyWith<$Res> {
  factory $HeartRateEventDetailCopyWith(HeartRateEventDetail value,
          $Res Function(HeartRateEventDetail) then) =
      _$HeartRateEventDetailCopyWithImpl<$Res, HeartRateEventDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'metadata') HeartRateMetadata? metadata,
      @JsonKey(name: 'heart_rate') HeartRateData? heartRate,
      @JsonKey(name: 'non_structured_data_array')
      List<NonStructuredData>? nonStructuredDataArray});

  $HeartRateMetadataCopyWith<$Res>? get metadata;
  $HeartRateDataCopyWith<$Res>? get heartRate;
}

/// @nodoc
class _$HeartRateEventDetailCopyWithImpl<$Res,
        $Val extends HeartRateEventDetail>
    implements $HeartRateEventDetailCopyWith<$Res> {
  _$HeartRateEventDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartRateEventDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? heartRate = freezed,
    Object? nonStructuredDataArray = freezed,
  }) {
    return _then(_value.copyWith(
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as HeartRateMetadata?,
      heartRate: freezed == heartRate
          ? _value.heartRate
          : heartRate // ignore: cast_nullable_to_non_nullable
              as HeartRateData?,
      nonStructuredDataArray: freezed == nonStructuredDataArray
          ? _value.nonStructuredDataArray
          : nonStructuredDataArray // ignore: cast_nullable_to_non_nullable
              as List<NonStructuredData>?,
    ) as $Val);
  }

  /// Create a copy of HeartRateEventDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeartRateMetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $HeartRateMetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  /// Create a copy of HeartRateEventDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeartRateDataCopyWith<$Res>? get heartRate {
    if (_value.heartRate == null) {
      return null;
    }

    return $HeartRateDataCopyWith<$Res>(_value.heartRate!, (value) {
      return _then(_value.copyWith(heartRate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeartRateEventDetailImplCopyWith<$Res>
    implements $HeartRateEventDetailCopyWith<$Res> {
  factory _$$HeartRateEventDetailImplCopyWith(_$HeartRateEventDetailImpl value,
          $Res Function(_$HeartRateEventDetailImpl) then) =
      __$$HeartRateEventDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'metadata') HeartRateMetadata? metadata,
      @JsonKey(name: 'heart_rate') HeartRateData? heartRate,
      @JsonKey(name: 'non_structured_data_array')
      List<NonStructuredData>? nonStructuredDataArray});

  @override
  $HeartRateMetadataCopyWith<$Res>? get metadata;
  @override
  $HeartRateDataCopyWith<$Res>? get heartRate;
}

/// @nodoc
class __$$HeartRateEventDetailImplCopyWithImpl<$Res>
    extends _$HeartRateEventDetailCopyWithImpl<$Res, _$HeartRateEventDetailImpl>
    implements _$$HeartRateEventDetailImplCopyWith<$Res> {
  __$$HeartRateEventDetailImplCopyWithImpl(_$HeartRateEventDetailImpl _value,
      $Res Function(_$HeartRateEventDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeartRateEventDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? heartRate = freezed,
    Object? nonStructuredDataArray = freezed,
  }) {
    return _then(_$HeartRateEventDetailImpl(
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as HeartRateMetadata?,
      heartRate: freezed == heartRate
          ? _value.heartRate
          : heartRate // ignore: cast_nullable_to_non_nullable
              as HeartRateData?,
      nonStructuredDataArray: freezed == nonStructuredDataArray
          ? _value._nonStructuredDataArray
          : nonStructuredDataArray // ignore: cast_nullable_to_non_nullable
              as List<NonStructuredData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartRateEventDetailImpl implements _HeartRateEventDetail {
  const _$HeartRateEventDetailImpl(
      {@JsonKey(name: 'metadata') this.metadata,
      @JsonKey(name: 'heart_rate') this.heartRate,
      @JsonKey(name: 'non_structured_data_array')
      final List<NonStructuredData>? nonStructuredDataArray})
      : _nonStructuredDataArray = nonStructuredDataArray;

  factory _$HeartRateEventDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartRateEventDetailImplFromJson(json);

  @override
  @JsonKey(name: 'metadata')
  final HeartRateMetadata? metadata;
  @override
  @JsonKey(name: 'heart_rate')
  final HeartRateData? heartRate;
  final List<NonStructuredData>? _nonStructuredDataArray;
  @override
  @JsonKey(name: 'non_structured_data_array')
  List<NonStructuredData>? get nonStructuredDataArray {
    final value = _nonStructuredDataArray;
    if (value == null) return null;
    if (_nonStructuredDataArray is EqualUnmodifiableListView)
      return _nonStructuredDataArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HeartRateEventDetail(metadata: $metadata, heartRate: $heartRate, nonStructuredDataArray: $nonStructuredDataArray)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartRateEventDetailImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.heartRate, heartRate) ||
                other.heartRate == heartRate) &&
            const DeepCollectionEquality().equals(
                other._nonStructuredDataArray, _nonStructuredDataArray));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, metadata, heartRate,
      const DeepCollectionEquality().hash(_nonStructuredDataArray));

  /// Create a copy of HeartRateEventDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartRateEventDetailImplCopyWith<_$HeartRateEventDetailImpl>
      get copyWith =>
          __$$HeartRateEventDetailImplCopyWithImpl<_$HeartRateEventDetailImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartRateEventDetailImplToJson(
      this,
    );
  }
}

abstract class _HeartRateEventDetail implements HeartRateEventDetail {
  const factory _HeartRateEventDetail(
          {@JsonKey(name: 'metadata') final HeartRateMetadata? metadata,
          @JsonKey(name: 'heart_rate') final HeartRateData? heartRate,
          @JsonKey(name: 'non_structured_data_array')
          final List<NonStructuredData>? nonStructuredDataArray}) =
      _$HeartRateEventDetailImpl;

  factory _HeartRateEventDetail.fromJson(Map<String, dynamic> json) =
      _$HeartRateEventDetailImpl.fromJson;

  @override
  @JsonKey(name: 'metadata')
  HeartRateMetadata? get metadata;
  @override
  @JsonKey(name: 'heart_rate')
  HeartRateData? get heartRate;
  @override
  @JsonKey(name: 'non_structured_data_array')
  List<NonStructuredData>? get nonStructuredDataArray;

  /// Create a copy of HeartRateEventDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartRateEventDetailImplCopyWith<_$HeartRateEventDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HeartRateData _$HeartRateDataFromJson(Map<String, dynamic> json) {
  return _HeartRateData.fromJson(json);
}

/// @nodoc
mixin _$HeartRateData {
  @JsonKey(name: 'hr_maximum_bpm_int')
  int? get hrMaximumBpm => throw _privateConstructorUsedError;
  @JsonKey(name: 'hr_minimum_bpm_int')
  int? get hrMinimumBpm => throw _privateConstructorUsedError;
  @JsonKey(name: 'hr_avg_bpm_int')
  int? get hrAvgBpm => throw _privateConstructorUsedError;
  @JsonKey(name: 'hr_resting_bpm_int')
  int? get hrRestingBpm => throw _privateConstructorUsedError;
  @JsonKey(name: 'hrv_avg_rmssd_float')
  double? get hrvAvgRmssd => throw _privateConstructorUsedError;
  @JsonKey(name: 'hrv_avg_sdnn_float')
  double? get hrvAvgSdnn => throw _privateConstructorUsedError;
  @JsonKey(name: 'hr_granular_data_array')
  List<HeartRateGranularData>? get hrGranularDataArray =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'hrv_sdnn_granular_data_array')
  List<dynamic>? get hrvSdnnGranularDataArray =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'hrv_rmssd_granular_data_array')
  List<dynamic>? get hrvRmssdGranularDataArray =>
      throw _privateConstructorUsedError;

  /// Serializes this HeartRateData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeartRateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartRateDataCopyWith<HeartRateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartRateDataCopyWith<$Res> {
  factory $HeartRateDataCopyWith(
          HeartRateData value, $Res Function(HeartRateData) then) =
      _$HeartRateDataCopyWithImpl<$Res, HeartRateData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hr_maximum_bpm_int') int? hrMaximumBpm,
      @JsonKey(name: 'hr_minimum_bpm_int') int? hrMinimumBpm,
      @JsonKey(name: 'hr_avg_bpm_int') int? hrAvgBpm,
      @JsonKey(name: 'hr_resting_bpm_int') int? hrRestingBpm,
      @JsonKey(name: 'hrv_avg_rmssd_float') double? hrvAvgRmssd,
      @JsonKey(name: 'hrv_avg_sdnn_float') double? hrvAvgSdnn,
      @JsonKey(name: 'hr_granular_data_array')
      List<HeartRateGranularData>? hrGranularDataArray,
      @JsonKey(name: 'hrv_sdnn_granular_data_array')
      List<dynamic>? hrvSdnnGranularDataArray,
      @JsonKey(name: 'hrv_rmssd_granular_data_array')
      List<dynamic>? hrvRmssdGranularDataArray});
}

/// @nodoc
class _$HeartRateDataCopyWithImpl<$Res, $Val extends HeartRateData>
    implements $HeartRateDataCopyWith<$Res> {
  _$HeartRateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartRateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hrMaximumBpm = freezed,
    Object? hrMinimumBpm = freezed,
    Object? hrAvgBpm = freezed,
    Object? hrRestingBpm = freezed,
    Object? hrvAvgRmssd = freezed,
    Object? hrvAvgSdnn = freezed,
    Object? hrGranularDataArray = freezed,
    Object? hrvSdnnGranularDataArray = freezed,
    Object? hrvRmssdGranularDataArray = freezed,
  }) {
    return _then(_value.copyWith(
      hrMaximumBpm: freezed == hrMaximumBpm
          ? _value.hrMaximumBpm
          : hrMaximumBpm // ignore: cast_nullable_to_non_nullable
              as int?,
      hrMinimumBpm: freezed == hrMinimumBpm
          ? _value.hrMinimumBpm
          : hrMinimumBpm // ignore: cast_nullable_to_non_nullable
              as int?,
      hrAvgBpm: freezed == hrAvgBpm
          ? _value.hrAvgBpm
          : hrAvgBpm // ignore: cast_nullable_to_non_nullable
              as int?,
      hrRestingBpm: freezed == hrRestingBpm
          ? _value.hrRestingBpm
          : hrRestingBpm // ignore: cast_nullable_to_non_nullable
              as int?,
      hrvAvgRmssd: freezed == hrvAvgRmssd
          ? _value.hrvAvgRmssd
          : hrvAvgRmssd // ignore: cast_nullable_to_non_nullable
              as double?,
      hrvAvgSdnn: freezed == hrvAvgSdnn
          ? _value.hrvAvgSdnn
          : hrvAvgSdnn // ignore: cast_nullable_to_non_nullable
              as double?,
      hrGranularDataArray: freezed == hrGranularDataArray
          ? _value.hrGranularDataArray
          : hrGranularDataArray // ignore: cast_nullable_to_non_nullable
              as List<HeartRateGranularData>?,
      hrvSdnnGranularDataArray: freezed == hrvSdnnGranularDataArray
          ? _value.hrvSdnnGranularDataArray
          : hrvSdnnGranularDataArray // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      hrvRmssdGranularDataArray: freezed == hrvRmssdGranularDataArray
          ? _value.hrvRmssdGranularDataArray
          : hrvRmssdGranularDataArray // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeartRateDataImplCopyWith<$Res>
    implements $HeartRateDataCopyWith<$Res> {
  factory _$$HeartRateDataImplCopyWith(
          _$HeartRateDataImpl value, $Res Function(_$HeartRateDataImpl) then) =
      __$$HeartRateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hr_maximum_bpm_int') int? hrMaximumBpm,
      @JsonKey(name: 'hr_minimum_bpm_int') int? hrMinimumBpm,
      @JsonKey(name: 'hr_avg_bpm_int') int? hrAvgBpm,
      @JsonKey(name: 'hr_resting_bpm_int') int? hrRestingBpm,
      @JsonKey(name: 'hrv_avg_rmssd_float') double? hrvAvgRmssd,
      @JsonKey(name: 'hrv_avg_sdnn_float') double? hrvAvgSdnn,
      @JsonKey(name: 'hr_granular_data_array')
      List<HeartRateGranularData>? hrGranularDataArray,
      @JsonKey(name: 'hrv_sdnn_granular_data_array')
      List<dynamic>? hrvSdnnGranularDataArray,
      @JsonKey(name: 'hrv_rmssd_granular_data_array')
      List<dynamic>? hrvRmssdGranularDataArray});
}

/// @nodoc
class __$$HeartRateDataImplCopyWithImpl<$Res>
    extends _$HeartRateDataCopyWithImpl<$Res, _$HeartRateDataImpl>
    implements _$$HeartRateDataImplCopyWith<$Res> {
  __$$HeartRateDataImplCopyWithImpl(
      _$HeartRateDataImpl _value, $Res Function(_$HeartRateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeartRateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hrMaximumBpm = freezed,
    Object? hrMinimumBpm = freezed,
    Object? hrAvgBpm = freezed,
    Object? hrRestingBpm = freezed,
    Object? hrvAvgRmssd = freezed,
    Object? hrvAvgSdnn = freezed,
    Object? hrGranularDataArray = freezed,
    Object? hrvSdnnGranularDataArray = freezed,
    Object? hrvRmssdGranularDataArray = freezed,
  }) {
    return _then(_$HeartRateDataImpl(
      hrMaximumBpm: freezed == hrMaximumBpm
          ? _value.hrMaximumBpm
          : hrMaximumBpm // ignore: cast_nullable_to_non_nullable
              as int?,
      hrMinimumBpm: freezed == hrMinimumBpm
          ? _value.hrMinimumBpm
          : hrMinimumBpm // ignore: cast_nullable_to_non_nullable
              as int?,
      hrAvgBpm: freezed == hrAvgBpm
          ? _value.hrAvgBpm
          : hrAvgBpm // ignore: cast_nullable_to_non_nullable
              as int?,
      hrRestingBpm: freezed == hrRestingBpm
          ? _value.hrRestingBpm
          : hrRestingBpm // ignore: cast_nullable_to_non_nullable
              as int?,
      hrvAvgRmssd: freezed == hrvAvgRmssd
          ? _value.hrvAvgRmssd
          : hrvAvgRmssd // ignore: cast_nullable_to_non_nullable
              as double?,
      hrvAvgSdnn: freezed == hrvAvgSdnn
          ? _value.hrvAvgSdnn
          : hrvAvgSdnn // ignore: cast_nullable_to_non_nullable
              as double?,
      hrGranularDataArray: freezed == hrGranularDataArray
          ? _value._hrGranularDataArray
          : hrGranularDataArray // ignore: cast_nullable_to_non_nullable
              as List<HeartRateGranularData>?,
      hrvSdnnGranularDataArray: freezed == hrvSdnnGranularDataArray
          ? _value._hrvSdnnGranularDataArray
          : hrvSdnnGranularDataArray // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      hrvRmssdGranularDataArray: freezed == hrvRmssdGranularDataArray
          ? _value._hrvRmssdGranularDataArray
          : hrvRmssdGranularDataArray // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartRateDataImpl implements _HeartRateData {
  const _$HeartRateDataImpl(
      {@JsonKey(name: 'hr_maximum_bpm_int') this.hrMaximumBpm,
      @JsonKey(name: 'hr_minimum_bpm_int') this.hrMinimumBpm,
      @JsonKey(name: 'hr_avg_bpm_int') this.hrAvgBpm,
      @JsonKey(name: 'hr_resting_bpm_int') this.hrRestingBpm,
      @JsonKey(name: 'hrv_avg_rmssd_float') this.hrvAvgRmssd,
      @JsonKey(name: 'hrv_avg_sdnn_float') this.hrvAvgSdnn,
      @JsonKey(name: 'hr_granular_data_array')
      final List<HeartRateGranularData>? hrGranularDataArray,
      @JsonKey(name: 'hrv_sdnn_granular_data_array')
      final List<dynamic>? hrvSdnnGranularDataArray,
      @JsonKey(name: 'hrv_rmssd_granular_data_array')
      final List<dynamic>? hrvRmssdGranularDataArray})
      : _hrGranularDataArray = hrGranularDataArray,
        _hrvSdnnGranularDataArray = hrvSdnnGranularDataArray,
        _hrvRmssdGranularDataArray = hrvRmssdGranularDataArray;

  factory _$HeartRateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartRateDataImplFromJson(json);

  @override
  @JsonKey(name: 'hr_maximum_bpm_int')
  final int? hrMaximumBpm;
  @override
  @JsonKey(name: 'hr_minimum_bpm_int')
  final int? hrMinimumBpm;
  @override
  @JsonKey(name: 'hr_avg_bpm_int')
  final int? hrAvgBpm;
  @override
  @JsonKey(name: 'hr_resting_bpm_int')
  final int? hrRestingBpm;
  @override
  @JsonKey(name: 'hrv_avg_rmssd_float')
  final double? hrvAvgRmssd;
  @override
  @JsonKey(name: 'hrv_avg_sdnn_float')
  final double? hrvAvgSdnn;
  final List<HeartRateGranularData>? _hrGranularDataArray;
  @override
  @JsonKey(name: 'hr_granular_data_array')
  List<HeartRateGranularData>? get hrGranularDataArray {
    final value = _hrGranularDataArray;
    if (value == null) return null;
    if (_hrGranularDataArray is EqualUnmodifiableListView)
      return _hrGranularDataArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _hrvSdnnGranularDataArray;
  @override
  @JsonKey(name: 'hrv_sdnn_granular_data_array')
  List<dynamic>? get hrvSdnnGranularDataArray {
    final value = _hrvSdnnGranularDataArray;
    if (value == null) return null;
    if (_hrvSdnnGranularDataArray is EqualUnmodifiableListView)
      return _hrvSdnnGranularDataArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _hrvRmssdGranularDataArray;
  @override
  @JsonKey(name: 'hrv_rmssd_granular_data_array')
  List<dynamic>? get hrvRmssdGranularDataArray {
    final value = _hrvRmssdGranularDataArray;
    if (value == null) return null;
    if (_hrvRmssdGranularDataArray is EqualUnmodifiableListView)
      return _hrvRmssdGranularDataArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HeartRateData(hrMaximumBpm: $hrMaximumBpm, hrMinimumBpm: $hrMinimumBpm, hrAvgBpm: $hrAvgBpm, hrRestingBpm: $hrRestingBpm, hrvAvgRmssd: $hrvAvgRmssd, hrvAvgSdnn: $hrvAvgSdnn, hrGranularDataArray: $hrGranularDataArray, hrvSdnnGranularDataArray: $hrvSdnnGranularDataArray, hrvRmssdGranularDataArray: $hrvRmssdGranularDataArray)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartRateDataImpl &&
            (identical(other.hrMaximumBpm, hrMaximumBpm) ||
                other.hrMaximumBpm == hrMaximumBpm) &&
            (identical(other.hrMinimumBpm, hrMinimumBpm) ||
                other.hrMinimumBpm == hrMinimumBpm) &&
            (identical(other.hrAvgBpm, hrAvgBpm) ||
                other.hrAvgBpm == hrAvgBpm) &&
            (identical(other.hrRestingBpm, hrRestingBpm) ||
                other.hrRestingBpm == hrRestingBpm) &&
            (identical(other.hrvAvgRmssd, hrvAvgRmssd) ||
                other.hrvAvgRmssd == hrvAvgRmssd) &&
            (identical(other.hrvAvgSdnn, hrvAvgSdnn) ||
                other.hrvAvgSdnn == hrvAvgSdnn) &&
            const DeepCollectionEquality()
                .equals(other._hrGranularDataArray, _hrGranularDataArray) &&
            const DeepCollectionEquality().equals(
                other._hrvSdnnGranularDataArray, _hrvSdnnGranularDataArray) &&
            const DeepCollectionEquality().equals(
                other._hrvRmssdGranularDataArray, _hrvRmssdGranularDataArray));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hrMaximumBpm,
      hrMinimumBpm,
      hrAvgBpm,
      hrRestingBpm,
      hrvAvgRmssd,
      hrvAvgSdnn,
      const DeepCollectionEquality().hash(_hrGranularDataArray),
      const DeepCollectionEquality().hash(_hrvSdnnGranularDataArray),
      const DeepCollectionEquality().hash(_hrvRmssdGranularDataArray));

  /// Create a copy of HeartRateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartRateDataImplCopyWith<_$HeartRateDataImpl> get copyWith =>
      __$$HeartRateDataImplCopyWithImpl<_$HeartRateDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartRateDataImplToJson(
      this,
    );
  }
}

abstract class _HeartRateData implements HeartRateData {
  const factory _HeartRateData(
      {@JsonKey(name: 'hr_maximum_bpm_int') final int? hrMaximumBpm,
      @JsonKey(name: 'hr_minimum_bpm_int') final int? hrMinimumBpm,
      @JsonKey(name: 'hr_avg_bpm_int') final int? hrAvgBpm,
      @JsonKey(name: 'hr_resting_bpm_int') final int? hrRestingBpm,
      @JsonKey(name: 'hrv_avg_rmssd_float') final double? hrvAvgRmssd,
      @JsonKey(name: 'hrv_avg_sdnn_float') final double? hrvAvgSdnn,
      @JsonKey(name: 'hr_granular_data_array')
      final List<HeartRateGranularData>? hrGranularDataArray,
      @JsonKey(name: 'hrv_sdnn_granular_data_array')
      final List<dynamic>? hrvSdnnGranularDataArray,
      @JsonKey(name: 'hrv_rmssd_granular_data_array')
      final List<dynamic>? hrvRmssdGranularDataArray}) = _$HeartRateDataImpl;

  factory _HeartRateData.fromJson(Map<String, dynamic> json) =
      _$HeartRateDataImpl.fromJson;

  @override
  @JsonKey(name: 'hr_maximum_bpm_int')
  int? get hrMaximumBpm;
  @override
  @JsonKey(name: 'hr_minimum_bpm_int')
  int? get hrMinimumBpm;
  @override
  @JsonKey(name: 'hr_avg_bpm_int')
  int? get hrAvgBpm;
  @override
  @JsonKey(name: 'hr_resting_bpm_int')
  int? get hrRestingBpm;
  @override
  @JsonKey(name: 'hrv_avg_rmssd_float')
  double? get hrvAvgRmssd;
  @override
  @JsonKey(name: 'hrv_avg_sdnn_float')
  double? get hrvAvgSdnn;
  @override
  @JsonKey(name: 'hr_granular_data_array')
  List<HeartRateGranularData>? get hrGranularDataArray;
  @override
  @JsonKey(name: 'hrv_sdnn_granular_data_array')
  List<dynamic>? get hrvSdnnGranularDataArray;
  @override
  @JsonKey(name: 'hrv_rmssd_granular_data_array')
  List<dynamic>? get hrvRmssdGranularDataArray;

  /// Create a copy of HeartRateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartRateDataImplCopyWith<_$HeartRateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeartRateGranularData _$HeartRateGranularDataFromJson(
    Map<String, dynamic> json) {
  return _HeartRateGranularData.fromJson(json);
}

/// @nodoc
mixin _$HeartRateGranularData {
  @JsonKey(name: 'hr_bpm_int')
  int? get hrBpm => throw _privateConstructorUsedError;
  @JsonKey(name: 'datetime_string')
  String? get datetimeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'interval_duration_seconds_float')
  double? get intervalDurationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_of_data_string')
  String? get sourceOfData => throw _privateConstructorUsedError;

  /// Serializes this HeartRateGranularData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeartRateGranularData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartRateGranularDataCopyWith<HeartRateGranularData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartRateGranularDataCopyWith<$Res> {
  factory $HeartRateGranularDataCopyWith(HeartRateGranularData value,
          $Res Function(HeartRateGranularData) then) =
      _$HeartRateGranularDataCopyWithImpl<$Res, HeartRateGranularData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hr_bpm_int') int? hrBpm,
      @JsonKey(name: 'datetime_string') String? datetimeString,
      @JsonKey(name: 'interval_duration_seconds_float')
      double? intervalDurationSeconds,
      @JsonKey(name: 'source_of_data_string') String? sourceOfData});
}

/// @nodoc
class _$HeartRateGranularDataCopyWithImpl<$Res,
        $Val extends HeartRateGranularData>
    implements $HeartRateGranularDataCopyWith<$Res> {
  _$HeartRateGranularDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartRateGranularData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hrBpm = freezed,
    Object? datetimeString = freezed,
    Object? intervalDurationSeconds = freezed,
    Object? sourceOfData = freezed,
  }) {
    return _then(_value.copyWith(
      hrBpm: freezed == hrBpm
          ? _value.hrBpm
          : hrBpm // ignore: cast_nullable_to_non_nullable
              as int?,
      datetimeString: freezed == datetimeString
          ? _value.datetimeString
          : datetimeString // ignore: cast_nullable_to_non_nullable
              as String?,
      intervalDurationSeconds: freezed == intervalDurationSeconds
          ? _value.intervalDurationSeconds
          : intervalDurationSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      sourceOfData: freezed == sourceOfData
          ? _value.sourceOfData
          : sourceOfData // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeartRateGranularDataImplCopyWith<$Res>
    implements $HeartRateGranularDataCopyWith<$Res> {
  factory _$$HeartRateGranularDataImplCopyWith(
          _$HeartRateGranularDataImpl value,
          $Res Function(_$HeartRateGranularDataImpl) then) =
      __$$HeartRateGranularDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hr_bpm_int') int? hrBpm,
      @JsonKey(name: 'datetime_string') String? datetimeString,
      @JsonKey(name: 'interval_duration_seconds_float')
      double? intervalDurationSeconds,
      @JsonKey(name: 'source_of_data_string') String? sourceOfData});
}

/// @nodoc
class __$$HeartRateGranularDataImplCopyWithImpl<$Res>
    extends _$HeartRateGranularDataCopyWithImpl<$Res,
        _$HeartRateGranularDataImpl>
    implements _$$HeartRateGranularDataImplCopyWith<$Res> {
  __$$HeartRateGranularDataImplCopyWithImpl(_$HeartRateGranularDataImpl _value,
      $Res Function(_$HeartRateGranularDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeartRateGranularData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hrBpm = freezed,
    Object? datetimeString = freezed,
    Object? intervalDurationSeconds = freezed,
    Object? sourceOfData = freezed,
  }) {
    return _then(_$HeartRateGranularDataImpl(
      hrBpm: freezed == hrBpm
          ? _value.hrBpm
          : hrBpm // ignore: cast_nullable_to_non_nullable
              as int?,
      datetimeString: freezed == datetimeString
          ? _value.datetimeString
          : datetimeString // ignore: cast_nullable_to_non_nullable
              as String?,
      intervalDurationSeconds: freezed == intervalDurationSeconds
          ? _value.intervalDurationSeconds
          : intervalDurationSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      sourceOfData: freezed == sourceOfData
          ? _value.sourceOfData
          : sourceOfData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartRateGranularDataImpl implements _HeartRateGranularData {
  const _$HeartRateGranularDataImpl(
      {@JsonKey(name: 'hr_bpm_int') this.hrBpm,
      @JsonKey(name: 'datetime_string') this.datetimeString,
      @JsonKey(name: 'interval_duration_seconds_float')
      this.intervalDurationSeconds,
      @JsonKey(name: 'source_of_data_string') this.sourceOfData});

  factory _$HeartRateGranularDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartRateGranularDataImplFromJson(json);

  @override
  @JsonKey(name: 'hr_bpm_int')
  final int? hrBpm;
  @override
  @JsonKey(name: 'datetime_string')
  final String? datetimeString;
  @override
  @JsonKey(name: 'interval_duration_seconds_float')
  final double? intervalDurationSeconds;
  @override
  @JsonKey(name: 'source_of_data_string')
  final String? sourceOfData;

  @override
  String toString() {
    return 'HeartRateGranularData(hrBpm: $hrBpm, datetimeString: $datetimeString, intervalDurationSeconds: $intervalDurationSeconds, sourceOfData: $sourceOfData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartRateGranularDataImpl &&
            (identical(other.hrBpm, hrBpm) || other.hrBpm == hrBpm) &&
            (identical(other.datetimeString, datetimeString) ||
                other.datetimeString == datetimeString) &&
            (identical(
                    other.intervalDurationSeconds, intervalDurationSeconds) ||
                other.intervalDurationSeconds == intervalDurationSeconds) &&
            (identical(other.sourceOfData, sourceOfData) ||
                other.sourceOfData == sourceOfData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hrBpm, datetimeString,
      intervalDurationSeconds, sourceOfData);

  /// Create a copy of HeartRateGranularData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartRateGranularDataImplCopyWith<_$HeartRateGranularDataImpl>
      get copyWith => __$$HeartRateGranularDataImplCopyWithImpl<
          _$HeartRateGranularDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartRateGranularDataImplToJson(
      this,
    );
  }
}

abstract class _HeartRateGranularData implements HeartRateGranularData {
  const factory _HeartRateGranularData(
          {@JsonKey(name: 'hr_bpm_int') final int? hrBpm,
          @JsonKey(name: 'datetime_string') final String? datetimeString,
          @JsonKey(name: 'interval_duration_seconds_float')
          final double? intervalDurationSeconds,
          @JsonKey(name: 'source_of_data_string') final String? sourceOfData}) =
      _$HeartRateGranularDataImpl;

  factory _HeartRateGranularData.fromJson(Map<String, dynamic> json) =
      _$HeartRateGranularDataImpl.fromJson;

  @override
  @JsonKey(name: 'hr_bpm_int')
  int? get hrBpm;
  @override
  @JsonKey(name: 'datetime_string')
  String? get datetimeString;
  @override
  @JsonKey(name: 'interval_duration_seconds_float')
  double? get intervalDurationSeconds;
  @override
  @JsonKey(name: 'source_of_data_string')
  String? get sourceOfData;

  /// Create a copy of HeartRateGranularData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartRateGranularDataImplCopyWith<_$HeartRateGranularDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HeartRateMetadata _$HeartRateMetadataFromJson(Map<String, dynamic> json) {
  return _HeartRateMetadata.fromJson(json);
}

/// @nodoc
mixin _$HeartRateMetadata {
  @JsonKey(name: 'datetime_string')
  String? get datetimeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id_string')
  String? get userIdString => throw _privateConstructorUsedError;
  @JsonKey(name: 'sources_of_data_array')
  List<String>? get sourcesOfDataArray => throw _privateConstructorUsedError;
  @JsonKey(name: 'was_the_user_under_physical_activity_bool')
  bool? get wasUserUnderPhysicalActivity => throw _privateConstructorUsedError;

  /// Serializes this HeartRateMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeartRateMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartRateMetadataCopyWith<HeartRateMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartRateMetadataCopyWith<$Res> {
  factory $HeartRateMetadataCopyWith(
          HeartRateMetadata value, $Res Function(HeartRateMetadata) then) =
      _$HeartRateMetadataCopyWithImpl<$Res, HeartRateMetadata>;
  @useResult
  $Res call(
      {@JsonKey(name: 'datetime_string') String? datetimeString,
      @JsonKey(name: 'user_id_string') String? userIdString,
      @JsonKey(name: 'sources_of_data_array') List<String>? sourcesOfDataArray,
      @JsonKey(name: 'was_the_user_under_physical_activity_bool')
      bool? wasUserUnderPhysicalActivity});
}

/// @nodoc
class _$HeartRateMetadataCopyWithImpl<$Res, $Val extends HeartRateMetadata>
    implements $HeartRateMetadataCopyWith<$Res> {
  _$HeartRateMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartRateMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetimeString = freezed,
    Object? userIdString = freezed,
    Object? sourcesOfDataArray = freezed,
    Object? wasUserUnderPhysicalActivity = freezed,
  }) {
    return _then(_value.copyWith(
      datetimeString: freezed == datetimeString
          ? _value.datetimeString
          : datetimeString // ignore: cast_nullable_to_non_nullable
              as String?,
      userIdString: freezed == userIdString
          ? _value.userIdString
          : userIdString // ignore: cast_nullable_to_non_nullable
              as String?,
      sourcesOfDataArray: freezed == sourcesOfDataArray
          ? _value.sourcesOfDataArray
          : sourcesOfDataArray // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      wasUserUnderPhysicalActivity: freezed == wasUserUnderPhysicalActivity
          ? _value.wasUserUnderPhysicalActivity
          : wasUserUnderPhysicalActivity // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeartRateMetadataImplCopyWith<$Res>
    implements $HeartRateMetadataCopyWith<$Res> {
  factory _$$HeartRateMetadataImplCopyWith(_$HeartRateMetadataImpl value,
          $Res Function(_$HeartRateMetadataImpl) then) =
      __$$HeartRateMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'datetime_string') String? datetimeString,
      @JsonKey(name: 'user_id_string') String? userIdString,
      @JsonKey(name: 'sources_of_data_array') List<String>? sourcesOfDataArray,
      @JsonKey(name: 'was_the_user_under_physical_activity_bool')
      bool? wasUserUnderPhysicalActivity});
}

/// @nodoc
class __$$HeartRateMetadataImplCopyWithImpl<$Res>
    extends _$HeartRateMetadataCopyWithImpl<$Res, _$HeartRateMetadataImpl>
    implements _$$HeartRateMetadataImplCopyWith<$Res> {
  __$$HeartRateMetadataImplCopyWithImpl(_$HeartRateMetadataImpl _value,
      $Res Function(_$HeartRateMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeartRateMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetimeString = freezed,
    Object? userIdString = freezed,
    Object? sourcesOfDataArray = freezed,
    Object? wasUserUnderPhysicalActivity = freezed,
  }) {
    return _then(_$HeartRateMetadataImpl(
      datetimeString: freezed == datetimeString
          ? _value.datetimeString
          : datetimeString // ignore: cast_nullable_to_non_nullable
              as String?,
      userIdString: freezed == userIdString
          ? _value.userIdString
          : userIdString // ignore: cast_nullable_to_non_nullable
              as String?,
      sourcesOfDataArray: freezed == sourcesOfDataArray
          ? _value._sourcesOfDataArray
          : sourcesOfDataArray // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      wasUserUnderPhysicalActivity: freezed == wasUserUnderPhysicalActivity
          ? _value.wasUserUnderPhysicalActivity
          : wasUserUnderPhysicalActivity // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartRateMetadataImpl implements _HeartRateMetadata {
  const _$HeartRateMetadataImpl(
      {@JsonKey(name: 'datetime_string') this.datetimeString,
      @JsonKey(name: 'user_id_string') this.userIdString,
      @JsonKey(name: 'sources_of_data_array')
      final List<String>? sourcesOfDataArray,
      @JsonKey(name: 'was_the_user_under_physical_activity_bool')
      this.wasUserUnderPhysicalActivity})
      : _sourcesOfDataArray = sourcesOfDataArray;

  factory _$HeartRateMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartRateMetadataImplFromJson(json);

  @override
  @JsonKey(name: 'datetime_string')
  final String? datetimeString;
  @override
  @JsonKey(name: 'user_id_string')
  final String? userIdString;
  final List<String>? _sourcesOfDataArray;
  @override
  @JsonKey(name: 'sources_of_data_array')
  List<String>? get sourcesOfDataArray {
    final value = _sourcesOfDataArray;
    if (value == null) return null;
    if (_sourcesOfDataArray is EqualUnmodifiableListView)
      return _sourcesOfDataArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'was_the_user_under_physical_activity_bool')
  final bool? wasUserUnderPhysicalActivity;

  @override
  String toString() {
    return 'HeartRateMetadata(datetimeString: $datetimeString, userIdString: $userIdString, sourcesOfDataArray: $sourcesOfDataArray, wasUserUnderPhysicalActivity: $wasUserUnderPhysicalActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartRateMetadataImpl &&
            (identical(other.datetimeString, datetimeString) ||
                other.datetimeString == datetimeString) &&
            (identical(other.userIdString, userIdString) ||
                other.userIdString == userIdString) &&
            const DeepCollectionEquality()
                .equals(other._sourcesOfDataArray, _sourcesOfDataArray) &&
            (identical(other.wasUserUnderPhysicalActivity,
                    wasUserUnderPhysicalActivity) ||
                other.wasUserUnderPhysicalActivity ==
                    wasUserUnderPhysicalActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      datetimeString,
      userIdString,
      const DeepCollectionEquality().hash(_sourcesOfDataArray),
      wasUserUnderPhysicalActivity);

  /// Create a copy of HeartRateMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartRateMetadataImplCopyWith<_$HeartRateMetadataImpl> get copyWith =>
      __$$HeartRateMetadataImplCopyWithImpl<_$HeartRateMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartRateMetadataImplToJson(
      this,
    );
  }
}

abstract class _HeartRateMetadata implements HeartRateMetadata {
  const factory _HeartRateMetadata(
      {@JsonKey(name: 'datetime_string') final String? datetimeString,
      @JsonKey(name: 'user_id_string') final String? userIdString,
      @JsonKey(name: 'sources_of_data_array')
      final List<String>? sourcesOfDataArray,
      @JsonKey(name: 'was_the_user_under_physical_activity_bool')
      final bool? wasUserUnderPhysicalActivity}) = _$HeartRateMetadataImpl;

  factory _HeartRateMetadata.fromJson(Map<String, dynamic> json) =
      _$HeartRateMetadataImpl.fromJson;

  @override
  @JsonKey(name: 'datetime_string')
  String? get datetimeString;
  @override
  @JsonKey(name: 'user_id_string')
  String? get userIdString;
  @override
  @JsonKey(name: 'sources_of_data_array')
  List<String>? get sourcesOfDataArray;
  @override
  @JsonKey(name: 'was_the_user_under_physical_activity_bool')
  bool? get wasUserUnderPhysicalActivity;

  /// Create a copy of HeartRateMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartRateMetadataImplCopyWith<_$HeartRateMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NonStructuredData _$NonStructuredDataFromJson(Map<String, dynamic> json) {
  return _NonStructuredData.fromJson(json);
}

/// @nodoc
mixin _$NonStructuredData {
  @JsonKey(name: 'source_of_data_string')
  String? get sourceOfData => throw _privateConstructorUsedError;

  /// Serializes this NonStructuredData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NonStructuredData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NonStructuredDataCopyWith<NonStructuredData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonStructuredDataCopyWith<$Res> {
  factory $NonStructuredDataCopyWith(
          NonStructuredData value, $Res Function(NonStructuredData) then) =
      _$NonStructuredDataCopyWithImpl<$Res, NonStructuredData>;
  @useResult
  $Res call({@JsonKey(name: 'source_of_data_string') String? sourceOfData});
}

/// @nodoc
class _$NonStructuredDataCopyWithImpl<$Res, $Val extends NonStructuredData>
    implements $NonStructuredDataCopyWith<$Res> {
  _$NonStructuredDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NonStructuredData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceOfData = freezed,
  }) {
    return _then(_value.copyWith(
      sourceOfData: freezed == sourceOfData
          ? _value.sourceOfData
          : sourceOfData // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NonStructuredDataImplCopyWith<$Res>
    implements $NonStructuredDataCopyWith<$Res> {
  factory _$$NonStructuredDataImplCopyWith(_$NonStructuredDataImpl value,
          $Res Function(_$NonStructuredDataImpl) then) =
      __$$NonStructuredDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'source_of_data_string') String? sourceOfData});
}

/// @nodoc
class __$$NonStructuredDataImplCopyWithImpl<$Res>
    extends _$NonStructuredDataCopyWithImpl<$Res, _$NonStructuredDataImpl>
    implements _$$NonStructuredDataImplCopyWith<$Res> {
  __$$NonStructuredDataImplCopyWithImpl(_$NonStructuredDataImpl _value,
      $Res Function(_$NonStructuredDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NonStructuredData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceOfData = freezed,
  }) {
    return _then(_$NonStructuredDataImpl(
      sourceOfData: freezed == sourceOfData
          ? _value.sourceOfData
          : sourceOfData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NonStructuredDataImpl implements _NonStructuredData {
  const _$NonStructuredDataImpl(
      {@JsonKey(name: 'source_of_data_string') this.sourceOfData});

  factory _$NonStructuredDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NonStructuredDataImplFromJson(json);

  @override
  @JsonKey(name: 'source_of_data_string')
  final String? sourceOfData;

  @override
  String toString() {
    return 'NonStructuredData(sourceOfData: $sourceOfData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NonStructuredDataImpl &&
            (identical(other.sourceOfData, sourceOfData) ||
                other.sourceOfData == sourceOfData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sourceOfData);

  /// Create a copy of NonStructuredData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NonStructuredDataImplCopyWith<_$NonStructuredDataImpl> get copyWith =>
      __$$NonStructuredDataImplCopyWithImpl<_$NonStructuredDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NonStructuredDataImplToJson(
      this,
    );
  }
}

abstract class _NonStructuredData implements NonStructuredData {
  const factory _NonStructuredData(
      {@JsonKey(name: 'source_of_data_string')
      final String? sourceOfData}) = _$NonStructuredDataImpl;

  factory _NonStructuredData.fromJson(Map<String, dynamic> json) =
      _$NonStructuredDataImpl.fromJson;

  @override
  @JsonKey(name: 'source_of_data_string')
  String? get sourceOfData;

  /// Create a copy of NonStructuredData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NonStructuredDataImplCopyWith<_$NonStructuredDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
