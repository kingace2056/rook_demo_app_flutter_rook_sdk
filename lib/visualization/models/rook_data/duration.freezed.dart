// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Duration _$DurationFromJson(Map<String, dynamic> json) {
  return _Duration.fromJson(json);
}

/// @nodoc
mixin _$Duration {
  @JsonKey(name: 'sleep_start_datetime_string')
  DateTime? get sleepStartDatetimeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_end_datetime_string')
  DateTime? get sleepEndDatetimeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_date_string')
  DateTime? get sleepDateString => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_duration_seconds_int')
  int? get sleepDurationSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_in_bed_seconds_int')
  int? get timeInBedSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'light_sleep_duration_seconds_int')
  int? get lightSleepDurationSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rem_sleep_duration_seconds_int')
  int? get remSleepDurationSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deep_sleep_duration_seconds_int')
  int? get deepSleepDurationSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_to_fall_asleep_seconds_int')
  int? get timeToFallAsleepSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_awake_during_sleep_seconds_int')
  int? get timeAwakeDuringSleepSecondsInt => throw _privateConstructorUsedError;

  /// Serializes this Duration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Duration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DurationCopyWith<Duration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DurationCopyWith<$Res> {
  factory $DurationCopyWith(Duration value, $Res Function(Duration) then) =
      _$DurationCopyWithImpl<$Res, Duration>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sleep_start_datetime_string')
      DateTime? sleepStartDatetimeString,
      @JsonKey(name: 'sleep_end_datetime_string')
      DateTime? sleepEndDatetimeString,
      @JsonKey(name: 'sleep_date_string') DateTime? sleepDateString,
      @JsonKey(name: 'sleep_duration_seconds_int') int? sleepDurationSecondsInt,
      @JsonKey(name: 'time_in_bed_seconds_int') int? timeInBedSecondsInt,
      @JsonKey(name: 'light_sleep_duration_seconds_int')
      int? lightSleepDurationSecondsInt,
      @JsonKey(name: 'rem_sleep_duration_seconds_int')
      int? remSleepDurationSecondsInt,
      @JsonKey(name: 'deep_sleep_duration_seconds_int')
      int? deepSleepDurationSecondsInt,
      @JsonKey(name: 'time_to_fall_asleep_seconds_int')
      int? timeToFallAsleepSecondsInt,
      @JsonKey(name: 'time_awake_during_sleep_seconds_int')
      int? timeAwakeDuringSleepSecondsInt});
}

/// @nodoc
class _$DurationCopyWithImpl<$Res, $Val extends Duration>
    implements $DurationCopyWith<$Res> {
  _$DurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Duration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sleepStartDatetimeString = freezed,
    Object? sleepEndDatetimeString = freezed,
    Object? sleepDateString = freezed,
    Object? sleepDurationSecondsInt = freezed,
    Object? timeInBedSecondsInt = freezed,
    Object? lightSleepDurationSecondsInt = freezed,
    Object? remSleepDurationSecondsInt = freezed,
    Object? deepSleepDurationSecondsInt = freezed,
    Object? timeToFallAsleepSecondsInt = freezed,
    Object? timeAwakeDuringSleepSecondsInt = freezed,
  }) {
    return _then(_value.copyWith(
      sleepStartDatetimeString: freezed == sleepStartDatetimeString
          ? _value.sleepStartDatetimeString
          : sleepStartDatetimeString // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sleepEndDatetimeString: freezed == sleepEndDatetimeString
          ? _value.sleepEndDatetimeString
          : sleepEndDatetimeString // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sleepDateString: freezed == sleepDateString
          ? _value.sleepDateString
          : sleepDateString // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sleepDurationSecondsInt: freezed == sleepDurationSecondsInt
          ? _value.sleepDurationSecondsInt
          : sleepDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      timeInBedSecondsInt: freezed == timeInBedSecondsInt
          ? _value.timeInBedSecondsInt
          : timeInBedSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      lightSleepDurationSecondsInt: freezed == lightSleepDurationSecondsInt
          ? _value.lightSleepDurationSecondsInt
          : lightSleepDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      remSleepDurationSecondsInt: freezed == remSleepDurationSecondsInt
          ? _value.remSleepDurationSecondsInt
          : remSleepDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      deepSleepDurationSecondsInt: freezed == deepSleepDurationSecondsInt
          ? _value.deepSleepDurationSecondsInt
          : deepSleepDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      timeToFallAsleepSecondsInt: freezed == timeToFallAsleepSecondsInt
          ? _value.timeToFallAsleepSecondsInt
          : timeToFallAsleepSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      timeAwakeDuringSleepSecondsInt: freezed == timeAwakeDuringSleepSecondsInt
          ? _value.timeAwakeDuringSleepSecondsInt
          : timeAwakeDuringSleepSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DurationImplCopyWith<$Res>
    implements $DurationCopyWith<$Res> {
  factory _$$DurationImplCopyWith(
          _$DurationImpl value, $Res Function(_$DurationImpl) then) =
      __$$DurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sleep_start_datetime_string')
      DateTime? sleepStartDatetimeString,
      @JsonKey(name: 'sleep_end_datetime_string')
      DateTime? sleepEndDatetimeString,
      @JsonKey(name: 'sleep_date_string') DateTime? sleepDateString,
      @JsonKey(name: 'sleep_duration_seconds_int') int? sleepDurationSecondsInt,
      @JsonKey(name: 'time_in_bed_seconds_int') int? timeInBedSecondsInt,
      @JsonKey(name: 'light_sleep_duration_seconds_int')
      int? lightSleepDurationSecondsInt,
      @JsonKey(name: 'rem_sleep_duration_seconds_int')
      int? remSleepDurationSecondsInt,
      @JsonKey(name: 'deep_sleep_duration_seconds_int')
      int? deepSleepDurationSecondsInt,
      @JsonKey(name: 'time_to_fall_asleep_seconds_int')
      int? timeToFallAsleepSecondsInt,
      @JsonKey(name: 'time_awake_during_sleep_seconds_int')
      int? timeAwakeDuringSleepSecondsInt});
}

/// @nodoc
class __$$DurationImplCopyWithImpl<$Res>
    extends _$DurationCopyWithImpl<$Res, _$DurationImpl>
    implements _$$DurationImplCopyWith<$Res> {
  __$$DurationImplCopyWithImpl(
      _$DurationImpl _value, $Res Function(_$DurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Duration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sleepStartDatetimeString = freezed,
    Object? sleepEndDatetimeString = freezed,
    Object? sleepDateString = freezed,
    Object? sleepDurationSecondsInt = freezed,
    Object? timeInBedSecondsInt = freezed,
    Object? lightSleepDurationSecondsInt = freezed,
    Object? remSleepDurationSecondsInt = freezed,
    Object? deepSleepDurationSecondsInt = freezed,
    Object? timeToFallAsleepSecondsInt = freezed,
    Object? timeAwakeDuringSleepSecondsInt = freezed,
  }) {
    return _then(_$DurationImpl(
      sleepStartDatetimeString: freezed == sleepStartDatetimeString
          ? _value.sleepStartDatetimeString
          : sleepStartDatetimeString // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sleepEndDatetimeString: freezed == sleepEndDatetimeString
          ? _value.sleepEndDatetimeString
          : sleepEndDatetimeString // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sleepDateString: freezed == sleepDateString
          ? _value.sleepDateString
          : sleepDateString // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sleepDurationSecondsInt: freezed == sleepDurationSecondsInt
          ? _value.sleepDurationSecondsInt
          : sleepDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      timeInBedSecondsInt: freezed == timeInBedSecondsInt
          ? _value.timeInBedSecondsInt
          : timeInBedSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      lightSleepDurationSecondsInt: freezed == lightSleepDurationSecondsInt
          ? _value.lightSleepDurationSecondsInt
          : lightSleepDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      remSleepDurationSecondsInt: freezed == remSleepDurationSecondsInt
          ? _value.remSleepDurationSecondsInt
          : remSleepDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      deepSleepDurationSecondsInt: freezed == deepSleepDurationSecondsInt
          ? _value.deepSleepDurationSecondsInt
          : deepSleepDurationSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      timeToFallAsleepSecondsInt: freezed == timeToFallAsleepSecondsInt
          ? _value.timeToFallAsleepSecondsInt
          : timeToFallAsleepSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      timeAwakeDuringSleepSecondsInt: freezed == timeAwakeDuringSleepSecondsInt
          ? _value.timeAwakeDuringSleepSecondsInt
          : timeAwakeDuringSleepSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DurationImpl implements _Duration {
  _$DurationImpl(
      {@JsonKey(name: 'sleep_start_datetime_string')
      this.sleepStartDatetimeString,
      @JsonKey(name: 'sleep_end_datetime_string') this.sleepEndDatetimeString,
      @JsonKey(name: 'sleep_date_string') this.sleepDateString,
      @JsonKey(name: 'sleep_duration_seconds_int') this.sleepDurationSecondsInt,
      @JsonKey(name: 'time_in_bed_seconds_int') this.timeInBedSecondsInt,
      @JsonKey(name: 'light_sleep_duration_seconds_int')
      this.lightSleepDurationSecondsInt,
      @JsonKey(name: 'rem_sleep_duration_seconds_int')
      this.remSleepDurationSecondsInt,
      @JsonKey(name: 'deep_sleep_duration_seconds_int')
      this.deepSleepDurationSecondsInt,
      @JsonKey(name: 'time_to_fall_asleep_seconds_int')
      this.timeToFallAsleepSecondsInt,
      @JsonKey(name: 'time_awake_during_sleep_seconds_int')
      this.timeAwakeDuringSleepSecondsInt});

  factory _$DurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DurationImplFromJson(json);

  @override
  @JsonKey(name: 'sleep_start_datetime_string')
  final DateTime? sleepStartDatetimeString;
  @override
  @JsonKey(name: 'sleep_end_datetime_string')
  final DateTime? sleepEndDatetimeString;
  @override
  @JsonKey(name: 'sleep_date_string')
  final DateTime? sleepDateString;
  @override
  @JsonKey(name: 'sleep_duration_seconds_int')
  final int? sleepDurationSecondsInt;
  @override
  @JsonKey(name: 'time_in_bed_seconds_int')
  final int? timeInBedSecondsInt;
  @override
  @JsonKey(name: 'light_sleep_duration_seconds_int')
  final int? lightSleepDurationSecondsInt;
  @override
  @JsonKey(name: 'rem_sleep_duration_seconds_int')
  final int? remSleepDurationSecondsInt;
  @override
  @JsonKey(name: 'deep_sleep_duration_seconds_int')
  final int? deepSleepDurationSecondsInt;
  @override
  @JsonKey(name: 'time_to_fall_asleep_seconds_int')
  final int? timeToFallAsleepSecondsInt;
  @override
  @JsonKey(name: 'time_awake_during_sleep_seconds_int')
  final int? timeAwakeDuringSleepSecondsInt;

  @override
  String toString() {
    return 'Duration(sleepStartDatetimeString: $sleepStartDatetimeString, sleepEndDatetimeString: $sleepEndDatetimeString, sleepDateString: $sleepDateString, sleepDurationSecondsInt: $sleepDurationSecondsInt, timeInBedSecondsInt: $timeInBedSecondsInt, lightSleepDurationSecondsInt: $lightSleepDurationSecondsInt, remSleepDurationSecondsInt: $remSleepDurationSecondsInt, deepSleepDurationSecondsInt: $deepSleepDurationSecondsInt, timeToFallAsleepSecondsInt: $timeToFallAsleepSecondsInt, timeAwakeDuringSleepSecondsInt: $timeAwakeDuringSleepSecondsInt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationImpl &&
            (identical(other.sleepStartDatetimeString, sleepStartDatetimeString) ||
                other.sleepStartDatetimeString == sleepStartDatetimeString) &&
            (identical(other.sleepEndDatetimeString, sleepEndDatetimeString) ||
                other.sleepEndDatetimeString == sleepEndDatetimeString) &&
            (identical(other.sleepDateString, sleepDateString) ||
                other.sleepDateString == sleepDateString) &&
            (identical(other.sleepDurationSecondsInt, sleepDurationSecondsInt) ||
                other.sleepDurationSecondsInt == sleepDurationSecondsInt) &&
            (identical(other.timeInBedSecondsInt, timeInBedSecondsInt) ||
                other.timeInBedSecondsInt == timeInBedSecondsInt) &&
            (identical(other.lightSleepDurationSecondsInt,
                    lightSleepDurationSecondsInt) ||
                other.lightSleepDurationSecondsInt ==
                    lightSleepDurationSecondsInt) &&
            (identical(other.remSleepDurationSecondsInt, remSleepDurationSecondsInt) ||
                other.remSleepDurationSecondsInt ==
                    remSleepDurationSecondsInt) &&
            (identical(other.deepSleepDurationSecondsInt,
                    deepSleepDurationSecondsInt) ||
                other.deepSleepDurationSecondsInt ==
                    deepSleepDurationSecondsInt) &&
            (identical(other.timeToFallAsleepSecondsInt, timeToFallAsleepSecondsInt) ||
                other.timeToFallAsleepSecondsInt ==
                    timeToFallAsleepSecondsInt) &&
            (identical(other.timeAwakeDuringSleepSecondsInt,
                    timeAwakeDuringSleepSecondsInt) ||
                other.timeAwakeDuringSleepSecondsInt ==
                    timeAwakeDuringSleepSecondsInt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sleepStartDatetimeString,
      sleepEndDatetimeString,
      sleepDateString,
      sleepDurationSecondsInt,
      timeInBedSecondsInt,
      lightSleepDurationSecondsInt,
      remSleepDurationSecondsInt,
      deepSleepDurationSecondsInt,
      timeToFallAsleepSecondsInt,
      timeAwakeDuringSleepSecondsInt);

  /// Create a copy of Duration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DurationImplCopyWith<_$DurationImpl> get copyWith =>
      __$$DurationImplCopyWithImpl<_$DurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DurationImplToJson(
      this,
    );
  }
}

abstract class _Duration implements Duration {
  factory _Duration(
      {@JsonKey(name: 'sleep_start_datetime_string')
      final DateTime? sleepStartDatetimeString,
      @JsonKey(name: 'sleep_end_datetime_string')
      final DateTime? sleepEndDatetimeString,
      @JsonKey(name: 'sleep_date_string') final DateTime? sleepDateString,
      @JsonKey(name: 'sleep_duration_seconds_int')
      final int? sleepDurationSecondsInt,
      @JsonKey(name: 'time_in_bed_seconds_int') final int? timeInBedSecondsInt,
      @JsonKey(name: 'light_sleep_duration_seconds_int')
      final int? lightSleepDurationSecondsInt,
      @JsonKey(name: 'rem_sleep_duration_seconds_int')
      final int? remSleepDurationSecondsInt,
      @JsonKey(name: 'deep_sleep_duration_seconds_int')
      final int? deepSleepDurationSecondsInt,
      @JsonKey(name: 'time_to_fall_asleep_seconds_int')
      final int? timeToFallAsleepSecondsInt,
      @JsonKey(name: 'time_awake_during_sleep_seconds_int')
      final int? timeAwakeDuringSleepSecondsInt}) = _$DurationImpl;

  factory _Duration.fromJson(Map<String, dynamic> json) =
      _$DurationImpl.fromJson;

  @override
  @JsonKey(name: 'sleep_start_datetime_string')
  DateTime? get sleepStartDatetimeString;
  @override
  @JsonKey(name: 'sleep_end_datetime_string')
  DateTime? get sleepEndDatetimeString;
  @override
  @JsonKey(name: 'sleep_date_string')
  DateTime? get sleepDateString;
  @override
  @JsonKey(name: 'sleep_duration_seconds_int')
  int? get sleepDurationSecondsInt;
  @override
  @JsonKey(name: 'time_in_bed_seconds_int')
  int? get timeInBedSecondsInt;
  @override
  @JsonKey(name: 'light_sleep_duration_seconds_int')
  int? get lightSleepDurationSecondsInt;
  @override
  @JsonKey(name: 'rem_sleep_duration_seconds_int')
  int? get remSleepDurationSecondsInt;
  @override
  @JsonKey(name: 'deep_sleep_duration_seconds_int')
  int? get deepSleepDurationSecondsInt;
  @override
  @JsonKey(name: 'time_to_fall_asleep_seconds_int')
  int? get timeToFallAsleepSecondsInt;
  @override
  @JsonKey(name: 'time_awake_during_sleep_seconds_int')
  int? get timeAwakeDuringSleepSecondsInt;

  /// Create a copy of Duration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DurationImplCopyWith<_$DurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
