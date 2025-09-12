// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_health_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BodyHealthScore _$BodyHealthScoreFromJson(Map<String, dynamic> json) {
  return _BodyHealthScore.fromJson(json);
}

/// @nodoc
mixin _$BodyHealthScore {
  @JsonKey(name: 'score_0_100_int')
  int? get score0100Int => throw _privateConstructorUsedError;
  @JsonKey(name: 'bmi_score')
  BmiScore? get bmiScore => throw _privateConstructorUsedError;

  /// Serializes this BodyHealthScore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyHealthScoreCopyWith<BodyHealthScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyHealthScoreCopyWith<$Res> {
  factory $BodyHealthScoreCopyWith(
    BodyHealthScore value,
    $Res Function(BodyHealthScore) then,
  ) = _$BodyHealthScoreCopyWithImpl<$Res, BodyHealthScore>;
  @useResult
  $Res call({
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'bmi_score') BmiScore? bmiScore,
  });

  $BmiScoreCopyWith<$Res>? get bmiScore;
}

/// @nodoc
class _$BodyHealthScoreCopyWithImpl<$Res, $Val extends BodyHealthScore>
    implements $BodyHealthScoreCopyWith<$Res> {
  _$BodyHealthScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? score0100Int = freezed, Object? bmiScore = freezed}) {
    return _then(
      _value.copyWith(
            score0100Int: freezed == score0100Int
                ? _value.score0100Int
                : score0100Int // ignore: cast_nullable_to_non_nullable
                      as int?,
            bmiScore: freezed == bmiScore
                ? _value.bmiScore
                : bmiScore // ignore: cast_nullable_to_non_nullable
                      as BmiScore?,
          )
          as $Val,
    );
  }

  /// Create a copy of BodyHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BmiScoreCopyWith<$Res>? get bmiScore {
    if (_value.bmiScore == null) {
      return null;
    }

    return $BmiScoreCopyWith<$Res>(_value.bmiScore!, (value) {
      return _then(_value.copyWith(bmiScore: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BodyHealthScoreImplCopyWith<$Res>
    implements $BodyHealthScoreCopyWith<$Res> {
  factory _$$BodyHealthScoreImplCopyWith(
    _$BodyHealthScoreImpl value,
    $Res Function(_$BodyHealthScoreImpl) then,
  ) = __$$BodyHealthScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'bmi_score') BmiScore? bmiScore,
  });

  @override
  $BmiScoreCopyWith<$Res>? get bmiScore;
}

/// @nodoc
class __$$BodyHealthScoreImplCopyWithImpl<$Res>
    extends _$BodyHealthScoreCopyWithImpl<$Res, _$BodyHealthScoreImpl>
    implements _$$BodyHealthScoreImplCopyWith<$Res> {
  __$$BodyHealthScoreImplCopyWithImpl(
    _$BodyHealthScoreImpl _value,
    $Res Function(_$BodyHealthScoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BodyHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? score0100Int = freezed, Object? bmiScore = freezed}) {
    return _then(
      _$BodyHealthScoreImpl(
        score0100Int: freezed == score0100Int
            ? _value.score0100Int
            : score0100Int // ignore: cast_nullable_to_non_nullable
                  as int?,
        bmiScore: freezed == bmiScore
            ? _value.bmiScore
            : bmiScore // ignore: cast_nullable_to_non_nullable
                  as BmiScore?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyHealthScoreImpl implements _BodyHealthScore {
  _$BodyHealthScoreImpl({
    @JsonKey(name: 'score_0_100_int') this.score0100Int,
    @JsonKey(name: 'bmi_score') this.bmiScore,
  });

  factory _$BodyHealthScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyHealthScoreImplFromJson(json);

  @override
  @JsonKey(name: 'score_0_100_int')
  final int? score0100Int;
  @override
  @JsonKey(name: 'bmi_score')
  final BmiScore? bmiScore;

  @override
  String toString() {
    return 'BodyHealthScore(score0100Int: $score0100Int, bmiScore: $bmiScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyHealthScoreImpl &&
            (identical(other.score0100Int, score0100Int) ||
                other.score0100Int == score0100Int) &&
            (identical(other.bmiScore, bmiScore) ||
                other.bmiScore == bmiScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, score0100Int, bmiScore);

  /// Create a copy of BodyHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyHealthScoreImplCopyWith<_$BodyHealthScoreImpl> get copyWith =>
      __$$BodyHealthScoreImplCopyWithImpl<_$BodyHealthScoreImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyHealthScoreImplToJson(this);
  }
}

abstract class _BodyHealthScore implements BodyHealthScore {
  factory _BodyHealthScore({
    @JsonKey(name: 'score_0_100_int') final int? score0100Int,
    @JsonKey(name: 'bmi_score') final BmiScore? bmiScore,
  }) = _$BodyHealthScoreImpl;

  factory _BodyHealthScore.fromJson(Map<String, dynamic> json) =
      _$BodyHealthScoreImpl.fromJson;

  @override
  @JsonKey(name: 'score_0_100_int')
  int? get score0100Int;
  @override
  @JsonKey(name: 'bmi_score')
  BmiScore? get bmiScore;

  /// Create a copy of BodyHealthScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyHealthScoreImplCopyWith<_$BodyHealthScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
