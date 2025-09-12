// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return _Activity.fromJson(json);
}

/// @nodoc
mixin _$Activity {
  @JsonKey(name: 'active_seconds_int')
  int? get activeSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rest_seconds_int')
  int? get restSecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'low_intensity_seconds_int')
  int? get lowIntensitySecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'moderate_intensity_seconds_int')
  int? get moderateIntensitySecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'vigorous_intensity_seconds_int')
  int? get vigorousIntensitySecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'inactivity_seconds_int')
  int? get inactivitySecondsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'continuous_inactive_periods_int')
  int? get continuousInactivePeriodsInt => throw _privateConstructorUsedError;

  /// Serializes this Activity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res, Activity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'active_seconds_int') int? activeSecondsInt,
      @JsonKey(name: 'rest_seconds_int') int? restSecondsInt,
      @JsonKey(name: 'low_intensity_seconds_int') int? lowIntensitySecondsInt,
      @JsonKey(name: 'moderate_intensity_seconds_int')
      int? moderateIntensitySecondsInt,
      @JsonKey(name: 'vigorous_intensity_seconds_int')
      int? vigorousIntensitySecondsInt,
      @JsonKey(name: 'inactivity_seconds_int') int? inactivitySecondsInt,
      @JsonKey(name: 'continuous_inactive_periods_int')
      int? continuousInactivePeriodsInt});
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res, $Val extends Activity>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeSecondsInt = freezed,
    Object? restSecondsInt = freezed,
    Object? lowIntensitySecondsInt = freezed,
    Object? moderateIntensitySecondsInt = freezed,
    Object? vigorousIntensitySecondsInt = freezed,
    Object? inactivitySecondsInt = freezed,
    Object? continuousInactivePeriodsInt = freezed,
  }) {
    return _then(_value.copyWith(
      activeSecondsInt: freezed == activeSecondsInt
          ? _value.activeSecondsInt
          : activeSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      restSecondsInt: freezed == restSecondsInt
          ? _value.restSecondsInt
          : restSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      lowIntensitySecondsInt: freezed == lowIntensitySecondsInt
          ? _value.lowIntensitySecondsInt
          : lowIntensitySecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      moderateIntensitySecondsInt: freezed == moderateIntensitySecondsInt
          ? _value.moderateIntensitySecondsInt
          : moderateIntensitySecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      vigorousIntensitySecondsInt: freezed == vigorousIntensitySecondsInt
          ? _value.vigorousIntensitySecondsInt
          : vigorousIntensitySecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      inactivitySecondsInt: freezed == inactivitySecondsInt
          ? _value.inactivitySecondsInt
          : inactivitySecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      continuousInactivePeriodsInt: freezed == continuousInactivePeriodsInt
          ? _value.continuousInactivePeriodsInt
          : continuousInactivePeriodsInt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityImplCopyWith<$Res>
    implements $ActivityCopyWith<$Res> {
  factory _$$ActivityImplCopyWith(
          _$ActivityImpl value, $Res Function(_$ActivityImpl) then) =
      __$$ActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'active_seconds_int') int? activeSecondsInt,
      @JsonKey(name: 'rest_seconds_int') int? restSecondsInt,
      @JsonKey(name: 'low_intensity_seconds_int') int? lowIntensitySecondsInt,
      @JsonKey(name: 'moderate_intensity_seconds_int')
      int? moderateIntensitySecondsInt,
      @JsonKey(name: 'vigorous_intensity_seconds_int')
      int? vigorousIntensitySecondsInt,
      @JsonKey(name: 'inactivity_seconds_int') int? inactivitySecondsInt,
      @JsonKey(name: 'continuous_inactive_periods_int')
      int? continuousInactivePeriodsInt});
}

/// @nodoc
class __$$ActivityImplCopyWithImpl<$Res>
    extends _$ActivityCopyWithImpl<$Res, _$ActivityImpl>
    implements _$$ActivityImplCopyWith<$Res> {
  __$$ActivityImplCopyWithImpl(
      _$ActivityImpl _value, $Res Function(_$ActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeSecondsInt = freezed,
    Object? restSecondsInt = freezed,
    Object? lowIntensitySecondsInt = freezed,
    Object? moderateIntensitySecondsInt = freezed,
    Object? vigorousIntensitySecondsInt = freezed,
    Object? inactivitySecondsInt = freezed,
    Object? continuousInactivePeriodsInt = freezed,
  }) {
    return _then(_$ActivityImpl(
      activeSecondsInt: freezed == activeSecondsInt
          ? _value.activeSecondsInt
          : activeSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      restSecondsInt: freezed == restSecondsInt
          ? _value.restSecondsInt
          : restSecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      lowIntensitySecondsInt: freezed == lowIntensitySecondsInt
          ? _value.lowIntensitySecondsInt
          : lowIntensitySecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      moderateIntensitySecondsInt: freezed == moderateIntensitySecondsInt
          ? _value.moderateIntensitySecondsInt
          : moderateIntensitySecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      vigorousIntensitySecondsInt: freezed == vigorousIntensitySecondsInt
          ? _value.vigorousIntensitySecondsInt
          : vigorousIntensitySecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      inactivitySecondsInt: freezed == inactivitySecondsInt
          ? _value.inactivitySecondsInt
          : inactivitySecondsInt // ignore: cast_nullable_to_non_nullable
              as int?,
      continuousInactivePeriodsInt: freezed == continuousInactivePeriodsInt
          ? _value.continuousInactivePeriodsInt
          : continuousInactivePeriodsInt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityImpl implements _Activity {
  _$ActivityImpl(
      {@JsonKey(name: 'active_seconds_int') this.activeSecondsInt,
      @JsonKey(name: 'rest_seconds_int') this.restSecondsInt,
      @JsonKey(name: 'low_intensity_seconds_int') this.lowIntensitySecondsInt,
      @JsonKey(name: 'moderate_intensity_seconds_int')
      this.moderateIntensitySecondsInt,
      @JsonKey(name: 'vigorous_intensity_seconds_int')
      this.vigorousIntensitySecondsInt,
      @JsonKey(name: 'inactivity_seconds_int') this.inactivitySecondsInt,
      @JsonKey(name: 'continuous_inactive_periods_int')
      this.continuousInactivePeriodsInt});

  factory _$ActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityImplFromJson(json);

  @override
  @JsonKey(name: 'active_seconds_int')
  final int? activeSecondsInt;
  @override
  @JsonKey(name: 'rest_seconds_int')
  final int? restSecondsInt;
  @override
  @JsonKey(name: 'low_intensity_seconds_int')
  final int? lowIntensitySecondsInt;
  @override
  @JsonKey(name: 'moderate_intensity_seconds_int')
  final int? moderateIntensitySecondsInt;
  @override
  @JsonKey(name: 'vigorous_intensity_seconds_int')
  final int? vigorousIntensitySecondsInt;
  @override
  @JsonKey(name: 'inactivity_seconds_int')
  final int? inactivitySecondsInt;
  @override
  @JsonKey(name: 'continuous_inactive_periods_int')
  final int? continuousInactivePeriodsInt;

  @override
  String toString() {
    return 'Activity(activeSecondsInt: $activeSecondsInt, restSecondsInt: $restSecondsInt, lowIntensitySecondsInt: $lowIntensitySecondsInt, moderateIntensitySecondsInt: $moderateIntensitySecondsInt, vigorousIntensitySecondsInt: $vigorousIntensitySecondsInt, inactivitySecondsInt: $inactivitySecondsInt, continuousInactivePeriodsInt: $continuousInactivePeriodsInt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityImpl &&
            (identical(other.activeSecondsInt, activeSecondsInt) ||
                other.activeSecondsInt == activeSecondsInt) &&
            (identical(other.restSecondsInt, restSecondsInt) ||
                other.restSecondsInt == restSecondsInt) &&
            (identical(other.lowIntensitySecondsInt, lowIntensitySecondsInt) ||
                other.lowIntensitySecondsInt == lowIntensitySecondsInt) &&
            (identical(other.moderateIntensitySecondsInt,
                    moderateIntensitySecondsInt) ||
                other.moderateIntensitySecondsInt ==
                    moderateIntensitySecondsInt) &&
            (identical(other.vigorousIntensitySecondsInt,
                    vigorousIntensitySecondsInt) ||
                other.vigorousIntensitySecondsInt ==
                    vigorousIntensitySecondsInt) &&
            (identical(other.inactivitySecondsInt, inactivitySecondsInt) ||
                other.inactivitySecondsInt == inactivitySecondsInt) &&
            (identical(other.continuousInactivePeriodsInt,
                    continuousInactivePeriodsInt) ||
                other.continuousInactivePeriodsInt ==
                    continuousInactivePeriodsInt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      activeSecondsInt,
      restSecondsInt,
      lowIntensitySecondsInt,
      moderateIntensitySecondsInt,
      vigorousIntensitySecondsInt,
      inactivitySecondsInt,
      continuousInactivePeriodsInt);

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      __$$ActivityImplCopyWithImpl<_$ActivityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityImplToJson(
      this,
    );
  }
}

abstract class _Activity implements Activity {
  factory _Activity(
      {@JsonKey(name: 'active_seconds_int') final int? activeSecondsInt,
      @JsonKey(name: 'rest_seconds_int') final int? restSecondsInt,
      @JsonKey(name: 'low_intensity_seconds_int')
      final int? lowIntensitySecondsInt,
      @JsonKey(name: 'moderate_intensity_seconds_int')
      final int? moderateIntensitySecondsInt,
      @JsonKey(name: 'vigorous_intensity_seconds_int')
      final int? vigorousIntensitySecondsInt,
      @JsonKey(name: 'inactivity_seconds_int') final int? inactivitySecondsInt,
      @JsonKey(name: 'continuous_inactive_periods_int')
      final int? continuousInactivePeriodsInt}) = _$ActivityImpl;

  factory _Activity.fromJson(Map<String, dynamic> json) =
      _$ActivityImpl.fromJson;

  @override
  @JsonKey(name: 'active_seconds_int')
  int? get activeSecondsInt;
  @override
  @JsonKey(name: 'rest_seconds_int')
  int? get restSecondsInt;
  @override
  @JsonKey(name: 'low_intensity_seconds_int')
  int? get lowIntensitySecondsInt;
  @override
  @JsonKey(name: 'moderate_intensity_seconds_int')
  int? get moderateIntensitySecondsInt;
  @override
  @JsonKey(name: 'vigorous_intensity_seconds_int')
  int? get vigorousIntensitySecondsInt;
  @override
  @JsonKey(name: 'inactivity_seconds_int')
  int? get inactivitySecondsInt;
  @override
  @JsonKey(name: 'continuous_inactive_periods_int')
  int? get continuousInactivePeriodsInt;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
