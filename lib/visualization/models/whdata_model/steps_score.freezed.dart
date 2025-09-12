// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'steps_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StepsScore _$StepsScoreFromJson(Map<String, dynamic> json) {
  return _StepsScore.fromJson(json);
}

/// @nodoc
mixin _$StepsScore {
  @JsonKey(name: 'datetime_string')
  DateTime? get datetimeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at_string')
  DateTime? get createdAtString => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at_string')
  DateTime? get updatedAtString => throw _privateConstructorUsedError;
  @JsonKey(name: 'score_0_100_int')
  int? get score0100Int => throw _privateConstructorUsedError;
  @JsonKey(name: 'calculated_with_missing_user_info_bool')
  bool? get calculatedWithMissingUserInfoBool =>
      throw _privateConstructorUsedError;

  /// Serializes this StepsScore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StepsScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StepsScoreCopyWith<StepsScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepsScoreCopyWith<$Res> {
  factory $StepsScoreCopyWith(
    StepsScore value,
    $Res Function(StepsScore) then,
  ) = _$StepsScoreCopyWithImpl<$Res, StepsScore>;
  @useResult
  $Res call({
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'created_at_string') DateTime? createdAtString,
    @JsonKey(name: 'updated_at_string') DateTime? updatedAtString,
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'calculated_with_missing_user_info_bool')
    bool? calculatedWithMissingUserInfoBool,
  });
}

/// @nodoc
class _$StepsScoreCopyWithImpl<$Res, $Val extends StepsScore>
    implements $StepsScoreCopyWith<$Res> {
  _$StepsScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StepsScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetimeString = freezed,
    Object? createdAtString = freezed,
    Object? updatedAtString = freezed,
    Object? score0100Int = freezed,
    Object? calculatedWithMissingUserInfoBool = freezed,
  }) {
    return _then(
      _value.copyWith(
            datetimeString: freezed == datetimeString
                ? _value.datetimeString
                : datetimeString // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAtString: freezed == createdAtString
                ? _value.createdAtString
                : createdAtString // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAtString: freezed == updatedAtString
                ? _value.updatedAtString
                : updatedAtString // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            score0100Int: freezed == score0100Int
                ? _value.score0100Int
                : score0100Int // ignore: cast_nullable_to_non_nullable
                      as int?,
            calculatedWithMissingUserInfoBool:
                freezed == calculatedWithMissingUserInfoBool
                ? _value.calculatedWithMissingUserInfoBool
                : calculatedWithMissingUserInfoBool // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StepsScoreImplCopyWith<$Res>
    implements $StepsScoreCopyWith<$Res> {
  factory _$$StepsScoreImplCopyWith(
    _$StepsScoreImpl value,
    $Res Function(_$StepsScoreImpl) then,
  ) = __$$StepsScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'created_at_string') DateTime? createdAtString,
    @JsonKey(name: 'updated_at_string') DateTime? updatedAtString,
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'calculated_with_missing_user_info_bool')
    bool? calculatedWithMissingUserInfoBool,
  });
}

/// @nodoc
class __$$StepsScoreImplCopyWithImpl<$Res>
    extends _$StepsScoreCopyWithImpl<$Res, _$StepsScoreImpl>
    implements _$$StepsScoreImplCopyWith<$Res> {
  __$$StepsScoreImplCopyWithImpl(
    _$StepsScoreImpl _value,
    $Res Function(_$StepsScoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StepsScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetimeString = freezed,
    Object? createdAtString = freezed,
    Object? updatedAtString = freezed,
    Object? score0100Int = freezed,
    Object? calculatedWithMissingUserInfoBool = freezed,
  }) {
    return _then(
      _$StepsScoreImpl(
        datetimeString: freezed == datetimeString
            ? _value.datetimeString
            : datetimeString // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAtString: freezed == createdAtString
            ? _value.createdAtString
            : createdAtString // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAtString: freezed == updatedAtString
            ? _value.updatedAtString
            : updatedAtString // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        score0100Int: freezed == score0100Int
            ? _value.score0100Int
            : score0100Int // ignore: cast_nullable_to_non_nullable
                  as int?,
        calculatedWithMissingUserInfoBool:
            freezed == calculatedWithMissingUserInfoBool
            ? _value.calculatedWithMissingUserInfoBool
            : calculatedWithMissingUserInfoBool // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StepsScoreImpl implements _StepsScore {
  _$StepsScoreImpl({
    @JsonKey(name: 'datetime_string') this.datetimeString,
    @JsonKey(name: 'created_at_string') this.createdAtString,
    @JsonKey(name: 'updated_at_string') this.updatedAtString,
    @JsonKey(name: 'score_0_100_int') this.score0100Int,
    @JsonKey(name: 'calculated_with_missing_user_info_bool')
    this.calculatedWithMissingUserInfoBool,
  });

  factory _$StepsScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepsScoreImplFromJson(json);

  @override
  @JsonKey(name: 'datetime_string')
  final DateTime? datetimeString;
  @override
  @JsonKey(name: 'created_at_string')
  final DateTime? createdAtString;
  @override
  @JsonKey(name: 'updated_at_string')
  final DateTime? updatedAtString;
  @override
  @JsonKey(name: 'score_0_100_int')
  final int? score0100Int;
  @override
  @JsonKey(name: 'calculated_with_missing_user_info_bool')
  final bool? calculatedWithMissingUserInfoBool;

  @override
  String toString() {
    return 'StepsScore(datetimeString: $datetimeString, createdAtString: $createdAtString, updatedAtString: $updatedAtString, score0100Int: $score0100Int, calculatedWithMissingUserInfoBool: $calculatedWithMissingUserInfoBool)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepsScoreImpl &&
            (identical(other.datetimeString, datetimeString) ||
                other.datetimeString == datetimeString) &&
            (identical(other.createdAtString, createdAtString) ||
                other.createdAtString == createdAtString) &&
            (identical(other.updatedAtString, updatedAtString) ||
                other.updatedAtString == updatedAtString) &&
            (identical(other.score0100Int, score0100Int) ||
                other.score0100Int == score0100Int) &&
            (identical(
                  other.calculatedWithMissingUserInfoBool,
                  calculatedWithMissingUserInfoBool,
                ) ||
                other.calculatedWithMissingUserInfoBool ==
                    calculatedWithMissingUserInfoBool));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    datetimeString,
    createdAtString,
    updatedAtString,
    score0100Int,
    calculatedWithMissingUserInfoBool,
  );

  /// Create a copy of StepsScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepsScoreImplCopyWith<_$StepsScoreImpl> get copyWith =>
      __$$StepsScoreImplCopyWithImpl<_$StepsScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepsScoreImplToJson(this);
  }
}

abstract class _StepsScore implements StepsScore {
  factory _StepsScore({
    @JsonKey(name: 'datetime_string') final DateTime? datetimeString,
    @JsonKey(name: 'created_at_string') final DateTime? createdAtString,
    @JsonKey(name: 'updated_at_string') final DateTime? updatedAtString,
    @JsonKey(name: 'score_0_100_int') final int? score0100Int,
    @JsonKey(name: 'calculated_with_missing_user_info_bool')
    final bool? calculatedWithMissingUserInfoBool,
  }) = _$StepsScoreImpl;

  factory _StepsScore.fromJson(Map<String, dynamic> json) =
      _$StepsScoreImpl.fromJson;

  @override
  @JsonKey(name: 'datetime_string')
  DateTime? get datetimeString;
  @override
  @JsonKey(name: 'created_at_string')
  DateTime? get createdAtString;
  @override
  @JsonKey(name: 'updated_at_string')
  DateTime? get updatedAtString;
  @override
  @JsonKey(name: 'score_0_100_int')
  int? get score0100Int;
  @override
  @JsonKey(name: 'calculated_with_missing_user_info_bool')
  bool? get calculatedWithMissingUserInfoBool;

  /// Create a copy of StepsScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepsScoreImplCopyWith<_$StepsScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
