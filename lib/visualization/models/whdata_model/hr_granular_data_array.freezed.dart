// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hr_granular_data_array.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HrGranularDataArray _$HrGranularDataArrayFromJson(Map<String, dynamic> json) {
  return _HrGranularDataArray.fromJson(json);
}

/// @nodoc
mixin _$HrGranularDataArray {
  @JsonKey(name: 'hr_bpm_int')
  int? get hrBpmInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'datetime_string')
  DateTime? get datetimeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'interval_duration_seconds_float')
  double? get intervalDurationSecondsFloat =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'source_of_data_string')
  String? get sourceOfDataString => throw _privateConstructorUsedError;

  /// Serializes this HrGranularDataArray to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HrGranularDataArray
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HrGranularDataArrayCopyWith<HrGranularDataArray> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HrGranularDataArrayCopyWith<$Res> {
  factory $HrGranularDataArrayCopyWith(
          HrGranularDataArray value, $Res Function(HrGranularDataArray) then) =
      _$HrGranularDataArrayCopyWithImpl<$Res, HrGranularDataArray>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hr_bpm_int') int? hrBpmInt,
      @JsonKey(name: 'datetime_string') DateTime? datetimeString,
      @JsonKey(name: 'interval_duration_seconds_float')
      double? intervalDurationSecondsFloat,
      @JsonKey(name: 'source_of_data_string') String? sourceOfDataString});
}

/// @nodoc
class _$HrGranularDataArrayCopyWithImpl<$Res, $Val extends HrGranularDataArray>
    implements $HrGranularDataArrayCopyWith<$Res> {
  _$HrGranularDataArrayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HrGranularDataArray
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hrBpmInt = freezed,
    Object? datetimeString = freezed,
    Object? intervalDurationSecondsFloat = freezed,
    Object? sourceOfDataString = freezed,
  }) {
    return _then(_value.copyWith(
      hrBpmInt: freezed == hrBpmInt
          ? _value.hrBpmInt
          : hrBpmInt // ignore: cast_nullable_to_non_nullable
              as int?,
      datetimeString: freezed == datetimeString
          ? _value.datetimeString
          : datetimeString // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      intervalDurationSecondsFloat: freezed == intervalDurationSecondsFloat
          ? _value.intervalDurationSecondsFloat
          : intervalDurationSecondsFloat // ignore: cast_nullable_to_non_nullable
              as double?,
      sourceOfDataString: freezed == sourceOfDataString
          ? _value.sourceOfDataString
          : sourceOfDataString // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HrGranularDataArrayImplCopyWith<$Res>
    implements $HrGranularDataArrayCopyWith<$Res> {
  factory _$$HrGranularDataArrayImplCopyWith(_$HrGranularDataArrayImpl value,
          $Res Function(_$HrGranularDataArrayImpl) then) =
      __$$HrGranularDataArrayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hr_bpm_int') int? hrBpmInt,
      @JsonKey(name: 'datetime_string') DateTime? datetimeString,
      @JsonKey(name: 'interval_duration_seconds_float')
      double? intervalDurationSecondsFloat,
      @JsonKey(name: 'source_of_data_string') String? sourceOfDataString});
}

/// @nodoc
class __$$HrGranularDataArrayImplCopyWithImpl<$Res>
    extends _$HrGranularDataArrayCopyWithImpl<$Res, _$HrGranularDataArrayImpl>
    implements _$$HrGranularDataArrayImplCopyWith<$Res> {
  __$$HrGranularDataArrayImplCopyWithImpl(_$HrGranularDataArrayImpl _value,
      $Res Function(_$HrGranularDataArrayImpl) _then)
      : super(_value, _then);

  /// Create a copy of HrGranularDataArray
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hrBpmInt = freezed,
    Object? datetimeString = freezed,
    Object? intervalDurationSecondsFloat = freezed,
    Object? sourceOfDataString = freezed,
  }) {
    return _then(_$HrGranularDataArrayImpl(
      hrBpmInt: freezed == hrBpmInt
          ? _value.hrBpmInt
          : hrBpmInt // ignore: cast_nullable_to_non_nullable
              as int?,
      datetimeString: freezed == datetimeString
          ? _value.datetimeString
          : datetimeString // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      intervalDurationSecondsFloat: freezed == intervalDurationSecondsFloat
          ? _value.intervalDurationSecondsFloat
          : intervalDurationSecondsFloat // ignore: cast_nullable_to_non_nullable
              as double?,
      sourceOfDataString: freezed == sourceOfDataString
          ? _value.sourceOfDataString
          : sourceOfDataString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HrGranularDataArrayImpl implements _HrGranularDataArray {
  _$HrGranularDataArrayImpl(
      {@JsonKey(name: 'hr_bpm_int') this.hrBpmInt,
      @JsonKey(name: 'datetime_string') this.datetimeString,
      @JsonKey(name: 'interval_duration_seconds_float')
      this.intervalDurationSecondsFloat,
      @JsonKey(name: 'source_of_data_string') this.sourceOfDataString});

  factory _$HrGranularDataArrayImpl.fromJson(Map<String, dynamic> json) =>
      _$$HrGranularDataArrayImplFromJson(json);

  @override
  @JsonKey(name: 'hr_bpm_int')
  final int? hrBpmInt;
  @override
  @JsonKey(name: 'datetime_string')
  final DateTime? datetimeString;
  @override
  @JsonKey(name: 'interval_duration_seconds_float')
  final double? intervalDurationSecondsFloat;
  @override
  @JsonKey(name: 'source_of_data_string')
  final String? sourceOfDataString;

  @override
  String toString() {
    return 'HrGranularDataArray(hrBpmInt: $hrBpmInt, datetimeString: $datetimeString, intervalDurationSecondsFloat: $intervalDurationSecondsFloat, sourceOfDataString: $sourceOfDataString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HrGranularDataArrayImpl &&
            (identical(other.hrBpmInt, hrBpmInt) ||
                other.hrBpmInt == hrBpmInt) &&
            (identical(other.datetimeString, datetimeString) ||
                other.datetimeString == datetimeString) &&
            (identical(other.intervalDurationSecondsFloat,
                    intervalDurationSecondsFloat) ||
                other.intervalDurationSecondsFloat ==
                    intervalDurationSecondsFloat) &&
            (identical(other.sourceOfDataString, sourceOfDataString) ||
                other.sourceOfDataString == sourceOfDataString));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hrBpmInt, datetimeString,
      intervalDurationSecondsFloat, sourceOfDataString);

  /// Create a copy of HrGranularDataArray
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HrGranularDataArrayImplCopyWith<_$HrGranularDataArrayImpl> get copyWith =>
      __$$HrGranularDataArrayImplCopyWithImpl<_$HrGranularDataArrayImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HrGranularDataArrayImplToJson(
      this,
    );
  }
}

abstract class _HrGranularDataArray implements HrGranularDataArray {
  factory _HrGranularDataArray(
      {@JsonKey(name: 'hr_bpm_int') final int? hrBpmInt,
      @JsonKey(name: 'datetime_string') final DateTime? datetimeString,
      @JsonKey(name: 'interval_duration_seconds_float')
      final double? intervalDurationSecondsFloat,
      @JsonKey(name: 'source_of_data_string')
      final String? sourceOfDataString}) = _$HrGranularDataArrayImpl;

  factory _HrGranularDataArray.fromJson(Map<String, dynamic> json) =
      _$HrGranularDataArrayImpl.fromJson;

  @override
  @JsonKey(name: 'hr_bpm_int')
  int? get hrBpmInt;
  @override
  @JsonKey(name: 'datetime_string')
  DateTime? get datetimeString;
  @override
  @JsonKey(name: 'interval_duration_seconds_float')
  double? get intervalDurationSecondsFloat;
  @override
  @JsonKey(name: 'source_of_data_string')
  String? get sourceOfDataString;

  /// Create a copy of HrGranularDataArray
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HrGranularDataArrayImplCopyWith<_$HrGranularDataArrayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
