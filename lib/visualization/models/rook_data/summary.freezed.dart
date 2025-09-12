// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Summary _$SummaryFromJson(Map<String, dynamic> json) {
  return _Summary.fromJson(json);
}

/// @nodoc
mixin _$Summary {
  @JsonKey(name: 'sleep_summary')
  SleepSummaryData? get sleepSummary => throw _privateConstructorUsedError;

  /// Serializes this Summary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SummaryCopyWith<Summary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryCopyWith<$Res> {
  factory $SummaryCopyWith(Summary value, $Res Function(Summary) then) =
      _$SummaryCopyWithImpl<$Res, Summary>;
  @useResult
  $Res call({@JsonKey(name: 'sleep_summary') SleepSummaryData? sleepSummary});

  $SleepSummaryDataCopyWith<$Res>? get sleepSummary;
}

/// @nodoc
class _$SummaryCopyWithImpl<$Res, $Val extends Summary>
    implements $SummaryCopyWith<$Res> {
  _$SummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sleepSummary = freezed}) {
    return _then(
      _value.copyWith(
            sleepSummary: freezed == sleepSummary
                ? _value.sleepSummary
                : sleepSummary // ignore: cast_nullable_to_non_nullable
                      as SleepSummaryData?,
          )
          as $Val,
    );
  }

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SleepSummaryDataCopyWith<$Res>? get sleepSummary {
    if (_value.sleepSummary == null) {
      return null;
    }

    return $SleepSummaryDataCopyWith<$Res>(_value.sleepSummary!, (value) {
      return _then(_value.copyWith(sleepSummary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SummaryImplCopyWith<$Res> implements $SummaryCopyWith<$Res> {
  factory _$$SummaryImplCopyWith(
    _$SummaryImpl value,
    $Res Function(_$SummaryImpl) then,
  ) = __$$SummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'sleep_summary') SleepSummaryData? sleepSummary});

  @override
  $SleepSummaryDataCopyWith<$Res>? get sleepSummary;
}

/// @nodoc
class __$$SummaryImplCopyWithImpl<$Res>
    extends _$SummaryCopyWithImpl<$Res, _$SummaryImpl>
    implements _$$SummaryImplCopyWith<$Res> {
  __$$SummaryImplCopyWithImpl(
    _$SummaryImpl _value,
    $Res Function(_$SummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sleepSummary = freezed}) {
    return _then(
      _$SummaryImpl(
        sleepSummary: freezed == sleepSummary
            ? _value.sleepSummary
            : sleepSummary // ignore: cast_nullable_to_non_nullable
                  as SleepSummaryData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SummaryImpl implements _Summary {
  _$SummaryImpl({@JsonKey(name: 'sleep_summary') this.sleepSummary});

  factory _$SummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SummaryImplFromJson(json);

  @override
  @JsonKey(name: 'sleep_summary')
  final SleepSummaryData? sleepSummary;

  @override
  String toString() {
    return 'Summary(sleepSummary: $sleepSummary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SummaryImpl &&
            (identical(other.sleepSummary, sleepSummary) ||
                other.sleepSummary == sleepSummary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sleepSummary);

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SummaryImplCopyWith<_$SummaryImpl> get copyWith =>
      __$$SummaryImplCopyWithImpl<_$SummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SummaryImplToJson(this);
  }
}

abstract class _Summary implements Summary {
  factory _Summary({
    @JsonKey(name: 'sleep_summary') final SleepSummaryData? sleepSummary,
  }) = _$SummaryImpl;

  factory _Summary.fromJson(Map<String, dynamic> json) = _$SummaryImpl.fromJson;

  @override
  @JsonKey(name: 'sleep_summary')
  SleepSummaryData? get sleepSummary;

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SummaryImplCopyWith<_$SummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
