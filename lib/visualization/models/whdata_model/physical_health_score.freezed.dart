// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'physical_health_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhysicalHealthScore _$PhysicalHealthScoreFromJson(Map<String, dynamic> json) {
  return _PhysicalHealthScore.fromJson(json);
}

/// @nodoc
mixin _$PhysicalHealthScore {
  @JsonKey(name: 'score_0_100_int')
  int? get score0100Int => throw _privateConstructorUsedError;
  @JsonKey(name: 'calories_score')
  CaloriesScore? get caloriesScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'activity_score')
  ActivityScore? get activityScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'steps_score')
  StepsScore? get stepsScore => throw _privateConstructorUsedError;

  /// Serializes this PhysicalHealthScore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhysicalHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhysicalHealthScoreCopyWith<PhysicalHealthScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalHealthScoreCopyWith<$Res> {
  factory $PhysicalHealthScoreCopyWith(
          PhysicalHealthScore value, $Res Function(PhysicalHealthScore) then) =
      _$PhysicalHealthScoreCopyWithImpl<$Res, PhysicalHealthScore>;
  @useResult
  $Res call(
      {@JsonKey(name: 'score_0_100_int') int? score0100Int,
      @JsonKey(name: 'calories_score') CaloriesScore? caloriesScore,
      @JsonKey(name: 'activity_score') ActivityScore? activityScore,
      @JsonKey(name: 'steps_score') StepsScore? stepsScore});

  $CaloriesScoreCopyWith<$Res>? get caloriesScore;
  $ActivityScoreCopyWith<$Res>? get activityScore;
  $StepsScoreCopyWith<$Res>? get stepsScore;
}

/// @nodoc
class _$PhysicalHealthScoreCopyWithImpl<$Res, $Val extends PhysicalHealthScore>
    implements $PhysicalHealthScoreCopyWith<$Res> {
  _$PhysicalHealthScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhysicalHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score0100Int = freezed,
    Object? caloriesScore = freezed,
    Object? activityScore = freezed,
    Object? stepsScore = freezed,
  }) {
    return _then(_value.copyWith(
      score0100Int: freezed == score0100Int
          ? _value.score0100Int
          : score0100Int // ignore: cast_nullable_to_non_nullable
              as int?,
      caloriesScore: freezed == caloriesScore
          ? _value.caloriesScore
          : caloriesScore // ignore: cast_nullable_to_non_nullable
              as CaloriesScore?,
      activityScore: freezed == activityScore
          ? _value.activityScore
          : activityScore // ignore: cast_nullable_to_non_nullable
              as ActivityScore?,
      stepsScore: freezed == stepsScore
          ? _value.stepsScore
          : stepsScore // ignore: cast_nullable_to_non_nullable
              as StepsScore?,
    ) as $Val);
  }

  /// Create a copy of PhysicalHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CaloriesScoreCopyWith<$Res>? get caloriesScore {
    if (_value.caloriesScore == null) {
      return null;
    }

    return $CaloriesScoreCopyWith<$Res>(_value.caloriesScore!, (value) {
      return _then(_value.copyWith(caloriesScore: value) as $Val);
    });
  }

  /// Create a copy of PhysicalHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityScoreCopyWith<$Res>? get activityScore {
    if (_value.activityScore == null) {
      return null;
    }

    return $ActivityScoreCopyWith<$Res>(_value.activityScore!, (value) {
      return _then(_value.copyWith(activityScore: value) as $Val);
    });
  }

  /// Create a copy of PhysicalHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StepsScoreCopyWith<$Res>? get stepsScore {
    if (_value.stepsScore == null) {
      return null;
    }

    return $StepsScoreCopyWith<$Res>(_value.stepsScore!, (value) {
      return _then(_value.copyWith(stepsScore: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhysicalHealthScoreImplCopyWith<$Res>
    implements $PhysicalHealthScoreCopyWith<$Res> {
  factory _$$PhysicalHealthScoreImplCopyWith(_$PhysicalHealthScoreImpl value,
          $Res Function(_$PhysicalHealthScoreImpl) then) =
      __$$PhysicalHealthScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'score_0_100_int') int? score0100Int,
      @JsonKey(name: 'calories_score') CaloriesScore? caloriesScore,
      @JsonKey(name: 'activity_score') ActivityScore? activityScore,
      @JsonKey(name: 'steps_score') StepsScore? stepsScore});

  @override
  $CaloriesScoreCopyWith<$Res>? get caloriesScore;
  @override
  $ActivityScoreCopyWith<$Res>? get activityScore;
  @override
  $StepsScoreCopyWith<$Res>? get stepsScore;
}

/// @nodoc
class __$$PhysicalHealthScoreImplCopyWithImpl<$Res>
    extends _$PhysicalHealthScoreCopyWithImpl<$Res, _$PhysicalHealthScoreImpl>
    implements _$$PhysicalHealthScoreImplCopyWith<$Res> {
  __$$PhysicalHealthScoreImplCopyWithImpl(_$PhysicalHealthScoreImpl _value,
      $Res Function(_$PhysicalHealthScoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhysicalHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score0100Int = freezed,
    Object? caloriesScore = freezed,
    Object? activityScore = freezed,
    Object? stepsScore = freezed,
  }) {
    return _then(_$PhysicalHealthScoreImpl(
      score0100Int: freezed == score0100Int
          ? _value.score0100Int
          : score0100Int // ignore: cast_nullable_to_non_nullable
              as int?,
      caloriesScore: freezed == caloriesScore
          ? _value.caloriesScore
          : caloriesScore // ignore: cast_nullable_to_non_nullable
              as CaloriesScore?,
      activityScore: freezed == activityScore
          ? _value.activityScore
          : activityScore // ignore: cast_nullable_to_non_nullable
              as ActivityScore?,
      stepsScore: freezed == stepsScore
          ? _value.stepsScore
          : stepsScore // ignore: cast_nullable_to_non_nullable
              as StepsScore?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhysicalHealthScoreImpl implements _PhysicalHealthScore {
  _$PhysicalHealthScoreImpl(
      {@JsonKey(name: 'score_0_100_int') this.score0100Int,
      @JsonKey(name: 'calories_score') this.caloriesScore,
      @JsonKey(name: 'activity_score') this.activityScore,
      @JsonKey(name: 'steps_score') this.stepsScore});

  factory _$PhysicalHealthScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhysicalHealthScoreImplFromJson(json);

  @override
  @JsonKey(name: 'score_0_100_int')
  final int? score0100Int;
  @override
  @JsonKey(name: 'calories_score')
  final CaloriesScore? caloriesScore;
  @override
  @JsonKey(name: 'activity_score')
  final ActivityScore? activityScore;
  @override
  @JsonKey(name: 'steps_score')
  final StepsScore? stepsScore;

  @override
  String toString() {
    return 'PhysicalHealthScore(score0100Int: $score0100Int, caloriesScore: $caloriesScore, activityScore: $activityScore, stepsScore: $stepsScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhysicalHealthScoreImpl &&
            (identical(other.score0100Int, score0100Int) ||
                other.score0100Int == score0100Int) &&
            (identical(other.caloriesScore, caloriesScore) ||
                other.caloriesScore == caloriesScore) &&
            (identical(other.activityScore, activityScore) ||
                other.activityScore == activityScore) &&
            (identical(other.stepsScore, stepsScore) ||
                other.stepsScore == stepsScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, score0100Int, caloriesScore, activityScore, stepsScore);

  /// Create a copy of PhysicalHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhysicalHealthScoreImplCopyWith<_$PhysicalHealthScoreImpl> get copyWith =>
      __$$PhysicalHealthScoreImplCopyWithImpl<_$PhysicalHealthScoreImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhysicalHealthScoreImplToJson(
      this,
    );
  }
}

abstract class _PhysicalHealthScore implements PhysicalHealthScore {
  factory _PhysicalHealthScore(
          {@JsonKey(name: 'score_0_100_int') final int? score0100Int,
          @JsonKey(name: 'calories_score') final CaloriesScore? caloriesScore,
          @JsonKey(name: 'activity_score') final ActivityScore? activityScore,
          @JsonKey(name: 'steps_score') final StepsScore? stepsScore}) =
      _$PhysicalHealthScoreImpl;

  factory _PhysicalHealthScore.fromJson(Map<String, dynamic> json) =
      _$PhysicalHealthScoreImpl.fromJson;

  @override
  @JsonKey(name: 'score_0_100_int')
  int? get score0100Int;
  @override
  @JsonKey(name: 'calories_score')
  CaloriesScore? get caloriesScore;
  @override
  @JsonKey(name: 'activity_score')
  ActivityScore? get activityScore;
  @override
  @JsonKey(name: 'steps_score')
  StepsScore? get stepsScore;

  /// Create a copy of PhysicalHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhysicalHealthScoreImplCopyWith<_$PhysicalHealthScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
