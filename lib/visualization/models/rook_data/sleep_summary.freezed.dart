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

SleepSummaryData _$SleepSummaryDataFromJson(Map<String, dynamic> json) {
  return _SleepSummaryData.fromJson(json);
}

/// @nodoc
mixin _$SleepSummaryData {
  Breathing? get breathing => throw _privateConstructorUsedError;
  Duration? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'heart_rate')
  HeartRate? get heartRate => throw _privateConstructorUsedError;
  Scores? get scores => throw _privateConstructorUsedError;
  Temperature? get temperature => throw _privateConstructorUsedError;
  Metadata? get metadata => throw _privateConstructorUsedError;

  /// Serializes this SleepSummaryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SleepSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SleepSummaryDataCopyWith<SleepSummaryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SleepSummaryDataCopyWith<$Res> {
  factory $SleepSummaryDataCopyWith(
    SleepSummaryData value,
    $Res Function(SleepSummaryData) then,
  ) = _$SleepSummaryDataCopyWithImpl<$Res, SleepSummaryData>;
  @useResult
  $Res call({
    Breathing? breathing,
    Duration? duration,
    @JsonKey(name: 'heart_rate') HeartRate? heartRate,
    Scores? scores,
    Temperature? temperature,
    Metadata? metadata,
  });

  $BreathingCopyWith<$Res>? get breathing;
  $DurationCopyWith<$Res>? get duration;
  $HeartRateCopyWith<$Res>? get heartRate;
  $ScoresCopyWith<$Res>? get scores;
  $TemperatureCopyWith<$Res>? get temperature;
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$SleepSummaryDataCopyWithImpl<$Res, $Val extends SleepSummaryData>
    implements $SleepSummaryDataCopyWith<$Res> {
  _$SleepSummaryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SleepSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breathing = freezed,
    Object? duration = freezed,
    Object? heartRate = freezed,
    Object? scores = freezed,
    Object? temperature = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            breathing: freezed == breathing
                ? _value.breathing
                : breathing // ignore: cast_nullable_to_non_nullable
                      as Breathing?,
            duration: freezed == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as Duration?,
            heartRate: freezed == heartRate
                ? _value.heartRate
                : heartRate // ignore: cast_nullable_to_non_nullable
                      as HeartRate?,
            scores: freezed == scores
                ? _value.scores
                : scores // ignore: cast_nullable_to_non_nullable
                      as Scores?,
            temperature: freezed == temperature
                ? _value.temperature
                : temperature // ignore: cast_nullable_to_non_nullable
                      as Temperature?,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Metadata?,
          )
          as $Val,
    );
  }

  /// Create a copy of SleepSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BreathingCopyWith<$Res>? get breathing {
    if (_value.breathing == null) {
      return null;
    }

    return $BreathingCopyWith<$Res>(_value.breathing!, (value) {
      return _then(_value.copyWith(breathing: value) as $Val);
    });
  }

  /// Create a copy of SleepSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DurationCopyWith<$Res>? get duration {
    if (_value.duration == null) {
      return null;
    }

    return $DurationCopyWith<$Res>(_value.duration!, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }

  /// Create a copy of SleepSummaryData
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

  /// Create a copy of SleepSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoresCopyWith<$Res>? get scores {
    if (_value.scores == null) {
      return null;
    }

    return $ScoresCopyWith<$Res>(_value.scores!, (value) {
      return _then(_value.copyWith(scores: value) as $Val);
    });
  }

  /// Create a copy of SleepSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureCopyWith<$Res>? get temperature {
    if (_value.temperature == null) {
      return null;
    }

    return $TemperatureCopyWith<$Res>(_value.temperature!, (value) {
      return _then(_value.copyWith(temperature: value) as $Val);
    });
  }

  /// Create a copy of SleepSummaryData
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
}

/// @nodoc
abstract class _$$SleepSummaryDataImplCopyWith<$Res>
    implements $SleepSummaryDataCopyWith<$Res> {
  factory _$$SleepSummaryDataImplCopyWith(
    _$SleepSummaryDataImpl value,
    $Res Function(_$SleepSummaryDataImpl) then,
  ) = __$$SleepSummaryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Breathing? breathing,
    Duration? duration,
    @JsonKey(name: 'heart_rate') HeartRate? heartRate,
    Scores? scores,
    Temperature? temperature,
    Metadata? metadata,
  });

  @override
  $BreathingCopyWith<$Res>? get breathing;
  @override
  $DurationCopyWith<$Res>? get duration;
  @override
  $HeartRateCopyWith<$Res>? get heartRate;
  @override
  $ScoresCopyWith<$Res>? get scores;
  @override
  $TemperatureCopyWith<$Res>? get temperature;
  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$SleepSummaryDataImplCopyWithImpl<$Res>
    extends _$SleepSummaryDataCopyWithImpl<$Res, _$SleepSummaryDataImpl>
    implements _$$SleepSummaryDataImplCopyWith<$Res> {
  __$$SleepSummaryDataImplCopyWithImpl(
    _$SleepSummaryDataImpl _value,
    $Res Function(_$SleepSummaryDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SleepSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breathing = freezed,
    Object? duration = freezed,
    Object? heartRate = freezed,
    Object? scores = freezed,
    Object? temperature = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$SleepSummaryDataImpl(
        breathing: freezed == breathing
            ? _value.breathing
            : breathing // ignore: cast_nullable_to_non_nullable
                  as Breathing?,
        duration: freezed == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as Duration?,
        heartRate: freezed == heartRate
            ? _value.heartRate
            : heartRate // ignore: cast_nullable_to_non_nullable
                  as HeartRate?,
        scores: freezed == scores
            ? _value.scores
            : scores // ignore: cast_nullable_to_non_nullable
                  as Scores?,
        temperature: freezed == temperature
            ? _value.temperature
            : temperature // ignore: cast_nullable_to_non_nullable
                  as Temperature?,
        metadata: freezed == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Metadata?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SleepSummaryDataImpl implements _SleepSummaryData {
  _$SleepSummaryDataImpl({
    this.breathing,
    this.duration,
    @JsonKey(name: 'heart_rate') this.heartRate,
    this.scores,
    this.temperature,
    this.metadata,
  });

  factory _$SleepSummaryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SleepSummaryDataImplFromJson(json);

  @override
  final Breathing? breathing;
  @override
  final Duration? duration;
  @override
  @JsonKey(name: 'heart_rate')
  final HeartRate? heartRate;
  @override
  final Scores? scores;
  @override
  final Temperature? temperature;
  @override
  final Metadata? metadata;

  @override
  String toString() {
    return 'SleepSummaryData(breathing: $breathing, duration: $duration, heartRate: $heartRate, scores: $scores, temperature: $temperature, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SleepSummaryDataImpl &&
            (identical(other.breathing, breathing) ||
                other.breathing == breathing) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.heartRate, heartRate) ||
                other.heartRate == heartRate) &&
            (identical(other.scores, scores) || other.scores == scores) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    breathing,
    duration,
    heartRate,
    scores,
    temperature,
    metadata,
  );

  /// Create a copy of SleepSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SleepSummaryDataImplCopyWith<_$SleepSummaryDataImpl> get copyWith =>
      __$$SleepSummaryDataImplCopyWithImpl<_$SleepSummaryDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SleepSummaryDataImplToJson(this);
  }
}

abstract class _SleepSummaryData implements SleepSummaryData {
  factory _SleepSummaryData({
    final Breathing? breathing,
    final Duration? duration,
    @JsonKey(name: 'heart_rate') final HeartRate? heartRate,
    final Scores? scores,
    final Temperature? temperature,
    final Metadata? metadata,
  }) = _$SleepSummaryDataImpl;

  factory _SleepSummaryData.fromJson(Map<String, dynamic> json) =
      _$SleepSummaryDataImpl.fromJson;

  @override
  Breathing? get breathing;
  @override
  Duration? get duration;
  @override
  @JsonKey(name: 'heart_rate')
  HeartRate? get heartRate;
  @override
  Scores? get scores;
  @override
  Temperature? get temperature;
  @override
  Metadata? get metadata;

  /// Create a copy of SleepSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SleepSummaryDataImplCopyWith<_$SleepSummaryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
