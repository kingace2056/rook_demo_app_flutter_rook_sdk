// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calories_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CaloriesScore _$CaloriesScoreFromJson(Map<String, dynamic> json) {
  return _CaloriesScore.fromJson(json);
}

/// @nodoc
mixin _$CaloriesScore {
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
  @JsonKey(name: 'missing_user_info_array')
  List<String>? get missingUserInfoArray => throw _privateConstructorUsedError;

  /// Serializes this CaloriesScore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CaloriesScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CaloriesScoreCopyWith<CaloriesScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaloriesScoreCopyWith<$Res> {
  factory $CaloriesScoreCopyWith(
    CaloriesScore value,
    $Res Function(CaloriesScore) then,
  ) = _$CaloriesScoreCopyWithImpl<$Res, CaloriesScore>;
  @useResult
  $Res call({
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'created_at_string') DateTime? createdAtString,
    @JsonKey(name: 'updated_at_string') DateTime? updatedAtString,
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'calculated_with_missing_user_info_bool')
    bool? calculatedWithMissingUserInfoBool,
    @JsonKey(name: 'missing_user_info_array')
    List<String>? missingUserInfoArray,
  });
}

/// @nodoc
class _$CaloriesScoreCopyWithImpl<$Res, $Val extends CaloriesScore>
    implements $CaloriesScoreCopyWith<$Res> {
  _$CaloriesScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CaloriesScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetimeString = freezed,
    Object? createdAtString = freezed,
    Object? updatedAtString = freezed,
    Object? score0100Int = freezed,
    Object? calculatedWithMissingUserInfoBool = freezed,
    Object? missingUserInfoArray = freezed,
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
            missingUserInfoArray: freezed == missingUserInfoArray
                ? _value.missingUserInfoArray
                : missingUserInfoArray // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CaloriesScoreImplCopyWith<$Res>
    implements $CaloriesScoreCopyWith<$Res> {
  factory _$$CaloriesScoreImplCopyWith(
    _$CaloriesScoreImpl value,
    $Res Function(_$CaloriesScoreImpl) then,
  ) = __$$CaloriesScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'created_at_string') DateTime? createdAtString,
    @JsonKey(name: 'updated_at_string') DateTime? updatedAtString,
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'calculated_with_missing_user_info_bool')
    bool? calculatedWithMissingUserInfoBool,
    @JsonKey(name: 'missing_user_info_array')
    List<String>? missingUserInfoArray,
  });
}

/// @nodoc
class __$$CaloriesScoreImplCopyWithImpl<$Res>
    extends _$CaloriesScoreCopyWithImpl<$Res, _$CaloriesScoreImpl>
    implements _$$CaloriesScoreImplCopyWith<$Res> {
  __$$CaloriesScoreImplCopyWithImpl(
    _$CaloriesScoreImpl _value,
    $Res Function(_$CaloriesScoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CaloriesScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetimeString = freezed,
    Object? createdAtString = freezed,
    Object? updatedAtString = freezed,
    Object? score0100Int = freezed,
    Object? calculatedWithMissingUserInfoBool = freezed,
    Object? missingUserInfoArray = freezed,
  }) {
    return _then(
      _$CaloriesScoreImpl(
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
        missingUserInfoArray: freezed == missingUserInfoArray
            ? _value._missingUserInfoArray
            : missingUserInfoArray // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CaloriesScoreImpl implements _CaloriesScore {
  _$CaloriesScoreImpl({
    @JsonKey(name: 'datetime_string') this.datetimeString,
    @JsonKey(name: 'created_at_string') this.createdAtString,
    @JsonKey(name: 'updated_at_string') this.updatedAtString,
    @JsonKey(name: 'score_0_100_int') this.score0100Int,
    @JsonKey(name: 'calculated_with_missing_user_info_bool')
    this.calculatedWithMissingUserInfoBool,
    @JsonKey(name: 'missing_user_info_array')
    final List<String>? missingUserInfoArray,
  }) : _missingUserInfoArray = missingUserInfoArray;

  factory _$CaloriesScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaloriesScoreImplFromJson(json);

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
  final List<String>? _missingUserInfoArray;
  @override
  @JsonKey(name: 'missing_user_info_array')
  List<String>? get missingUserInfoArray {
    final value = _missingUserInfoArray;
    if (value == null) return null;
    if (_missingUserInfoArray is EqualUnmodifiableListView)
      return _missingUserInfoArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CaloriesScore(datetimeString: $datetimeString, createdAtString: $createdAtString, updatedAtString: $updatedAtString, score0100Int: $score0100Int, calculatedWithMissingUserInfoBool: $calculatedWithMissingUserInfoBool, missingUserInfoArray: $missingUserInfoArray)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaloriesScoreImpl &&
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
                    calculatedWithMissingUserInfoBool) &&
            const DeepCollectionEquality().equals(
              other._missingUserInfoArray,
              _missingUserInfoArray,
            ));
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
    const DeepCollectionEquality().hash(_missingUserInfoArray),
  );

  /// Create a copy of CaloriesScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CaloriesScoreImplCopyWith<_$CaloriesScoreImpl> get copyWith =>
      __$$CaloriesScoreImplCopyWithImpl<_$CaloriesScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaloriesScoreImplToJson(this);
  }
}

abstract class _CaloriesScore implements CaloriesScore {
  factory _CaloriesScore({
    @JsonKey(name: 'datetime_string') final DateTime? datetimeString,
    @JsonKey(name: 'created_at_string') final DateTime? createdAtString,
    @JsonKey(name: 'updated_at_string') final DateTime? updatedAtString,
    @JsonKey(name: 'score_0_100_int') final int? score0100Int,
    @JsonKey(name: 'calculated_with_missing_user_info_bool')
    final bool? calculatedWithMissingUserInfoBool,
    @JsonKey(name: 'missing_user_info_array')
    final List<String>? missingUserInfoArray,
  }) = _$CaloriesScoreImpl;

  factory _CaloriesScore.fromJson(Map<String, dynamic> json) =
      _$CaloriesScoreImpl.fromJson;

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
  @override
  @JsonKey(name: 'missing_user_info_array')
  List<String>? get missingUserInfoArray;

  /// Create a copy of CaloriesScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CaloriesScoreImplCopyWith<_$CaloriesScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
