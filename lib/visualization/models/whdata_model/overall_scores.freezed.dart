// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overall_scores.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OverallScores _$OverallScoresFromJson(Map<String, dynamic> json) {
  return _OverallScores.fromJson(json);
}

/// @nodoc
mixin _$OverallScores {
  @JsonKey(name: 'global_score_0_100_int')
  int? get globalScore0100Int => throw _privateConstructorUsedError;
  @JsonKey(name: 'seven_days_avg_score_0_100_int')
  int? get sevenDaysAvgScore0100Int => throw _privateConstructorUsedError;

  /// Serializes this OverallScores to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OverallScores
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverallScoresCopyWith<OverallScores> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverallScoresCopyWith<$Res> {
  factory $OverallScoresCopyWith(
    OverallScores value,
    $Res Function(OverallScores) then,
  ) = _$OverallScoresCopyWithImpl<$Res, OverallScores>;
  @useResult
  $Res call({
    @JsonKey(name: 'global_score_0_100_int') int? globalScore0100Int,
    @JsonKey(name: 'seven_days_avg_score_0_100_int')
    int? sevenDaysAvgScore0100Int,
  });
}

/// @nodoc
class _$OverallScoresCopyWithImpl<$Res, $Val extends OverallScores>
    implements $OverallScoresCopyWith<$Res> {
  _$OverallScoresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverallScores
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? globalScore0100Int = freezed,
    Object? sevenDaysAvgScore0100Int = freezed,
  }) {
    return _then(
      _value.copyWith(
            globalScore0100Int: freezed == globalScore0100Int
                ? _value.globalScore0100Int
                : globalScore0100Int // ignore: cast_nullable_to_non_nullable
                      as int?,
            sevenDaysAvgScore0100Int: freezed == sevenDaysAvgScore0100Int
                ? _value.sevenDaysAvgScore0100Int
                : sevenDaysAvgScore0100Int // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OverallScoresImplCopyWith<$Res>
    implements $OverallScoresCopyWith<$Res> {
  factory _$$OverallScoresImplCopyWith(
    _$OverallScoresImpl value,
    $Res Function(_$OverallScoresImpl) then,
  ) = __$$OverallScoresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'global_score_0_100_int') int? globalScore0100Int,
    @JsonKey(name: 'seven_days_avg_score_0_100_int')
    int? sevenDaysAvgScore0100Int,
  });
}

/// @nodoc
class __$$OverallScoresImplCopyWithImpl<$Res>
    extends _$OverallScoresCopyWithImpl<$Res, _$OverallScoresImpl>
    implements _$$OverallScoresImplCopyWith<$Res> {
  __$$OverallScoresImplCopyWithImpl(
    _$OverallScoresImpl _value,
    $Res Function(_$OverallScoresImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverallScores
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? globalScore0100Int = freezed,
    Object? sevenDaysAvgScore0100Int = freezed,
  }) {
    return _then(
      _$OverallScoresImpl(
        globalScore0100Int: freezed == globalScore0100Int
            ? _value.globalScore0100Int
            : globalScore0100Int // ignore: cast_nullable_to_non_nullable
                  as int?,
        sevenDaysAvgScore0100Int: freezed == sevenDaysAvgScore0100Int
            ? _value.sevenDaysAvgScore0100Int
            : sevenDaysAvgScore0100Int // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OverallScoresImpl implements _OverallScores {
  _$OverallScoresImpl({
    @JsonKey(name: 'global_score_0_100_int') this.globalScore0100Int,
    @JsonKey(name: 'seven_days_avg_score_0_100_int')
    this.sevenDaysAvgScore0100Int,
  });

  factory _$OverallScoresImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverallScoresImplFromJson(json);

  @override
  @JsonKey(name: 'global_score_0_100_int')
  final int? globalScore0100Int;
  @override
  @JsonKey(name: 'seven_days_avg_score_0_100_int')
  final int? sevenDaysAvgScore0100Int;

  @override
  String toString() {
    return 'OverallScores(globalScore0100Int: $globalScore0100Int, sevenDaysAvgScore0100Int: $sevenDaysAvgScore0100Int)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverallScoresImpl &&
            (identical(other.globalScore0100Int, globalScore0100Int) ||
                other.globalScore0100Int == globalScore0100Int) &&
            (identical(
                  other.sevenDaysAvgScore0100Int,
                  sevenDaysAvgScore0100Int,
                ) ||
                other.sevenDaysAvgScore0100Int == sevenDaysAvgScore0100Int));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, globalScore0100Int, sevenDaysAvgScore0100Int);

  /// Create a copy of OverallScores
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverallScoresImplCopyWith<_$OverallScoresImpl> get copyWith =>
      __$$OverallScoresImplCopyWithImpl<_$OverallScoresImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OverallScoresImplToJson(this);
  }
}

abstract class _OverallScores implements OverallScores {
  factory _OverallScores({
    @JsonKey(name: 'global_score_0_100_int') final int? globalScore0100Int,
    @JsonKey(name: 'seven_days_avg_score_0_100_int')
    final int? sevenDaysAvgScore0100Int,
  }) = _$OverallScoresImpl;

  factory _OverallScores.fromJson(Map<String, dynamic> json) =
      _$OverallScoresImpl.fromJson;

  @override
  @JsonKey(name: 'global_score_0_100_int')
  int? get globalScore0100Int;
  @override
  @JsonKey(name: 'seven_days_avg_score_0_100_int')
  int? get sevenDaysAvgScore0100Int;

  /// Create a copy of OverallScores
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverallScoresImplCopyWith<_$OverallScoresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
