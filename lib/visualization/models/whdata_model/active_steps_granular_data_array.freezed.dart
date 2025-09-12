// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_steps_granular_data_array.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ActiveStepsGranularDataArray _$ActiveStepsGranularDataArrayFromJson(
  Map<String, dynamic> json,
) {
  return _ActiveStepsGranularDataArray.fromJson(json);
}

/// @nodoc
mixin _$ActiveStepsGranularDataArray {
  @JsonKey(name: 'steps_int')
  int? get stepsInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'datetime_string')
  DateTime? get datetimeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'interval_duration_seconds_float')
  int? get intervalDurationSecondsFloat => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_of_data_string')
  String? get sourceOfDataString => throw _privateConstructorUsedError;

  /// Serializes this ActiveStepsGranularDataArray to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveStepsGranularDataArray
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveStepsGranularDataArrayCopyWith<ActiveStepsGranularDataArray>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveStepsGranularDataArrayCopyWith<$Res> {
  factory $ActiveStepsGranularDataArrayCopyWith(
    ActiveStepsGranularDataArray value,
    $Res Function(ActiveStepsGranularDataArray) then,
  ) =
      _$ActiveStepsGranularDataArrayCopyWithImpl<
        $Res,
        ActiveStepsGranularDataArray
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'steps_int') int? stepsInt,
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'interval_duration_seconds_float')
    int? intervalDurationSecondsFloat,
    @JsonKey(name: 'source_of_data_string') String? sourceOfDataString,
  });
}

/// @nodoc
class _$ActiveStepsGranularDataArrayCopyWithImpl<
  $Res,
  $Val extends ActiveStepsGranularDataArray
>
    implements $ActiveStepsGranularDataArrayCopyWith<$Res> {
  _$ActiveStepsGranularDataArrayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveStepsGranularDataArray
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepsInt = freezed,
    Object? datetimeString = freezed,
    Object? intervalDurationSecondsFloat = freezed,
    Object? sourceOfDataString = freezed,
  }) {
    return _then(
      _value.copyWith(
            stepsInt: freezed == stepsInt
                ? _value.stepsInt
                : stepsInt // ignore: cast_nullable_to_non_nullable
                      as int?,
            datetimeString: freezed == datetimeString
                ? _value.datetimeString
                : datetimeString // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            intervalDurationSecondsFloat:
                freezed == intervalDurationSecondsFloat
                ? _value.intervalDurationSecondsFloat
                : intervalDurationSecondsFloat // ignore: cast_nullable_to_non_nullable
                      as int?,
            sourceOfDataString: freezed == sourceOfDataString
                ? _value.sourceOfDataString
                : sourceOfDataString // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ActiveStepsGranularDataArrayImplCopyWith<$Res>
    implements $ActiveStepsGranularDataArrayCopyWith<$Res> {
  factory _$$ActiveStepsGranularDataArrayImplCopyWith(
    _$ActiveStepsGranularDataArrayImpl value,
    $Res Function(_$ActiveStepsGranularDataArrayImpl) then,
  ) = __$$ActiveStepsGranularDataArrayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'steps_int') int? stepsInt,
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'interval_duration_seconds_float')
    int? intervalDurationSecondsFloat,
    @JsonKey(name: 'source_of_data_string') String? sourceOfDataString,
  });
}

/// @nodoc
class __$$ActiveStepsGranularDataArrayImplCopyWithImpl<$Res>
    extends
        _$ActiveStepsGranularDataArrayCopyWithImpl<
          $Res,
          _$ActiveStepsGranularDataArrayImpl
        >
    implements _$$ActiveStepsGranularDataArrayImplCopyWith<$Res> {
  __$$ActiveStepsGranularDataArrayImplCopyWithImpl(
    _$ActiveStepsGranularDataArrayImpl _value,
    $Res Function(_$ActiveStepsGranularDataArrayImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ActiveStepsGranularDataArray
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepsInt = freezed,
    Object? datetimeString = freezed,
    Object? intervalDurationSecondsFloat = freezed,
    Object? sourceOfDataString = freezed,
  }) {
    return _then(
      _$ActiveStepsGranularDataArrayImpl(
        stepsInt: freezed == stepsInt
            ? _value.stepsInt
            : stepsInt // ignore: cast_nullable_to_non_nullable
                  as int?,
        datetimeString: freezed == datetimeString
            ? _value.datetimeString
            : datetimeString // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        intervalDurationSecondsFloat: freezed == intervalDurationSecondsFloat
            ? _value.intervalDurationSecondsFloat
            : intervalDurationSecondsFloat // ignore: cast_nullable_to_non_nullable
                  as int?,
        sourceOfDataString: freezed == sourceOfDataString
            ? _value.sourceOfDataString
            : sourceOfDataString // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveStepsGranularDataArrayImpl
    implements _ActiveStepsGranularDataArray {
  _$ActiveStepsGranularDataArrayImpl({
    @JsonKey(name: 'steps_int') this.stepsInt,
    @JsonKey(name: 'datetime_string') this.datetimeString,
    @JsonKey(name: 'interval_duration_seconds_float')
    this.intervalDurationSecondsFloat,
    @JsonKey(name: 'source_of_data_string') this.sourceOfDataString,
  });

  factory _$ActiveStepsGranularDataArrayImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ActiveStepsGranularDataArrayImplFromJson(json);

  @override
  @JsonKey(name: 'steps_int')
  final int? stepsInt;
  @override
  @JsonKey(name: 'datetime_string')
  final DateTime? datetimeString;
  @override
  @JsonKey(name: 'interval_duration_seconds_float')
  final int? intervalDurationSecondsFloat;
  @override
  @JsonKey(name: 'source_of_data_string')
  final String? sourceOfDataString;

  @override
  String toString() {
    return 'ActiveStepsGranularDataArray(stepsInt: $stepsInt, datetimeString: $datetimeString, intervalDurationSecondsFloat: $intervalDurationSecondsFloat, sourceOfDataString: $sourceOfDataString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveStepsGranularDataArrayImpl &&
            (identical(other.stepsInt, stepsInt) ||
                other.stepsInt == stepsInt) &&
            (identical(other.datetimeString, datetimeString) ||
                other.datetimeString == datetimeString) &&
            (identical(
                  other.intervalDurationSecondsFloat,
                  intervalDurationSecondsFloat,
                ) ||
                other.intervalDurationSecondsFloat ==
                    intervalDurationSecondsFloat) &&
            (identical(other.sourceOfDataString, sourceOfDataString) ||
                other.sourceOfDataString == sourceOfDataString));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    stepsInt,
    datetimeString,
    intervalDurationSecondsFloat,
    sourceOfDataString,
  );

  /// Create a copy of ActiveStepsGranularDataArray
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveStepsGranularDataArrayImplCopyWith<
    _$ActiveStepsGranularDataArrayImpl
  >
  get copyWith =>
      __$$ActiveStepsGranularDataArrayImplCopyWithImpl<
        _$ActiveStepsGranularDataArrayImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveStepsGranularDataArrayImplToJson(this);
  }
}

abstract class _ActiveStepsGranularDataArray
    implements ActiveStepsGranularDataArray {
  factory _ActiveStepsGranularDataArray({
    @JsonKey(name: 'steps_int') final int? stepsInt,
    @JsonKey(name: 'datetime_string') final DateTime? datetimeString,
    @JsonKey(name: 'interval_duration_seconds_float')
    final int? intervalDurationSecondsFloat,
    @JsonKey(name: 'source_of_data_string') final String? sourceOfDataString,
  }) = _$ActiveStepsGranularDataArrayImpl;

  factory _ActiveStepsGranularDataArray.fromJson(Map<String, dynamic> json) =
      _$ActiveStepsGranularDataArrayImpl.fromJson;

  @override
  @JsonKey(name: 'steps_int')
  int? get stepsInt;
  @override
  @JsonKey(name: 'datetime_string')
  DateTime? get datetimeString;
  @override
  @JsonKey(name: 'interval_duration_seconds_float')
  int? get intervalDurationSecondsFloat;
  @override
  @JsonKey(name: 'source_of_data_string')
  String? get sourceOfDataString;

  /// Create a copy of ActiveStepsGranularDataArray
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveStepsGranularDataArrayImplCopyWith<
    _$ActiveStepsGranularDataArrayImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
