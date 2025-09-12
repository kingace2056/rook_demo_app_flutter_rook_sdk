// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raw_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RawData _$RawDataFromJson(Map<String, dynamic> json) {
  return _RawData.fromJson(json);
}

/// @nodoc
mixin _$RawData {
  int? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_structure')
  String? get dataStructure => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_uuid')
  String? get clientUuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_version')
  int? get documentVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'auto_detected')
  bool? get autoDetected => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_health')
  BodyHealth? get bodyHealth => throw _privateConstructorUsedError;

  /// Serializes this RawData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RawData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RawDataCopyWith<RawData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawDataCopyWith<$Res> {
  factory $RawDataCopyWith(RawData value, $Res Function(RawData) then) =
      _$RawDataCopyWithImpl<$Res, RawData>;
  @useResult
  $Res call(
      {int? version,
      @JsonKey(name: 'data_structure') String? dataStructure,
      @JsonKey(name: 'client_uuid') String? clientUuid,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'document_version') int? documentVersion,
      @JsonKey(name: 'auto_detected') bool? autoDetected,
      @JsonKey(name: 'body_health') BodyHealth? bodyHealth});

  $BodyHealthCopyWith<$Res>? get bodyHealth;
}

/// @nodoc
class _$RawDataCopyWithImpl<$Res, $Val extends RawData>
    implements $RawDataCopyWith<$Res> {
  _$RawDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RawData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? dataStructure = freezed,
    Object? clientUuid = freezed,
    Object? userId = freezed,
    Object? documentVersion = freezed,
    Object? autoDetected = freezed,
    Object? bodyHealth = freezed,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      dataStructure: freezed == dataStructure
          ? _value.dataStructure
          : dataStructure // ignore: cast_nullable_to_non_nullable
              as String?,
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
      autoDetected: freezed == autoDetected
          ? _value.autoDetected
          : autoDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      bodyHealth: freezed == bodyHealth
          ? _value.bodyHealth
          : bodyHealth // ignore: cast_nullable_to_non_nullable
              as BodyHealth?,
    ) as $Val);
  }

  /// Create a copy of RawData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodyHealthCopyWith<$Res>? get bodyHealth {
    if (_value.bodyHealth == null) {
      return null;
    }

    return $BodyHealthCopyWith<$Res>(_value.bodyHealth!, (value) {
      return _then(_value.copyWith(bodyHealth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RawDataImplCopyWith<$Res> implements $RawDataCopyWith<$Res> {
  factory _$$RawDataImplCopyWith(
          _$RawDataImpl value, $Res Function(_$RawDataImpl) then) =
      __$$RawDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? version,
      @JsonKey(name: 'data_structure') String? dataStructure,
      @JsonKey(name: 'client_uuid') String? clientUuid,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'document_version') int? documentVersion,
      @JsonKey(name: 'auto_detected') bool? autoDetected,
      @JsonKey(name: 'body_health') BodyHealth? bodyHealth});

  @override
  $BodyHealthCopyWith<$Res>? get bodyHealth;
}

/// @nodoc
class __$$RawDataImplCopyWithImpl<$Res>
    extends _$RawDataCopyWithImpl<$Res, _$RawDataImpl>
    implements _$$RawDataImplCopyWith<$Res> {
  __$$RawDataImplCopyWithImpl(
      _$RawDataImpl _value, $Res Function(_$RawDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RawData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? dataStructure = freezed,
    Object? clientUuid = freezed,
    Object? userId = freezed,
    Object? documentVersion = freezed,
    Object? autoDetected = freezed,
    Object? bodyHealth = freezed,
  }) {
    return _then(_$RawDataImpl(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      dataStructure: freezed == dataStructure
          ? _value.dataStructure
          : dataStructure // ignore: cast_nullable_to_non_nullable
              as String?,
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
      autoDetected: freezed == autoDetected
          ? _value.autoDetected
          : autoDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      bodyHealth: freezed == bodyHealth
          ? _value.bodyHealth
          : bodyHealth // ignore: cast_nullable_to_non_nullable
              as BodyHealth?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawDataImpl implements _RawData {
  _$RawDataImpl(
      {this.version,
      @JsonKey(name: 'data_structure') this.dataStructure,
      @JsonKey(name: 'client_uuid') this.clientUuid,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'document_version') this.documentVersion,
      @JsonKey(name: 'auto_detected') this.autoDetected,
      @JsonKey(name: 'body_health') this.bodyHealth});

  factory _$RawDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawDataImplFromJson(json);

  @override
  final int? version;
  @override
  @JsonKey(name: 'data_structure')
  final String? dataStructure;
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
  @JsonKey(name: 'auto_detected')
  final bool? autoDetected;
  @override
  @JsonKey(name: 'body_health')
  final BodyHealth? bodyHealth;

  @override
  String toString() {
    return 'RawData(version: $version, dataStructure: $dataStructure, clientUuid: $clientUuid, userId: $userId, documentVersion: $documentVersion, autoDetected: $autoDetected, bodyHealth: $bodyHealth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawDataImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.dataStructure, dataStructure) ||
                other.dataStructure == dataStructure) &&
            (identical(other.clientUuid, clientUuid) ||
                other.clientUuid == clientUuid) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.documentVersion, documentVersion) ||
                other.documentVersion == documentVersion) &&
            (identical(other.autoDetected, autoDetected) ||
                other.autoDetected == autoDetected) &&
            (identical(other.bodyHealth, bodyHealth) ||
                other.bodyHealth == bodyHealth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version, dataStructure,
      clientUuid, userId, documentVersion, autoDetected, bodyHealth);

  /// Create a copy of RawData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RawDataImplCopyWith<_$RawDataImpl> get copyWith =>
      __$$RawDataImplCopyWithImpl<_$RawDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RawDataImplToJson(
      this,
    );
  }
}

abstract class _RawData implements RawData {
  factory _RawData(
          {final int? version,
          @JsonKey(name: 'data_structure') final String? dataStructure,
          @JsonKey(name: 'client_uuid') final String? clientUuid,
          @JsonKey(name: 'user_id') final String? userId,
          @JsonKey(name: 'document_version') final int? documentVersion,
          @JsonKey(name: 'auto_detected') final bool? autoDetected,
          @JsonKey(name: 'body_health') final BodyHealth? bodyHealth}) =
      _$RawDataImpl;

  factory _RawData.fromJson(Map<String, dynamic> json) = _$RawDataImpl.fromJson;

  @override
  int? get version;
  @override
  @JsonKey(name: 'data_structure')
  String? get dataStructure;
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
  @JsonKey(name: 'auto_detected')
  bool? get autoDetected;
  @override
  @JsonKey(name: 'body_health')
  BodyHealth? get bodyHealth;

  /// Create a copy of RawData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RawDataImplCopyWith<_$RawDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
