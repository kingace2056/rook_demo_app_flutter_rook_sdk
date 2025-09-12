// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sleep_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SleepSummary _$SleepSummaryFromJson(Map<String, dynamic> json) {
  return _SleepSummary.fromJson(json);
}

/// @nodoc
mixin _$SleepSummary {
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
  @JsonKey(name: 'sleep_health')
  SleepHealth? get sleepHealth => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAtRook => throw _privateConstructorUsedError;
  @JsonKey(name: 'webhook_received_at')
  DateTime? get webhookReceivedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;

  /// Serializes this SleepSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SleepSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SleepSummaryCopyWith<SleepSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SleepSummaryCopyWith<$Res> {
  factory $SleepSummaryCopyWith(
    SleepSummary value,
    $Res Function(SleepSummary) then,
  ) = _$SleepSummaryCopyWithImpl<$Res, SleepSummary>;
  @useResult
  $Res call({
    @JsonKey(name: '_id') String? id,
    int? version,
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'document_version') int? documentVersion,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'sleep_health') SleepHealth? sleepHealth,
    @JsonKey(name: 'created_at') DateTime? createdAtRook,
    @JsonKey(name: 'webhook_received_at') DateTime? webhookReceivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  });

  $SleepHealthCopyWith<$Res>? get sleepHealth;
}

/// @nodoc
class _$SleepSummaryCopyWithImpl<$Res, $Val extends SleepSummary>
    implements $SleepSummaryCopyWith<$Res> {
  _$SleepSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SleepSummary
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
    Object? sleepHealth = freezed,
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
            sleepHealth: freezed == sleepHealth
                ? _value.sleepHealth
                : sleepHealth // ignore: cast_nullable_to_non_nullable
                      as SleepHealth?,
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

  /// Create a copy of SleepSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SleepHealthCopyWith<$Res>? get sleepHealth {
    if (_value.sleepHealth == null) {
      return null;
    }

    return $SleepHealthCopyWith<$Res>(_value.sleepHealth!, (value) {
      return _then(_value.copyWith(sleepHealth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SleepSummaryImplCopyWith<$Res>
    implements $SleepSummaryCopyWith<$Res> {
  factory _$$SleepSummaryImplCopyWith(
    _$SleepSummaryImpl value,
    $Res Function(_$SleepSummaryImpl) then,
  ) = __$$SleepSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: '_id') String? id,
    int? version,
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'document_version') int? documentVersion,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'sleep_health') SleepHealth? sleepHealth,
    @JsonKey(name: 'created_at') DateTime? createdAtRook,
    @JsonKey(name: 'webhook_received_at') DateTime? webhookReceivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  });

  @override
  $SleepHealthCopyWith<$Res>? get sleepHealth;
}

/// @nodoc
class __$$SleepSummaryImplCopyWithImpl<$Res>
    extends _$SleepSummaryCopyWithImpl<$Res, _$SleepSummaryImpl>
    implements _$$SleepSummaryImplCopyWith<$Res> {
  __$$SleepSummaryImplCopyWithImpl(
    _$SleepSummaryImpl _value,
    $Res Function(_$SleepSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SleepSummary
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
    Object? sleepHealth = freezed,
    Object? createdAtRook = freezed,
    Object? webhookReceivedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(
      _$SleepSummaryImpl(
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
        sleepHealth: freezed == sleepHealth
            ? _value.sleepHealth
            : sleepHealth // ignore: cast_nullable_to_non_nullable
                  as SleepHealth?,
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
class _$SleepSummaryImpl implements _SleepSummary {
  _$SleepSummaryImpl({
    @JsonKey(name: '_id') this.id,
    this.version,
    @JsonKey(name: 'client_uuid') this.clientUuid,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(name: 'document_version') this.documentVersion,
    @JsonKey(name: 'data_structure') this.dataStructure,
    @JsonKey(name: 'sleep_health') this.sleepHealth,
    @JsonKey(name: 'created_at') this.createdAtRook,
    @JsonKey(name: 'webhook_received_at') this.webhookReceivedAt,
    this.createdAt,
    this.updatedAt,
    @JsonKey(name: '__v') this.v,
  });

  factory _$SleepSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SleepSummaryImplFromJson(json);

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
  @JsonKey(name: 'sleep_health')
  final SleepHealth? sleepHealth;
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
    return 'SleepSummary(id: $id, version: $version, clientUuid: $clientUuid, userId: $userId, documentVersion: $documentVersion, dataStructure: $dataStructure, sleepHealth: $sleepHealth, createdAtRook: $createdAtRook, webhookReceivedAt: $webhookReceivedAt, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SleepSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.clientUuid, clientUuid) ||
                other.clientUuid == clientUuid) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.documentVersion, documentVersion) ||
                other.documentVersion == documentVersion) &&
            (identical(other.dataStructure, dataStructure) ||
                other.dataStructure == dataStructure) &&
            (identical(other.sleepHealth, sleepHealth) ||
                other.sleepHealth == sleepHealth) &&
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
    sleepHealth,
    createdAtRook,
    webhookReceivedAt,
    createdAt,
    updatedAt,
    v,
  );

  /// Create a copy of SleepSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SleepSummaryImplCopyWith<_$SleepSummaryImpl> get copyWith =>
      __$$SleepSummaryImplCopyWithImpl<_$SleepSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SleepSummaryImplToJson(this);
  }
}

abstract class _SleepSummary implements SleepSummary {
  factory _SleepSummary({
    @JsonKey(name: '_id') final String? id,
    final int? version,
    @JsonKey(name: 'client_uuid') final String? clientUuid,
    @JsonKey(name: 'user_id') final String? userId,
    @JsonKey(name: 'document_version') final int? documentVersion,
    @JsonKey(name: 'data_structure') final String? dataStructure,
    @JsonKey(name: 'sleep_health') final SleepHealth? sleepHealth,
    @JsonKey(name: 'created_at') final DateTime? createdAtRook,
    @JsonKey(name: 'webhook_received_at') final DateTime? webhookReceivedAt,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    @JsonKey(name: '__v') final int? v,
  }) = _$SleepSummaryImpl;

  factory _SleepSummary.fromJson(Map<String, dynamic> json) =
      _$SleepSummaryImpl.fromJson;

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
  @JsonKey(name: 'sleep_health')
  SleepHealth? get sleepHealth;
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

  /// Create a copy of SleepSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SleepSummaryImplCopyWith<_$SleepSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
