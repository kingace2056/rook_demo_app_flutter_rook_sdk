// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_records')
  int? get totalRecords => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  DataType? get types => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'total_records') int? totalRecords,
      @JsonKey(name: 'data') DataType? types});

  $DataTypeCopyWith<$Res>? get types;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? totalRecords = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as DataType?,
    ) as $Val);
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataTypeCopyWith<$Res>? get types {
    if (_value.types == null) {
      return null;
    }

    return $DataTypeCopyWith<$Res>(_value.types!, (value) {
      return _then(_value.copyWith(types: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'total_records') int? totalRecords,
      @JsonKey(name: 'data') DataType? types});

  @override
  $DataTypeCopyWith<$Res>? get types;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? totalRecords = freezed,
    Object? types = freezed,
  }) {
    return _then(_$DataImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as DataType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {@JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'total_records') this.totalRecords,
      @JsonKey(name: 'data') this.types});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'total_records')
  final int? totalRecords;
  @override
  @JsonKey(name: 'data')
  final DataType? types;

  @override
  String toString() {
    return 'Data(userId: $userId, totalRecords: $totalRecords, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords) &&
            (identical(other.types, types) || other.types == types));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, totalRecords, types);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
      {@JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'total_records') final int? totalRecords,
      @JsonKey(name: 'data') final DataType? types}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'total_records')
  int? get totalRecords;
  @override
  @JsonKey(name: 'data')
  DataType? get types;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataType _$DataTypeFromJson(Map<String, dynamic> json) {
  return _DataType.fromJson(json);
}

/// @nodoc
mixin _$DataType {
  @JsonKey(name: 'health_scores')
  List<HealthScore>? get healthScores => throw _privateConstructorUsedError;
  @JsonKey(name: 'health_events')
  List<HealthEvent>? get healthEvents => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_summaries')
  List<BodySummary>? get bodySummaries => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_summaries')
  List<SleepSummary>? get sleepSummaries => throw _privateConstructorUsedError;
  @JsonKey(name: 'physical_summaries')
  List<PhysicalSummary>? get physicalSummaries =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'raw_webhooks')
  List<RawWebhook>? get rawWebhooks => throw _privateConstructorUsedError;

  /// Serializes this DataType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataTypeCopyWith<DataType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTypeCopyWith<$Res> {
  factory $DataTypeCopyWith(DataType value, $Res Function(DataType) then) =
      _$DataTypeCopyWithImpl<$Res, DataType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'health_scores') List<HealthScore>? healthScores,
      @JsonKey(name: 'health_events') List<HealthEvent>? healthEvents,
      @JsonKey(name: 'body_summaries') List<BodySummary>? bodySummaries,
      @JsonKey(name: 'sleep_summaries') List<SleepSummary>? sleepSummaries,
      @JsonKey(name: 'physical_summaries')
      List<PhysicalSummary>? physicalSummaries,
      @JsonKey(name: 'raw_webhooks') List<RawWebhook>? rawWebhooks});
}

/// @nodoc
class _$DataTypeCopyWithImpl<$Res, $Val extends DataType>
    implements $DataTypeCopyWith<$Res> {
  _$DataTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? healthScores = freezed,
    Object? healthEvents = freezed,
    Object? bodySummaries = freezed,
    Object? sleepSummaries = freezed,
    Object? physicalSummaries = freezed,
    Object? rawWebhooks = freezed,
  }) {
    return _then(_value.copyWith(
      healthScores: freezed == healthScores
          ? _value.healthScores
          : healthScores // ignore: cast_nullable_to_non_nullable
              as List<HealthScore>?,
      healthEvents: freezed == healthEvents
          ? _value.healthEvents
          : healthEvents // ignore: cast_nullable_to_non_nullable
              as List<HealthEvent>?,
      bodySummaries: freezed == bodySummaries
          ? _value.bodySummaries
          : bodySummaries // ignore: cast_nullable_to_non_nullable
              as List<BodySummary>?,
      sleepSummaries: freezed == sleepSummaries
          ? _value.sleepSummaries
          : sleepSummaries // ignore: cast_nullable_to_non_nullable
              as List<SleepSummary>?,
      physicalSummaries: freezed == physicalSummaries
          ? _value.physicalSummaries
          : physicalSummaries // ignore: cast_nullable_to_non_nullable
              as List<PhysicalSummary>?,
      rawWebhooks: freezed == rawWebhooks
          ? _value.rawWebhooks
          : rawWebhooks // ignore: cast_nullable_to_non_nullable
              as List<RawWebhook>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataTypeImplCopyWith<$Res>
    implements $DataTypeCopyWith<$Res> {
  factory _$$DataTypeImplCopyWith(
          _$DataTypeImpl value, $Res Function(_$DataTypeImpl) then) =
      __$$DataTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'health_scores') List<HealthScore>? healthScores,
      @JsonKey(name: 'health_events') List<HealthEvent>? healthEvents,
      @JsonKey(name: 'body_summaries') List<BodySummary>? bodySummaries,
      @JsonKey(name: 'sleep_summaries') List<SleepSummary>? sleepSummaries,
      @JsonKey(name: 'physical_summaries')
      List<PhysicalSummary>? physicalSummaries,
      @JsonKey(name: 'raw_webhooks') List<RawWebhook>? rawWebhooks});
}

/// @nodoc
class __$$DataTypeImplCopyWithImpl<$Res>
    extends _$DataTypeCopyWithImpl<$Res, _$DataTypeImpl>
    implements _$$DataTypeImplCopyWith<$Res> {
  __$$DataTypeImplCopyWithImpl(
      _$DataTypeImpl _value, $Res Function(_$DataTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? healthScores = freezed,
    Object? healthEvents = freezed,
    Object? bodySummaries = freezed,
    Object? sleepSummaries = freezed,
    Object? physicalSummaries = freezed,
    Object? rawWebhooks = freezed,
  }) {
    return _then(_$DataTypeImpl(
      healthScores: freezed == healthScores
          ? _value._healthScores
          : healthScores // ignore: cast_nullable_to_non_nullable
              as List<HealthScore>?,
      healthEvents: freezed == healthEvents
          ? _value._healthEvents
          : healthEvents // ignore: cast_nullable_to_non_nullable
              as List<HealthEvent>?,
      bodySummaries: freezed == bodySummaries
          ? _value._bodySummaries
          : bodySummaries // ignore: cast_nullable_to_non_nullable
              as List<BodySummary>?,
      sleepSummaries: freezed == sleepSummaries
          ? _value._sleepSummaries
          : sleepSummaries // ignore: cast_nullable_to_non_nullable
              as List<SleepSummary>?,
      physicalSummaries: freezed == physicalSummaries
          ? _value._physicalSummaries
          : physicalSummaries // ignore: cast_nullable_to_non_nullable
              as List<PhysicalSummary>?,
      rawWebhooks: freezed == rawWebhooks
          ? _value._rawWebhooks
          : rawWebhooks // ignore: cast_nullable_to_non_nullable
              as List<RawWebhook>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataTypeImpl implements _DataType {
  _$DataTypeImpl(
      {@JsonKey(name: 'health_scores') final List<HealthScore>? healthScores,
      @JsonKey(name: 'health_events') final List<HealthEvent>? healthEvents,
      @JsonKey(name: 'body_summaries') final List<BodySummary>? bodySummaries,
      @JsonKey(name: 'sleep_summaries')
      final List<SleepSummary>? sleepSummaries,
      @JsonKey(name: 'physical_summaries')
      final List<PhysicalSummary>? physicalSummaries,
      @JsonKey(name: 'raw_webhooks') final List<RawWebhook>? rawWebhooks})
      : _healthScores = healthScores,
        _healthEvents = healthEvents,
        _bodySummaries = bodySummaries,
        _sleepSummaries = sleepSummaries,
        _physicalSummaries = physicalSummaries,
        _rawWebhooks = rawWebhooks;

  factory _$DataTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataTypeImplFromJson(json);

  final List<HealthScore>? _healthScores;
  @override
  @JsonKey(name: 'health_scores')
  List<HealthScore>? get healthScores {
    final value = _healthScores;
    if (value == null) return null;
    if (_healthScores is EqualUnmodifiableListView) return _healthScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HealthEvent>? _healthEvents;
  @override
  @JsonKey(name: 'health_events')
  List<HealthEvent>? get healthEvents {
    final value = _healthEvents;
    if (value == null) return null;
    if (_healthEvents is EqualUnmodifiableListView) return _healthEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BodySummary>? _bodySummaries;
  @override
  @JsonKey(name: 'body_summaries')
  List<BodySummary>? get bodySummaries {
    final value = _bodySummaries;
    if (value == null) return null;
    if (_bodySummaries is EqualUnmodifiableListView) return _bodySummaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SleepSummary>? _sleepSummaries;
  @override
  @JsonKey(name: 'sleep_summaries')
  List<SleepSummary>? get sleepSummaries {
    final value = _sleepSummaries;
    if (value == null) return null;
    if (_sleepSummaries is EqualUnmodifiableListView) return _sleepSummaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PhysicalSummary>? _physicalSummaries;
  @override
  @JsonKey(name: 'physical_summaries')
  List<PhysicalSummary>? get physicalSummaries {
    final value = _physicalSummaries;
    if (value == null) return null;
    if (_physicalSummaries is EqualUnmodifiableListView)
      return _physicalSummaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RawWebhook>? _rawWebhooks;
  @override
  @JsonKey(name: 'raw_webhooks')
  List<RawWebhook>? get rawWebhooks {
    final value = _rawWebhooks;
    if (value == null) return null;
    if (_rawWebhooks is EqualUnmodifiableListView) return _rawWebhooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataType(healthScores: $healthScores, healthEvents: $healthEvents, bodySummaries: $bodySummaries, sleepSummaries: $sleepSummaries, physicalSummaries: $physicalSummaries, rawWebhooks: $rawWebhooks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataTypeImpl &&
            const DeepCollectionEquality()
                .equals(other._healthScores, _healthScores) &&
            const DeepCollectionEquality()
                .equals(other._healthEvents, _healthEvents) &&
            const DeepCollectionEquality()
                .equals(other._bodySummaries, _bodySummaries) &&
            const DeepCollectionEquality()
                .equals(other._sleepSummaries, _sleepSummaries) &&
            const DeepCollectionEquality()
                .equals(other._physicalSummaries, _physicalSummaries) &&
            const DeepCollectionEquality()
                .equals(other._rawWebhooks, _rawWebhooks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_healthScores),
      const DeepCollectionEquality().hash(_healthEvents),
      const DeepCollectionEquality().hash(_bodySummaries),
      const DeepCollectionEquality().hash(_sleepSummaries),
      const DeepCollectionEquality().hash(_physicalSummaries),
      const DeepCollectionEquality().hash(_rawWebhooks));

  /// Create a copy of DataType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataTypeImplCopyWith<_$DataTypeImpl> get copyWith =>
      __$$DataTypeImplCopyWithImpl<_$DataTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataTypeImplToJson(
      this,
    );
  }
}

abstract class _DataType implements DataType {
  factory _DataType(
      {@JsonKey(name: 'health_scores') final List<HealthScore>? healthScores,
      @JsonKey(name: 'health_events') final List<HealthEvent>? healthEvents,
      @JsonKey(name: 'body_summaries') final List<BodySummary>? bodySummaries,
      @JsonKey(name: 'sleep_summaries')
      final List<SleepSummary>? sleepSummaries,
      @JsonKey(name: 'physical_summaries')
      final List<PhysicalSummary>? physicalSummaries,
      @JsonKey(name: 'raw_webhooks')
      final List<RawWebhook>? rawWebhooks}) = _$DataTypeImpl;

  factory _DataType.fromJson(Map<String, dynamic> json) =
      _$DataTypeImpl.fromJson;

  @override
  @JsonKey(name: 'health_scores')
  List<HealthScore>? get healthScores;
  @override
  @JsonKey(name: 'health_events')
  List<HealthEvent>? get healthEvents;
  @override
  @JsonKey(name: 'body_summaries')
  List<BodySummary>? get bodySummaries;
  @override
  @JsonKey(name: 'sleep_summaries')
  List<SleepSummary>? get sleepSummaries;
  @override
  @JsonKey(name: 'physical_summaries')
  List<PhysicalSummary>? get physicalSummaries;
  @override
  @JsonKey(name: 'raw_webhooks')
  List<RawWebhook>? get rawWebhooks;

  /// Create a copy of DataType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataTypeImplCopyWith<_$DataTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
