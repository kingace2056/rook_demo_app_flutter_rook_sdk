// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raw_webhook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RawWebhook _$RawWebhookFromJson(Map<String, dynamic> json) {
  return _RawWebhook.fromJson(json);
}

/// @nodoc
mixin _$RawWebhook {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_uuid')
  String? get clientUuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_version')
  int? get documentVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_structure')
  String? get dataStructure => throw _privateConstructorUsedError;
  @JsonKey(name: 'raw_data')
  RawData? get rawData => throw _privateConstructorUsedError;
  bool? get processed => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAtRook => throw _privateConstructorUsedError;
  @JsonKey(name: 'webhook_received_at')
  DateTime? get webhookReceivedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;

  /// Serializes this RawWebhook to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RawWebhook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RawWebhookCopyWith<RawWebhook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawWebhookCopyWith<$Res> {
  factory $RawWebhookCopyWith(
    RawWebhook value,
    $Res Function(RawWebhook) then,
  ) = _$RawWebhookCopyWithImpl<$Res, RawWebhook>;
  @useResult
  $Res call({
    @JsonKey(name: '_id') String? id,
    int? version,
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'document_version') int? documentVersion,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'raw_data') RawData? rawData,
    bool? processed,
    @JsonKey(name: 'created_at') DateTime? createdAtRook,
    @JsonKey(name: 'webhook_received_at') DateTime? webhookReceivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  });

  $RawDataCopyWith<$Res>? get rawData;
}

/// @nodoc
class _$RawWebhookCopyWithImpl<$Res, $Val extends RawWebhook>
    implements $RawWebhookCopyWith<$Res> {
  _$RawWebhookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RawWebhook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? clientUuid = freezed,
    Object? userId = freezed,
    Object? documentVersion = freezed,
    Object? dataStructure = freezed,
    Object? rawData = freezed,
    Object? processed = freezed,
    Object? createdAtRook = freezed,
    Object? webhookReceivedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(
      _value.copyWith(
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
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            documentVersion: freezed == documentVersion
                ? _value.documentVersion
                : documentVersion // ignore: cast_nullable_to_non_nullable
                      as int?,
            dataStructure: freezed == dataStructure
                ? _value.dataStructure
                : dataStructure // ignore: cast_nullable_to_non_nullable
                      as String?,
            rawData: freezed == rawData
                ? _value.rawData
                : rawData // ignore: cast_nullable_to_non_nullable
                      as RawData?,
            processed: freezed == processed
                ? _value.processed
                : processed // ignore: cast_nullable_to_non_nullable
                      as bool?,
            createdAtRook: freezed == createdAtRook
                ? _value.createdAtRook
                : createdAtRook // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            webhookReceivedAt: freezed == webhookReceivedAt
                ? _value.webhookReceivedAt
                : webhookReceivedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            v: freezed == v
                ? _value.v
                : v // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }

  /// Create a copy of RawWebhook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RawDataCopyWith<$Res>? get rawData {
    if (_value.rawData == null) {
      return null;
    }

    return $RawDataCopyWith<$Res>(_value.rawData!, (value) {
      return _then(_value.copyWith(rawData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RawWebhookImplCopyWith<$Res>
    implements $RawWebhookCopyWith<$Res> {
  factory _$$RawWebhookImplCopyWith(
    _$RawWebhookImpl value,
    $Res Function(_$RawWebhookImpl) then,
  ) = __$$RawWebhookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: '_id') String? id,
    int? version,
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'document_version') int? documentVersion,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'raw_data') RawData? rawData,
    bool? processed,
    @JsonKey(name: 'created_at') DateTime? createdAtRook,
    @JsonKey(name: 'webhook_received_at') DateTime? webhookReceivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  });

  @override
  $RawDataCopyWith<$Res>? get rawData;
}

/// @nodoc
class __$$RawWebhookImplCopyWithImpl<$Res>
    extends _$RawWebhookCopyWithImpl<$Res, _$RawWebhookImpl>
    implements _$$RawWebhookImplCopyWith<$Res> {
  __$$RawWebhookImplCopyWithImpl(
    _$RawWebhookImpl _value,
    $Res Function(_$RawWebhookImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RawWebhook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? clientUuid = freezed,
    Object? userId = freezed,
    Object? documentVersion = freezed,
    Object? dataStructure = freezed,
    Object? rawData = freezed,
    Object? processed = freezed,
    Object? createdAtRook = freezed,
    Object? webhookReceivedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(
      _$RawWebhookImpl(
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
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        documentVersion: freezed == documentVersion
            ? _value.documentVersion
            : documentVersion // ignore: cast_nullable_to_non_nullable
                  as int?,
        dataStructure: freezed == dataStructure
            ? _value.dataStructure
            : dataStructure // ignore: cast_nullable_to_non_nullable
                  as String?,
        rawData: freezed == rawData
            ? _value.rawData
            : rawData // ignore: cast_nullable_to_non_nullable
                  as RawData?,
        processed: freezed == processed
            ? _value.processed
            : processed // ignore: cast_nullable_to_non_nullable
                  as bool?,
        createdAtRook: freezed == createdAtRook
            ? _value.createdAtRook
            : createdAtRook // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        webhookReceivedAt: freezed == webhookReceivedAt
            ? _value.webhookReceivedAt
            : webhookReceivedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        v: freezed == v
            ? _value.v
            : v // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RawWebhookImpl implements _RawWebhook {
  _$RawWebhookImpl({
    @JsonKey(name: '_id') this.id,
    this.version,
    @JsonKey(name: 'client_uuid') this.clientUuid,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(name: 'document_version') this.documentVersion,
    @JsonKey(name: 'data_structure') this.dataStructure,
    @JsonKey(name: 'raw_data') this.rawData,
    this.processed,
    @JsonKey(name: 'created_at') this.createdAtRook,
    @JsonKey(name: 'webhook_received_at') this.webhookReceivedAt,
    this.createdAt,
    this.updatedAt,
    @JsonKey(name: '__v') this.v,
  });

  factory _$RawWebhookImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawWebhookImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final int? version;
  @override
  @JsonKey(name: 'client_uuid')
  final String? clientUuid;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'document_version')
  final int? documentVersion;
  @override
  @JsonKey(name: 'data_structure')
  final String? dataStructure;
  @override
  @JsonKey(name: 'raw_data')
  final RawData? rawData;
  @override
  final bool? processed;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAtRook;
  @override
  @JsonKey(name: 'webhook_received_at')
  final DateTime? webhookReceivedAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? v;

  @override
  String toString() {
    return 'RawWebhook(id: $id, version: $version, clientUuid: $clientUuid, userId: $userId, documentVersion: $documentVersion, dataStructure: $dataStructure, rawData: $rawData, processed: $processed, createdAtRook: $createdAtRook, webhookReceivedAt: $webhookReceivedAt, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawWebhookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.clientUuid, clientUuid) ||
                other.clientUuid == clientUuid) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.documentVersion, documentVersion) ||
                other.documentVersion == documentVersion) &&
            (identical(other.dataStructure, dataStructure) ||
                other.dataStructure == dataStructure) &&
            (identical(other.rawData, rawData) || other.rawData == rawData) &&
            (identical(other.processed, processed) ||
                other.processed == processed) &&
            (identical(other.createdAtRook, createdAtRook) ||
                other.createdAtRook == createdAtRook) &&
            (identical(other.webhookReceivedAt, webhookReceivedAt) ||
                other.webhookReceivedAt == webhookReceivedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
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
    rawData,
    processed,
    createdAtRook,
    webhookReceivedAt,
    createdAt,
    updatedAt,
    v,
  );

  /// Create a copy of RawWebhook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RawWebhookImplCopyWith<_$RawWebhookImpl> get copyWith =>
      __$$RawWebhookImplCopyWithImpl<_$RawWebhookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RawWebhookImplToJson(this);
  }
}

abstract class _RawWebhook implements RawWebhook {
  factory _RawWebhook({
    @JsonKey(name: '_id') final String? id,
    final int? version,
    @JsonKey(name: 'client_uuid') final String? clientUuid,
    @JsonKey(name: 'user_id') final String? userId,
    @JsonKey(name: 'document_version') final int? documentVersion,
    @JsonKey(name: 'data_structure') final String? dataStructure,
    @JsonKey(name: 'raw_data') final RawData? rawData,
    final bool? processed,
    @JsonKey(name: 'created_at') final DateTime? createdAtRook,
    @JsonKey(name: 'webhook_received_at') final DateTime? webhookReceivedAt,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    @JsonKey(name: '__v') final int? v,
  }) = _$RawWebhookImpl;

  factory _RawWebhook.fromJson(Map<String, dynamic> json) =
      _$RawWebhookImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  int? get version;
  @override
  @JsonKey(name: 'client_uuid')
  String? get clientUuid;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'document_version')
  int? get documentVersion;
  @override
  @JsonKey(name: 'data_structure')
  String? get dataStructure;
  @override
  @JsonKey(name: 'raw_data')
  RawData? get rawData;
  @override
  bool? get processed;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAtRook;
  @override
  @JsonKey(name: 'webhook_received_at')
  DateTime? get webhookReceivedAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(name: '__v')
  int? get v;

  /// Create a copy of RawWebhook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RawWebhookImplCopyWith<_$RawWebhookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
