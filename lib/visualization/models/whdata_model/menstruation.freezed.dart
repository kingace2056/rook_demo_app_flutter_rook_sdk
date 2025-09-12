// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menstruation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Menstruation _$MenstruationFromJson(Map<String, dynamic> json) {
  return _Menstruation.fromJson(json);
}

/// @nodoc
mixin _$Menstruation {
  @JsonKey(name: 'last_updated_datetime_string')
  DateTime? get lastUpdatedDatetimeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_start_date_string')
  DateTime? get periodStartDateString => throw _privateConstructorUsedError;
  @JsonKey(name: 'cycle_day_int')
  int? get cycleDayInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'predicted_cycle_length_days_int')
  int? get predictedCycleLengthDaysInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cycle_length_days_int')
  int? get cycleLengthDaysInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_phase_string')
  String? get currentPhaseString => throw _privateConstructorUsedError;
  @JsonKey(name: 'length_of_current_phase_days_int')
  int? get lengthOfCurrentPhaseDaysInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'days_until_next_phase_int')
  int? get daysUntilNextPhaseInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_a_predicted_cycle_bool')
  bool? get isAPredictedCycleBool => throw _privateConstructorUsedError;

  /// Serializes this Menstruation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Menstruation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenstruationCopyWith<Menstruation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenstruationCopyWith<$Res> {
  factory $MenstruationCopyWith(
    Menstruation value,
    $Res Function(Menstruation) then,
  ) = _$MenstruationCopyWithImpl<$Res, Menstruation>;
  @useResult
  $Res call({
    @JsonKey(name: 'last_updated_datetime_string')
    DateTime? lastUpdatedDatetimeString,
    @JsonKey(name: 'period_start_date_string') DateTime? periodStartDateString,
    @JsonKey(name: 'cycle_day_int') int? cycleDayInt,
    @JsonKey(name: 'predicted_cycle_length_days_int')
    int? predictedCycleLengthDaysInt,
    @JsonKey(name: 'cycle_length_days_int') int? cycleLengthDaysInt,
    @JsonKey(name: 'current_phase_string') String? currentPhaseString,
    @JsonKey(name: 'length_of_current_phase_days_int')
    int? lengthOfCurrentPhaseDaysInt,
    @JsonKey(name: 'days_until_next_phase_int') int? daysUntilNextPhaseInt,
    @JsonKey(name: 'is_a_predicted_cycle_bool') bool? isAPredictedCycleBool,
  });
}

/// @nodoc
class _$MenstruationCopyWithImpl<$Res, $Val extends Menstruation>
    implements $MenstruationCopyWith<$Res> {
  _$MenstruationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Menstruation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdatedDatetimeString = freezed,
    Object? periodStartDateString = freezed,
    Object? cycleDayInt = freezed,
    Object? predictedCycleLengthDaysInt = freezed,
    Object? cycleLengthDaysInt = freezed,
    Object? currentPhaseString = freezed,
    Object? lengthOfCurrentPhaseDaysInt = freezed,
    Object? daysUntilNextPhaseInt = freezed,
    Object? isAPredictedCycleBool = freezed,
  }) {
    return _then(
      _value.copyWith(
            lastUpdatedDatetimeString: freezed == lastUpdatedDatetimeString
                ? _value.lastUpdatedDatetimeString
                : lastUpdatedDatetimeString // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            periodStartDateString: freezed == periodStartDateString
                ? _value.periodStartDateString
                : periodStartDateString // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            cycleDayInt: freezed == cycleDayInt
                ? _value.cycleDayInt
                : cycleDayInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            predictedCycleLengthDaysInt: freezed == predictedCycleLengthDaysInt
                ? _value.predictedCycleLengthDaysInt
                : predictedCycleLengthDaysInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            cycleLengthDaysInt: freezed == cycleLengthDaysInt
                ? _value.cycleLengthDaysInt
                : cycleLengthDaysInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            currentPhaseString: freezed == currentPhaseString
                ? _value.currentPhaseString
                : currentPhaseString // ignore: cast_nullable_to_non_nullable
                      as String?,
            lengthOfCurrentPhaseDaysInt: freezed == lengthOfCurrentPhaseDaysInt
                ? _value.lengthOfCurrentPhaseDaysInt
                : lengthOfCurrentPhaseDaysInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            daysUntilNextPhaseInt: freezed == daysUntilNextPhaseInt
                ? _value.daysUntilNextPhaseInt
                : daysUntilNextPhaseInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            isAPredictedCycleBool: freezed == isAPredictedCycleBool
                ? _value.isAPredictedCycleBool
                : isAPredictedCycleBool // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MenstruationImplCopyWith<$Res>
    implements $MenstruationCopyWith<$Res> {
  factory _$$MenstruationImplCopyWith(
    _$MenstruationImpl value,
    $Res Function(_$MenstruationImpl) then,
  ) = __$$MenstruationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'last_updated_datetime_string')
    DateTime? lastUpdatedDatetimeString,
    @JsonKey(name: 'period_start_date_string') DateTime? periodStartDateString,
    @JsonKey(name: 'cycle_day_int') int? cycleDayInt,
    @JsonKey(name: 'predicted_cycle_length_days_int')
    int? predictedCycleLengthDaysInt,
    @JsonKey(name: 'cycle_length_days_int') int? cycleLengthDaysInt,
    @JsonKey(name: 'current_phase_string') String? currentPhaseString,
    @JsonKey(name: 'length_of_current_phase_days_int')
    int? lengthOfCurrentPhaseDaysInt,
    @JsonKey(name: 'days_until_next_phase_int') int? daysUntilNextPhaseInt,
    @JsonKey(name: 'is_a_predicted_cycle_bool') bool? isAPredictedCycleBool,
  });
}

/// @nodoc
class __$$MenstruationImplCopyWithImpl<$Res>
    extends _$MenstruationCopyWithImpl<$Res, _$MenstruationImpl>
    implements _$$MenstruationImplCopyWith<$Res> {
  __$$MenstruationImplCopyWithImpl(
    _$MenstruationImpl _value,
    $Res Function(_$MenstruationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Menstruation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdatedDatetimeString = freezed,
    Object? periodStartDateString = freezed,
    Object? cycleDayInt = freezed,
    Object? predictedCycleLengthDaysInt = freezed,
    Object? cycleLengthDaysInt = freezed,
    Object? currentPhaseString = freezed,
    Object? lengthOfCurrentPhaseDaysInt = freezed,
    Object? daysUntilNextPhaseInt = freezed,
    Object? isAPredictedCycleBool = freezed,
  }) {
    return _then(
      _$MenstruationImpl(
        lastUpdatedDatetimeString: freezed == lastUpdatedDatetimeString
            ? _value.lastUpdatedDatetimeString
            : lastUpdatedDatetimeString // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        periodStartDateString: freezed == periodStartDateString
            ? _value.periodStartDateString
            : periodStartDateString // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        cycleDayInt: freezed == cycleDayInt
            ? _value.cycleDayInt
            : cycleDayInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        predictedCycleLengthDaysInt: freezed == predictedCycleLengthDaysInt
            ? _value.predictedCycleLengthDaysInt
            : predictedCycleLengthDaysInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        cycleLengthDaysInt: freezed == cycleLengthDaysInt
            ? _value.cycleLengthDaysInt
            : cycleLengthDaysInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        currentPhaseString: freezed == currentPhaseString
            ? _value.currentPhaseString
            : currentPhaseString // ignore: cast_nullable_to_non_nullable
                  as String?,
        lengthOfCurrentPhaseDaysInt: freezed == lengthOfCurrentPhaseDaysInt
            ? _value.lengthOfCurrentPhaseDaysInt
            : lengthOfCurrentPhaseDaysInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        daysUntilNextPhaseInt: freezed == daysUntilNextPhaseInt
            ? _value.daysUntilNextPhaseInt
            : daysUntilNextPhaseInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        isAPredictedCycleBool: freezed == isAPredictedCycleBool
            ? _value.isAPredictedCycleBool
            : isAPredictedCycleBool // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MenstruationImpl implements _Menstruation {
  _$MenstruationImpl({
    @JsonKey(name: 'last_updated_datetime_string')
    this.lastUpdatedDatetimeString,
    @JsonKey(name: 'period_start_date_string') this.periodStartDateString,
    @JsonKey(name: 'cycle_day_int') this.cycleDayInt,
    @JsonKey(name: 'predicted_cycle_length_days_int')
    this.predictedCycleLengthDaysInt,
    @JsonKey(name: 'cycle_length_days_int') this.cycleLengthDaysInt,
    @JsonKey(name: 'current_phase_string') this.currentPhaseString,
    @JsonKey(name: 'length_of_current_phase_days_int')
    this.lengthOfCurrentPhaseDaysInt,
    @JsonKey(name: 'days_until_next_phase_int') this.daysUntilNextPhaseInt,
    @JsonKey(name: 'is_a_predicted_cycle_bool') this.isAPredictedCycleBool,
  });

  factory _$MenstruationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenstruationImplFromJson(json);

  @override
  @JsonKey(name: 'last_updated_datetime_string')
  final DateTime? lastUpdatedDatetimeString;
  @override
  @JsonKey(name: 'period_start_date_string')
  final DateTime? periodStartDateString;
  @override
  @JsonKey(name: 'cycle_day_int')
  final int? cycleDayInt;
  @override
  @JsonKey(name: 'predicted_cycle_length_days_int')
  final int? predictedCycleLengthDaysInt;
  @override
  @JsonKey(name: 'cycle_length_days_int')
  final int? cycleLengthDaysInt;
  @override
  @JsonKey(name: 'current_phase_string')
  final String? currentPhaseString;
  @override
  @JsonKey(name: 'length_of_current_phase_days_int')
  final int? lengthOfCurrentPhaseDaysInt;
  @override
  @JsonKey(name: 'days_until_next_phase_int')
  final int? daysUntilNextPhaseInt;
  @override
  @JsonKey(name: 'is_a_predicted_cycle_bool')
  final bool? isAPredictedCycleBool;

  @override
  String toString() {
    return 'Menstruation(lastUpdatedDatetimeString: $lastUpdatedDatetimeString, periodStartDateString: $periodStartDateString, cycleDayInt: $cycleDayInt, predictedCycleLengthDaysInt: $predictedCycleLengthDaysInt, cycleLengthDaysInt: $cycleLengthDaysInt, currentPhaseString: $currentPhaseString, lengthOfCurrentPhaseDaysInt: $lengthOfCurrentPhaseDaysInt, daysUntilNextPhaseInt: $daysUntilNextPhaseInt, isAPredictedCycleBool: $isAPredictedCycleBool)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenstruationImpl &&
            (identical(
                  other.lastUpdatedDatetimeString,
                  lastUpdatedDatetimeString,
                ) ||
                other.lastUpdatedDatetimeString == lastUpdatedDatetimeString) &&
            (identical(other.periodStartDateString, periodStartDateString) ||
                other.periodStartDateString == periodStartDateString) &&
            (identical(other.cycleDayInt, cycleDayInt) ||
                other.cycleDayInt == cycleDayInt) &&
            (identical(
                  other.predictedCycleLengthDaysInt,
                  predictedCycleLengthDaysInt,
                ) ||
                other.predictedCycleLengthDaysInt ==
                    predictedCycleLengthDaysInt) &&
            (identical(other.cycleLengthDaysInt, cycleLengthDaysInt) ||
                other.cycleLengthDaysInt == cycleLengthDaysInt) &&
            (identical(other.currentPhaseString, currentPhaseString) ||
                other.currentPhaseString == currentPhaseString) &&
            (identical(
                  other.lengthOfCurrentPhaseDaysInt,
                  lengthOfCurrentPhaseDaysInt,
                ) ||
                other.lengthOfCurrentPhaseDaysInt ==
                    lengthOfCurrentPhaseDaysInt) &&
            (identical(other.daysUntilNextPhaseInt, daysUntilNextPhaseInt) ||
                other.daysUntilNextPhaseInt == daysUntilNextPhaseInt) &&
            (identical(other.isAPredictedCycleBool, isAPredictedCycleBool) ||
                other.isAPredictedCycleBool == isAPredictedCycleBool));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    lastUpdatedDatetimeString,
    periodStartDateString,
    cycleDayInt,
    predictedCycleLengthDaysInt,
    cycleLengthDaysInt,
    currentPhaseString,
    lengthOfCurrentPhaseDaysInt,
    daysUntilNextPhaseInt,
    isAPredictedCycleBool,
  );

  /// Create a copy of Menstruation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenstruationImplCopyWith<_$MenstruationImpl> get copyWith =>
      __$$MenstruationImplCopyWithImpl<_$MenstruationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenstruationImplToJson(this);
  }
}

abstract class _Menstruation implements Menstruation {
  factory _Menstruation({
    @JsonKey(name: 'last_updated_datetime_string')
    final DateTime? lastUpdatedDatetimeString,
    @JsonKey(name: 'period_start_date_string')
    final DateTime? periodStartDateString,
    @JsonKey(name: 'cycle_day_int') final int? cycleDayInt,
    @JsonKey(name: 'predicted_cycle_length_days_int')
    final int? predictedCycleLengthDaysInt,
    @JsonKey(name: 'cycle_length_days_int') final int? cycleLengthDaysInt,
    @JsonKey(name: 'current_phase_string') final String? currentPhaseString,
    @JsonKey(name: 'length_of_current_phase_days_int')
    final int? lengthOfCurrentPhaseDaysInt,
    @JsonKey(name: 'days_until_next_phase_int')
    final int? daysUntilNextPhaseInt,
    @JsonKey(name: 'is_a_predicted_cycle_bool')
    final bool? isAPredictedCycleBool,
  }) = _$MenstruationImpl;

  factory _Menstruation.fromJson(Map<String, dynamic> json) =
      _$MenstruationImpl.fromJson;

  @override
  @JsonKey(name: 'last_updated_datetime_string')
  DateTime? get lastUpdatedDatetimeString;
  @override
  @JsonKey(name: 'period_start_date_string')
  DateTime? get periodStartDateString;
  @override
  @JsonKey(name: 'cycle_day_int')
  int? get cycleDayInt;
  @override
  @JsonKey(name: 'predicted_cycle_length_days_int')
  int? get predictedCycleLengthDaysInt;
  @override
  @JsonKey(name: 'cycle_length_days_int')
  int? get cycleLengthDaysInt;
  @override
  @JsonKey(name: 'current_phase_string')
  String? get currentPhaseString;
  @override
  @JsonKey(name: 'length_of_current_phase_days_int')
  int? get lengthOfCurrentPhaseDaysInt;
  @override
  @JsonKey(name: 'days_until_next_phase_int')
  int? get daysUntilNextPhaseInt;
  @override
  @JsonKey(name: 'is_a_predicted_cycle_bool')
  bool? get isAPredictedCycleBool;

  /// Create a copy of Menstruation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenstruationImplCopyWith<_$MenstruationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
