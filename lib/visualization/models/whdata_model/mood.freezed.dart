// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mood.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Mood _$MoodFromJson(Map<String, dynamic> json) {
  return _Mood.fromJson(json);
}

/// @nodoc
mixin _$Mood {
  @JsonKey(name: 'mood_minimum_scale_int')
  int? get moodMinimumScaleInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'mood_avg_scale_int')
  int? get moodAvgScaleInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'mood_maximum_scale_int')
  int? get moodMaximumScaleInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'mood_delta_scale_int')
  int? get moodDeltaScaleInt => throw _privateConstructorUsedError;

  /// Serializes this Mood to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Mood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoodCopyWith<Mood> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodCopyWith<$Res> {
  factory $MoodCopyWith(Mood value, $Res Function(Mood) then) =
      _$MoodCopyWithImpl<$Res, Mood>;
  @useResult
  $Res call({
    @JsonKey(name: 'mood_minimum_scale_int') int? moodMinimumScaleInt,
    @JsonKey(name: 'mood_avg_scale_int') int? moodAvgScaleInt,
    @JsonKey(name: 'mood_maximum_scale_int') int? moodMaximumScaleInt,
    @JsonKey(name: 'mood_delta_scale_int') int? moodDeltaScaleInt,
  });
}

/// @nodoc
class _$MoodCopyWithImpl<$Res, $Val extends Mood>
    implements $MoodCopyWith<$Res> {
  _$MoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Mood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moodMinimumScaleInt = freezed,
    Object? moodAvgScaleInt = freezed,
    Object? moodMaximumScaleInt = freezed,
    Object? moodDeltaScaleInt = freezed,
  }) {
    return _then(
      _value.copyWith(
            moodMinimumScaleInt: freezed == moodMinimumScaleInt
                ? _value.moodMinimumScaleInt
                : moodMinimumScaleInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            moodAvgScaleInt: freezed == moodAvgScaleInt
                ? _value.moodAvgScaleInt
                : moodAvgScaleInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            moodMaximumScaleInt: freezed == moodMaximumScaleInt
                ? _value.moodMaximumScaleInt
                : moodMaximumScaleInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            moodDeltaScaleInt: freezed == moodDeltaScaleInt
                ? _value.moodDeltaScaleInt
                : moodDeltaScaleInt // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MoodImplCopyWith<$Res> implements $MoodCopyWith<$Res> {
  factory _$$MoodImplCopyWith(
    _$MoodImpl value,
    $Res Function(_$MoodImpl) then,
  ) = __$$MoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'mood_minimum_scale_int') int? moodMinimumScaleInt,
    @JsonKey(name: 'mood_avg_scale_int') int? moodAvgScaleInt,
    @JsonKey(name: 'mood_maximum_scale_int') int? moodMaximumScaleInt,
    @JsonKey(name: 'mood_delta_scale_int') int? moodDeltaScaleInt,
  });
}

/// @nodoc
class __$$MoodImplCopyWithImpl<$Res>
    extends _$MoodCopyWithImpl<$Res, _$MoodImpl>
    implements _$$MoodImplCopyWith<$Res> {
  __$$MoodImplCopyWithImpl(_$MoodImpl _value, $Res Function(_$MoodImpl) _then)
    : super(_value, _then);

  /// Create a copy of Mood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moodMinimumScaleInt = freezed,
    Object? moodAvgScaleInt = freezed,
    Object? moodMaximumScaleInt = freezed,
    Object? moodDeltaScaleInt = freezed,
  }) {
    return _then(
      _$MoodImpl(
        moodMinimumScaleInt: freezed == moodMinimumScaleInt
            ? _value.moodMinimumScaleInt
            : moodMinimumScaleInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        moodAvgScaleInt: freezed == moodAvgScaleInt
            ? _value.moodAvgScaleInt
            : moodAvgScaleInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        moodMaximumScaleInt: freezed == moodMaximumScaleInt
            ? _value.moodMaximumScaleInt
            : moodMaximumScaleInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        moodDeltaScaleInt: freezed == moodDeltaScaleInt
            ? _value.moodDeltaScaleInt
            : moodDeltaScaleInt // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MoodImpl implements _Mood {
  _$MoodImpl({
    @JsonKey(name: 'mood_minimum_scale_int') this.moodMinimumScaleInt,
    @JsonKey(name: 'mood_avg_scale_int') this.moodAvgScaleInt,
    @JsonKey(name: 'mood_maximum_scale_int') this.moodMaximumScaleInt,
    @JsonKey(name: 'mood_delta_scale_int') this.moodDeltaScaleInt,
  });

  factory _$MoodImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoodImplFromJson(json);

  @override
  @JsonKey(name: 'mood_minimum_scale_int')
  final int? moodMinimumScaleInt;
  @override
  @JsonKey(name: 'mood_avg_scale_int')
  final int? moodAvgScaleInt;
  @override
  @JsonKey(name: 'mood_maximum_scale_int')
  final int? moodMaximumScaleInt;
  @override
  @JsonKey(name: 'mood_delta_scale_int')
  final int? moodDeltaScaleInt;

  @override
  String toString() {
    return 'Mood(moodMinimumScaleInt: $moodMinimumScaleInt, moodAvgScaleInt: $moodAvgScaleInt, moodMaximumScaleInt: $moodMaximumScaleInt, moodDeltaScaleInt: $moodDeltaScaleInt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoodImpl &&
            (identical(other.moodMinimumScaleInt, moodMinimumScaleInt) ||
                other.moodMinimumScaleInt == moodMinimumScaleInt) &&
            (identical(other.moodAvgScaleInt, moodAvgScaleInt) ||
                other.moodAvgScaleInt == moodAvgScaleInt) &&
            (identical(other.moodMaximumScaleInt, moodMaximumScaleInt) ||
                other.moodMaximumScaleInt == moodMaximumScaleInt) &&
            (identical(other.moodDeltaScaleInt, moodDeltaScaleInt) ||
                other.moodDeltaScaleInt == moodDeltaScaleInt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    moodMinimumScaleInt,
    moodAvgScaleInt,
    moodMaximumScaleInt,
    moodDeltaScaleInt,
  );

  /// Create a copy of Mood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoodImplCopyWith<_$MoodImpl> get copyWith =>
      __$$MoodImplCopyWithImpl<_$MoodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoodImplToJson(this);
  }
}

abstract class _Mood implements Mood {
  factory _Mood({
    @JsonKey(name: 'mood_minimum_scale_int') final int? moodMinimumScaleInt,
    @JsonKey(name: 'mood_avg_scale_int') final int? moodAvgScaleInt,
    @JsonKey(name: 'mood_maximum_scale_int') final int? moodMaximumScaleInt,
    @JsonKey(name: 'mood_delta_scale_int') final int? moodDeltaScaleInt,
  }) = _$MoodImpl;

  factory _Mood.fromJson(Map<String, dynamic> json) = _$MoodImpl.fromJson;

  @override
  @JsonKey(name: 'mood_minimum_scale_int')
  int? get moodMinimumScaleInt;
  @override
  @JsonKey(name: 'mood_avg_scale_int')
  int? get moodAvgScaleInt;
  @override
  @JsonKey(name: 'mood_maximum_scale_int')
  int? get moodMaximumScaleInt;
  @override
  @JsonKey(name: 'mood_delta_scale_int')
  int? get moodDeltaScaleInt;

  /// Create a copy of Mood
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoodImplCopyWith<_$MoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
