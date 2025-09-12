// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sleep_health_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SleepHealthScore _$SleepHealthScoreFromJson(Map<String, dynamic> json) {
  return _SleepHealthScore.fromJson(json);
}

/// @nodoc
mixin _$SleepHealthScore {
  @JsonKey(name: 'score_0_100_int')
  int? get score0100Int => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_duration_score')
  SleepDurationScore? get sleepDurationScore =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_quality_score')
  SleepQualityScore? get sleepQualityScore =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'readiness_score')
  ReadinessScore? get readinessScore => throw _privateConstructorUsedError;

  /// Serializes this SleepHealthScore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SleepHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SleepHealthScoreCopyWith<SleepHealthScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SleepHealthScoreCopyWith<$Res> {
  factory $SleepHealthScoreCopyWith(
    SleepHealthScore value,
    $Res Function(SleepHealthScore) then,
  ) = _$SleepHealthScoreCopyWithImpl<$Res, SleepHealthScore>;
  @useResult
  $Res call({
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'sleep_duration_score')
    SleepDurationScore? sleepDurationScore,
    @JsonKey(name: 'sleep_quality_score') SleepQualityScore? sleepQualityScore,
    @JsonKey(name: 'readiness_score') ReadinessScore? readinessScore,
  });

  $SleepDurationScoreCopyWith<$Res>? get sleepDurationScore;
  $SleepQualityScoreCopyWith<$Res>? get sleepQualityScore;
  $ReadinessScoreCopyWith<$Res>? get readinessScore;
}

/// @nodoc
class _$SleepHealthScoreCopyWithImpl<$Res, $Val extends SleepHealthScore>
    implements $SleepHealthScoreCopyWith<$Res> {
  _$SleepHealthScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SleepHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score0100Int = freezed,
    Object? sleepDurationScore = freezed,
    Object? sleepQualityScore = freezed,
    Object? readinessScore = freezed,
  }) {
    return _then(
      _value.copyWith(
            score0100Int: freezed == score0100Int
                ? _value.score0100Int
                : score0100Int // ignore: cast_nullable_to_non_nullable
                      as int?,
            sleepDurationScore: freezed == sleepDurationScore
                ? _value.sleepDurationScore
                : sleepDurationScore // ignore: cast_nullable_to_non_nullable
                      as SleepDurationScore?,
            sleepQualityScore: freezed == sleepQualityScore
                ? _value.sleepQualityScore
                : sleepQualityScore // ignore: cast_nullable_to_non_nullable
                      as SleepQualityScore?,
            readinessScore: freezed == readinessScore
                ? _value.readinessScore
                : readinessScore // ignore: cast_nullable_to_non_nullable
                      as ReadinessScore?,
          )
          as $Val,
    );
  }

  /// Create a copy of SleepHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SleepDurationScoreCopyWith<$Res>? get sleepDurationScore {
    if (_value.sleepDurationScore == null) {
      return null;
    }

    return $SleepDurationScoreCopyWith<$Res>(_value.sleepDurationScore!, (
      value,
    ) {
      return _then(_value.copyWith(sleepDurationScore: value) as $Val);
    });
  }

  /// Create a copy of SleepHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SleepQualityScoreCopyWith<$Res>? get sleepQualityScore {
    if (_value.sleepQualityScore == null) {
      return null;
    }

    return $SleepQualityScoreCopyWith<$Res>(_value.sleepQualityScore!, (value) {
      return _then(_value.copyWith(sleepQualityScore: value) as $Val);
    });
  }

  /// Create a copy of SleepHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadinessScoreCopyWith<$Res>? get readinessScore {
    if (_value.readinessScore == null) {
      return null;
    }

    return $ReadinessScoreCopyWith<$Res>(_value.readinessScore!, (value) {
      return _then(_value.copyWith(readinessScore: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SleepHealthScoreImplCopyWith<$Res>
    implements $SleepHealthScoreCopyWith<$Res> {
  factory _$$SleepHealthScoreImplCopyWith(
    _$SleepHealthScoreImpl value,
    $Res Function(_$SleepHealthScoreImpl) then,
  ) = __$$SleepHealthScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'sleep_duration_score')
    SleepDurationScore? sleepDurationScore,
    @JsonKey(name: 'sleep_quality_score') SleepQualityScore? sleepQualityScore,
    @JsonKey(name: 'readiness_score') ReadinessScore? readinessScore,
  });

  @override
  $SleepDurationScoreCopyWith<$Res>? get sleepDurationScore;
  @override
  $SleepQualityScoreCopyWith<$Res>? get sleepQualityScore;
  @override
  $ReadinessScoreCopyWith<$Res>? get readinessScore;
}

/// @nodoc
class __$$SleepHealthScoreImplCopyWithImpl<$Res>
    extends _$SleepHealthScoreCopyWithImpl<$Res, _$SleepHealthScoreImpl>
    implements _$$SleepHealthScoreImplCopyWith<$Res> {
  __$$SleepHealthScoreImplCopyWithImpl(
    _$SleepHealthScoreImpl _value,
    $Res Function(_$SleepHealthScoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SleepHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score0100Int = freezed,
    Object? sleepDurationScore = freezed,
    Object? sleepQualityScore = freezed,
    Object? readinessScore = freezed,
  }) {
    return _then(
      _$SleepHealthScoreImpl(
        score0100Int: freezed == score0100Int
            ? _value.score0100Int
            : score0100Int // ignore: cast_nullable_to_non_nullable
                  as int?,
        sleepDurationScore: freezed == sleepDurationScore
            ? _value.sleepDurationScore
            : sleepDurationScore // ignore: cast_nullable_to_non_nullable
                  as SleepDurationScore?,
        sleepQualityScore: freezed == sleepQualityScore
            ? _value.sleepQualityScore
            : sleepQualityScore // ignore: cast_nullable_to_non_nullable
                  as SleepQualityScore?,
        readinessScore: freezed == readinessScore
            ? _value.readinessScore
            : readinessScore // ignore: cast_nullable_to_non_nullable
                  as ReadinessScore?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SleepHealthScoreImpl implements _SleepHealthScore {
  _$SleepHealthScoreImpl({
    @JsonKey(name: 'score_0_100_int') this.score0100Int,
    @JsonKey(name: 'sleep_duration_score') this.sleepDurationScore,
    @JsonKey(name: 'sleep_quality_score') this.sleepQualityScore,
    @JsonKey(name: 'readiness_score') this.readinessScore,
  });

  factory _$SleepHealthScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$SleepHealthScoreImplFromJson(json);

  @override
  @JsonKey(name: 'score_0_100_int')
  final int? score0100Int;
  @override
  @JsonKey(name: 'sleep_duration_score')
  final SleepDurationScore? sleepDurationScore;
  @override
  @JsonKey(name: 'sleep_quality_score')
  final SleepQualityScore? sleepQualityScore;
  @override
  @JsonKey(name: 'readiness_score')
  final ReadinessScore? readinessScore;

  @override
  String toString() {
    return 'SleepHealthScore(score0100Int: $score0100Int, sleepDurationScore: $sleepDurationScore, sleepQualityScore: $sleepQualityScore, readinessScore: $readinessScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SleepHealthScoreImpl &&
            (identical(other.score0100Int, score0100Int) ||
                other.score0100Int == score0100Int) &&
            (identical(other.sleepDurationScore, sleepDurationScore) ||
                other.sleepDurationScore == sleepDurationScore) &&
            (identical(other.sleepQualityScore, sleepQualityScore) ||
                other.sleepQualityScore == sleepQualityScore) &&
            (identical(other.readinessScore, readinessScore) ||
                other.readinessScore == readinessScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    score0100Int,
    sleepDurationScore,
    sleepQualityScore,
    readinessScore,
  );

  /// Create a copy of SleepHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SleepHealthScoreImplCopyWith<_$SleepHealthScoreImpl> get copyWith =>
      __$$SleepHealthScoreImplCopyWithImpl<_$SleepHealthScoreImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SleepHealthScoreImplToJson(this);
  }
}

abstract class _SleepHealthScore implements SleepHealthScore {
  factory _SleepHealthScore({
    @JsonKey(name: 'score_0_100_int') final int? score0100Int,
    @JsonKey(name: 'sleep_duration_score')
    final SleepDurationScore? sleepDurationScore,
    @JsonKey(name: 'sleep_quality_score')
    final SleepQualityScore? sleepQualityScore,
    @JsonKey(name: 'readiness_score') final ReadinessScore? readinessScore,
  }) = _$SleepHealthScoreImpl;

  factory _SleepHealthScore.fromJson(Map<String, dynamic> json) =
      _$SleepHealthScoreImpl.fromJson;

  @override
  @JsonKey(name: 'score_0_100_int')
  int? get score0100Int;
  @override
  @JsonKey(name: 'sleep_duration_score')
  SleepDurationScore? get sleepDurationScore;
  @override
  @JsonKey(name: 'sleep_quality_score')
  SleepQualityScore? get sleepQualityScore;
  @override
  @JsonKey(name: 'readiness_score')
  ReadinessScore? get readinessScore;

  /// Create a copy of SleepHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SleepHealthScoreImplCopyWith<_$SleepHealthScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
