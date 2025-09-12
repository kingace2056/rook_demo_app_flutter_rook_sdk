// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scores.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Scores _$ScoresFromJson(Map<String, dynamic> json) {
  return _Scores.fromJson(json);
}

/// @nodoc
mixin _$Scores {
  @JsonKey(name: 'sleep_quality_rating_1_5_score_int')
  int? get sleepQualityRating15ScoreInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_efficiency_1_100_score_int')
  int? get sleepEfficiency1100ScoreInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_goal_seconds_int')
  int? get sleepGoalSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_continuity_1_5_score_int')
  int? get sleepContinuity15ScoreInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_continuity_1_5_rating_int')
  int? get sleepContinuity15RatingInt => throw _privateConstructorUsedError;

  /// Serializes this Scores to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Scores
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoresCopyWith<Scores> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoresCopyWith<$Res> {
  factory $ScoresCopyWith(Scores value, $Res Function(Scores) then) =
      _$ScoresCopyWithImpl<$Res, Scores>;
  @useResult
  $Res call({
    @JsonKey(name: 'sleep_quality_rating_1_5_score_int')
    int? sleepQualityRating15ScoreInt,
    @JsonKey(name: 'sleep_efficiency_1_100_score_int')
    int? sleepEfficiency1100ScoreInt,
    @JsonKey(name: 'sleep_goal_seconds_int') int? sleepGoalSecondsInt,
    @JsonKey(name: 'sleep_continuity_1_5_score_int')
    int? sleepContinuity15ScoreInt,
    @JsonKey(name: 'sleep_continuity_1_5_rating_int')
    int? sleepContinuity15RatingInt,
  });
}

/// @nodoc
class _$ScoresCopyWithImpl<$Res, $Val extends Scores>
    implements $ScoresCopyWith<$Res> {
  _$ScoresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Scores
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sleepQualityRating15ScoreInt = freezed,
    Object? sleepEfficiency1100ScoreInt = freezed,
    Object? sleepGoalSecondsInt = freezed,
    Object? sleepContinuity15ScoreInt = freezed,
    Object? sleepContinuity15RatingInt = freezed,
  }) {
    return _then(
      _value.copyWith(
            sleepQualityRating15ScoreInt:
                freezed == sleepQualityRating15ScoreInt
                ? _value.sleepQualityRating15ScoreInt
                : sleepQualityRating15ScoreInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            sleepEfficiency1100ScoreInt: freezed == sleepEfficiency1100ScoreInt
                ? _value.sleepEfficiency1100ScoreInt
                : sleepEfficiency1100ScoreInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            sleepGoalSecondsInt: freezed == sleepGoalSecondsInt
                ? _value.sleepGoalSecondsInt
                : sleepGoalSecondsInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            sleepContinuity15ScoreInt: freezed == sleepContinuity15ScoreInt
                ? _value.sleepContinuity15ScoreInt
                : sleepContinuity15ScoreInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            sleepContinuity15RatingInt: freezed == sleepContinuity15RatingInt
                ? _value.sleepContinuity15RatingInt
                : sleepContinuity15RatingInt // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScoresImplCopyWith<$Res> implements $ScoresCopyWith<$Res> {
  factory _$$ScoresImplCopyWith(
    _$ScoresImpl value,
    $Res Function(_$ScoresImpl) then,
  ) = __$$ScoresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'sleep_quality_rating_1_5_score_int')
    int? sleepQualityRating15ScoreInt,
    @JsonKey(name: 'sleep_efficiency_1_100_score_int')
    int? sleepEfficiency1100ScoreInt,
    @JsonKey(name: 'sleep_goal_seconds_int') int? sleepGoalSecondsInt,
    @JsonKey(name: 'sleep_continuity_1_5_score_int')
    int? sleepContinuity15ScoreInt,
    @JsonKey(name: 'sleep_continuity_1_5_rating_int')
    int? sleepContinuity15RatingInt,
  });
}

/// @nodoc
class __$$ScoresImplCopyWithImpl<$Res>
    extends _$ScoresCopyWithImpl<$Res, _$ScoresImpl>
    implements _$$ScoresImplCopyWith<$Res> {
  __$$ScoresImplCopyWithImpl(
    _$ScoresImpl _value,
    $Res Function(_$ScoresImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Scores
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sleepQualityRating15ScoreInt = freezed,
    Object? sleepEfficiency1100ScoreInt = freezed,
    Object? sleepGoalSecondsInt = freezed,
    Object? sleepContinuity15ScoreInt = freezed,
    Object? sleepContinuity15RatingInt = freezed,
  }) {
    return _then(
      _$ScoresImpl(
        sleepQualityRating15ScoreInt: freezed == sleepQualityRating15ScoreInt
            ? _value.sleepQualityRating15ScoreInt
            : sleepQualityRating15ScoreInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        sleepEfficiency1100ScoreInt: freezed == sleepEfficiency1100ScoreInt
            ? _value.sleepEfficiency1100ScoreInt
            : sleepEfficiency1100ScoreInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        sleepGoalSecondsInt: freezed == sleepGoalSecondsInt
            ? _value.sleepGoalSecondsInt
            : sleepGoalSecondsInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        sleepContinuity15ScoreInt: freezed == sleepContinuity15ScoreInt
            ? _value.sleepContinuity15ScoreInt
            : sleepContinuity15ScoreInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        sleepContinuity15RatingInt: freezed == sleepContinuity15RatingInt
            ? _value.sleepContinuity15RatingInt
            : sleepContinuity15RatingInt // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoresImpl implements _Scores {
  _$ScoresImpl({
    @JsonKey(name: 'sleep_quality_rating_1_5_score_int')
    this.sleepQualityRating15ScoreInt,
    @JsonKey(name: 'sleep_efficiency_1_100_score_int')
    this.sleepEfficiency1100ScoreInt,
    @JsonKey(name: 'sleep_goal_seconds_int') this.sleepGoalSecondsInt,
    @JsonKey(name: 'sleep_continuity_1_5_score_int')
    this.sleepContinuity15ScoreInt,
    @JsonKey(name: 'sleep_continuity_1_5_rating_int')
    this.sleepContinuity15RatingInt,
  });

  factory _$ScoresImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoresImplFromJson(json);

  @override
  @JsonKey(name: 'sleep_quality_rating_1_5_score_int')
  final int? sleepQualityRating15ScoreInt;
  @override
  @JsonKey(name: 'sleep_efficiency_1_100_score_int')
  final int? sleepEfficiency1100ScoreInt;
  @override
  @JsonKey(name: 'sleep_goal_seconds_int')
  final int? sleepGoalSecondsInt;
  @override
  @JsonKey(name: 'sleep_continuity_1_5_score_int')
  final int? sleepContinuity15ScoreInt;
  @override
  @JsonKey(name: 'sleep_continuity_1_5_rating_int')
  final int? sleepContinuity15RatingInt;

  @override
  String toString() {
    return 'Scores(sleepQualityRating15ScoreInt: $sleepQualityRating15ScoreInt, sleepEfficiency1100ScoreInt: $sleepEfficiency1100ScoreInt, sleepGoalSecondsInt: $sleepGoalSecondsInt, sleepContinuity15ScoreInt: $sleepContinuity15ScoreInt, sleepContinuity15RatingInt: $sleepContinuity15RatingInt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoresImpl &&
            (identical(
                  other.sleepQualityRating15ScoreInt,
                  sleepQualityRating15ScoreInt,
                ) ||
                other.sleepQualityRating15ScoreInt ==
                    sleepQualityRating15ScoreInt) &&
            (identical(
                  other.sleepEfficiency1100ScoreInt,
                  sleepEfficiency1100ScoreInt,
                ) ||
                other.sleepEfficiency1100ScoreInt ==
                    sleepEfficiency1100ScoreInt) &&
            (identical(other.sleepGoalSecondsInt, sleepGoalSecondsInt) ||
                other.sleepGoalSecondsInt == sleepGoalSecondsInt) &&
            (identical(
                  other.sleepContinuity15ScoreInt,
                  sleepContinuity15ScoreInt,
                ) ||
                other.sleepContinuity15ScoreInt == sleepContinuity15ScoreInt) &&
            (identical(
                  other.sleepContinuity15RatingInt,
                  sleepContinuity15RatingInt,
                ) ||
                other.sleepContinuity15RatingInt ==
                    sleepContinuity15RatingInt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sleepQualityRating15ScoreInt,
    sleepEfficiency1100ScoreInt,
    sleepGoalSecondsInt,
    sleepContinuity15ScoreInt,
    sleepContinuity15RatingInt,
  );

  /// Create a copy of Scores
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoresImplCopyWith<_$ScoresImpl> get copyWith =>
      __$$ScoresImplCopyWithImpl<_$ScoresImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoresImplToJson(this);
  }
}

abstract class _Scores implements Scores {
  factory _Scores({
    @JsonKey(name: 'sleep_quality_rating_1_5_score_int')
    final int? sleepQualityRating15ScoreInt,
    @JsonKey(name: 'sleep_efficiency_1_100_score_int')
    final int? sleepEfficiency1100ScoreInt,
    @JsonKey(name: 'sleep_goal_seconds_int') final int? sleepGoalSecondsInt,
    @JsonKey(name: 'sleep_continuity_1_5_score_int')
    final int? sleepContinuity15ScoreInt,
    @JsonKey(name: 'sleep_continuity_1_5_rating_int')
    final int? sleepContinuity15RatingInt,
  }) = _$ScoresImpl;

  factory _Scores.fromJson(Map<String, dynamic> json) = _$ScoresImpl.fromJson;

  @override
  @JsonKey(name: 'sleep_quality_rating_1_5_score_int')
  int? get sleepQualityRating15ScoreInt;
  @override
  @JsonKey(name: 'sleep_efficiency_1_100_score_int')
  int? get sleepEfficiency1100ScoreInt;
  @override
  @JsonKey(name: 'sleep_goal_seconds_int')
  int? get sleepGoalSecondsInt;
  @override
  @JsonKey(name: 'sleep_continuity_1_5_score_int')
  int? get sleepContinuity15ScoreInt;
  @override
  @JsonKey(name: 'sleep_continuity_1_5_rating_int')
  int? get sleepContinuity15RatingInt;

  /// Create a copy of Scores
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoresImplCopyWith<_$ScoresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
