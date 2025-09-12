// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DateRange _$DateRangeFromJson(Map<String, dynamic> json) {
  return _DateRange.fromJson(json);
}

/// @nodoc
mixin _$DateRange {
  @JsonKey(name: 'start_date')
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// Serializes this DateRange to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DateRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateRangeCopyWith<DateRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateRangeCopyWith<$Res> {
  factory $DateRangeCopyWith(DateRange value, $Res Function(DateRange) then) =
      _$DateRangeCopyWithImpl<$Res, DateRange>;
  @useResult
  $Res call({
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
  });
}

/// @nodoc
class _$DateRangeCopyWithImpl<$Res, $Val extends DateRange>
    implements $DateRangeCopyWith<$Res> {
  _$DateRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? startDate = freezed, Object? endDate = freezed}) {
    return _then(
      _value.copyWith(
            startDate: freezed == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            endDate: freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DateRangeImplCopyWith<$Res>
    implements $DateRangeCopyWith<$Res> {
  factory _$$DateRangeImplCopyWith(
    _$DateRangeImpl value,
    $Res Function(_$DateRangeImpl) then,
  ) = __$$DateRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
  });
}

/// @nodoc
class __$$DateRangeImplCopyWithImpl<$Res>
    extends _$DateRangeCopyWithImpl<$Res, _$DateRangeImpl>
    implements _$$DateRangeImplCopyWith<$Res> {
  __$$DateRangeImplCopyWithImpl(
    _$DateRangeImpl _value,
    $Res Function(_$DateRangeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DateRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? startDate = freezed, Object? endDate = freezed}) {
    return _then(
      _$DateRangeImpl(
        startDate: freezed == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        endDate: freezed == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DateRangeImpl implements _DateRange {
  _$DateRangeImpl({
    @JsonKey(name: 'start_date') this.startDate,
    @JsonKey(name: 'end_date') this.endDate,
  });

  factory _$DateRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateRangeImplFromJson(json);

  @override
  @JsonKey(name: 'start_date')
  final DateTime? startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime? endDate;

  @override
  String toString() {
    return 'DateRange(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateRangeImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  /// Create a copy of DateRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateRangeImplCopyWith<_$DateRangeImpl> get copyWith =>
      __$$DateRangeImplCopyWithImpl<_$DateRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateRangeImplToJson(this);
  }
}

abstract class _DateRange implements DateRange {
  factory _DateRange({
    @JsonKey(name: 'start_date') final DateTime? startDate,
    @JsonKey(name: 'end_date') final DateTime? endDate,
  }) = _$DateRangeImpl;

  factory _DateRange.fromJson(Map<String, dynamic> json) =
      _$DateRangeImpl.fromJson;

  @override
  @JsonKey(name: 'start_date')
  DateTime? get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime? get endDate;

  /// Create a copy of DateRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateRangeImplCopyWith<_$DateRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
