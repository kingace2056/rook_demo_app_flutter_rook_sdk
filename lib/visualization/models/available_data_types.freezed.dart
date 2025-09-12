// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_data_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DataSummary _$DataSummaryFromJson(Map<String, dynamic> json) {
  return _DataSummary.fromJson(json);
}

/// @nodoc
mixin _$DataSummary {
  @JsonKey(name: 'total_data_types')
  int? get totalDataTypes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_records')
  int? get totalRecords => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_structures_found')
  List<String>? get dataStructuresFound => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_range')
  DateRange? get dateRange => throw _privateConstructorUsedError;

  /// Serializes this DataSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataSummaryCopyWith<DataSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSummaryCopyWith<$Res> {
  factory $DataSummaryCopyWith(
    DataSummary value,
    $Res Function(DataSummary) then,
  ) = _$DataSummaryCopyWithImpl<$Res, DataSummary>;
  @useResult
  $Res call({
    @JsonKey(name: 'total_data_types') int? totalDataTypes,
    @JsonKey(name: 'total_records') int? totalRecords,
    @JsonKey(name: 'data_structures_found') List<String>? dataStructuresFound,
    @JsonKey(name: 'date_range') DateRange? dateRange,
  });

  $DateRangeCopyWith<$Res>? get dateRange;
}

/// @nodoc
class _$DataSummaryCopyWithImpl<$Res, $Val extends DataSummary>
    implements $DataSummaryCopyWith<$Res> {
  _$DataSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDataTypes = freezed,
    Object? totalRecords = freezed,
    Object? dataStructuresFound = freezed,
    Object? dateRange = freezed,
  }) {
    return _then(
      _value.copyWith(
            totalDataTypes: freezed == totalDataTypes
                ? _value.totalDataTypes
                : totalDataTypes // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalRecords: freezed == totalRecords
                ? _value.totalRecords
                : totalRecords // ignore: cast_nullable_to_non_nullable
                      as int?,
            dataStructuresFound: freezed == dataStructuresFound
                ? _value.dataStructuresFound
                : dataStructuresFound // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            dateRange: freezed == dateRange
                ? _value.dateRange
                : dateRange // ignore: cast_nullable_to_non_nullable
                      as DateRange?,
          )
          as $Val,
    );
  }

  /// Create a copy of DataSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateRangeCopyWith<$Res>? get dateRange {
    if (_value.dateRange == null) {
      return null;
    }

    return $DateRangeCopyWith<$Res>(_value.dateRange!, (value) {
      return _then(_value.copyWith(dateRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataSummaryImplCopyWith<$Res>
    implements $DataSummaryCopyWith<$Res> {
  factory _$$DataSummaryImplCopyWith(
    _$DataSummaryImpl value,
    $Res Function(_$DataSummaryImpl) then,
  ) = __$$DataSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total_data_types') int? totalDataTypes,
    @JsonKey(name: 'total_records') int? totalRecords,
    @JsonKey(name: 'data_structures_found') List<String>? dataStructuresFound,
    @JsonKey(name: 'date_range') DateRange? dateRange,
  });

  @override
  $DateRangeCopyWith<$Res>? get dateRange;
}

/// @nodoc
class __$$DataSummaryImplCopyWithImpl<$Res>
    extends _$DataSummaryCopyWithImpl<$Res, _$DataSummaryImpl>
    implements _$$DataSummaryImplCopyWith<$Res> {
  __$$DataSummaryImplCopyWithImpl(
    _$DataSummaryImpl _value,
    $Res Function(_$DataSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DataSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDataTypes = freezed,
    Object? totalRecords = freezed,
    Object? dataStructuresFound = freezed,
    Object? dateRange = freezed,
  }) {
    return _then(
      _$DataSummaryImpl(
        totalDataTypes: freezed == totalDataTypes
            ? _value.totalDataTypes
            : totalDataTypes // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalRecords: freezed == totalRecords
            ? _value.totalRecords
            : totalRecords // ignore: cast_nullable_to_non_nullable
                  as int?,
        dataStructuresFound: freezed == dataStructuresFound
            ? _value._dataStructuresFound
            : dataStructuresFound // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        dateRange: freezed == dateRange
            ? _value.dateRange
            : dateRange // ignore: cast_nullable_to_non_nullable
                  as DateRange?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DataSummaryImpl implements _DataSummary {
  const _$DataSummaryImpl({
    @JsonKey(name: 'total_data_types') this.totalDataTypes,
    @JsonKey(name: 'total_records') this.totalRecords,
    @JsonKey(name: 'data_structures_found')
    final List<String>? dataStructuresFound,
    @JsonKey(name: 'date_range') this.dateRange,
  }) : _dataStructuresFound = dataStructuresFound;

  factory _$DataSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataSummaryImplFromJson(json);

  @override
  @JsonKey(name: 'total_data_types')
  final int? totalDataTypes;
  @override
  @JsonKey(name: 'total_records')
  final int? totalRecords;
  final List<String>? _dataStructuresFound;
  @override
  @JsonKey(name: 'data_structures_found')
  List<String>? get dataStructuresFound {
    final value = _dataStructuresFound;
    if (value == null) return null;
    if (_dataStructuresFound is EqualUnmodifiableListView)
      return _dataStructuresFound;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'date_range')
  final DateRange? dateRange;

  @override
  String toString() {
    return 'DataSummary(totalDataTypes: $totalDataTypes, totalRecords: $totalRecords, dataStructuresFound: $dataStructuresFound, dateRange: $dateRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSummaryImpl &&
            (identical(other.totalDataTypes, totalDataTypes) ||
                other.totalDataTypes == totalDataTypes) &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords) &&
            const DeepCollectionEquality().equals(
              other._dataStructuresFound,
              _dataStructuresFound,
            ) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalDataTypes,
    totalRecords,
    const DeepCollectionEquality().hash(_dataStructuresFound),
    dateRange,
  );

  /// Create a copy of DataSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSummaryImplCopyWith<_$DataSummaryImpl> get copyWith =>
      __$$DataSummaryImplCopyWithImpl<_$DataSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataSummaryImplToJson(this);
  }
}

abstract class _DataSummary implements DataSummary {
  const factory _DataSummary({
    @JsonKey(name: 'total_data_types') final int? totalDataTypes,
    @JsonKey(name: 'total_records') final int? totalRecords,
    @JsonKey(name: 'data_structures_found')
    final List<String>? dataStructuresFound,
    @JsonKey(name: 'date_range') final DateRange? dateRange,
  }) = _$DataSummaryImpl;

  factory _DataSummary.fromJson(Map<String, dynamic> json) =
      _$DataSummaryImpl.fromJson;

  @override
  @JsonKey(name: 'total_data_types')
  int? get totalDataTypes;
  @override
  @JsonKey(name: 'total_records')
  int? get totalRecords;
  @override
  @JsonKey(name: 'data_structures_found')
  List<String>? get dataStructuresFound;
  @override
  @JsonKey(name: 'date_range')
  DateRange? get dateRange;

  /// Create a copy of DataSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataSummaryImplCopyWith<_$DataSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DateRange _$DateRangeFromJson(Map<String, dynamic> json) {
  return _DateRange.fromJson(json);
}

/// @nodoc
mixin _$DateRange {
  int? get earliest => throw _privateConstructorUsedError;
  int? get latest => throw _privateConstructorUsedError;

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
  $Res call({int? earliest, int? latest});
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
  $Res call({Object? earliest = freezed, Object? latest = freezed}) {
    return _then(
      _value.copyWith(
            earliest: freezed == earliest
                ? _value.earliest
                : earliest // ignore: cast_nullable_to_non_nullable
                      as int?,
            latest: freezed == latest
                ? _value.latest
                : latest // ignore: cast_nullable_to_non_nullable
                      as int?,
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
  $Res call({int? earliest, int? latest});
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
  $Res call({Object? earliest = freezed, Object? latest = freezed}) {
    return _then(
      _$DateRangeImpl(
        earliest: freezed == earliest
            ? _value.earliest
            : earliest // ignore: cast_nullable_to_non_nullable
                  as int?,
        latest: freezed == latest
            ? _value.latest
            : latest // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DateRangeImpl implements _DateRange {
  const _$DateRangeImpl({this.earliest, this.latest});

  factory _$DateRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateRangeImplFromJson(json);

  @override
  final int? earliest;
  @override
  final int? latest;

  @override
  String toString() {
    return 'DateRange(earliest: $earliest, latest: $latest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateRangeImpl &&
            (identical(other.earliest, earliest) ||
                other.earliest == earliest) &&
            (identical(other.latest, latest) || other.latest == latest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, earliest, latest);

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
  const factory _DateRange({final int? earliest, final int? latest}) =
      _$DateRangeImpl;

  factory _DateRange.fromJson(Map<String, dynamic> json) =
      _$DateRangeImpl.fromJson;

  @override
  int? get earliest;
  @override
  int? get latest;

  /// Create a copy of DateRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateRangeImplCopyWith<_$DateRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailableDataTypesData _$AvailableDataTypesDataFromJson(
  Map<String, dynamic> json,
) {
  return _AvailableDataTypesData.fromJson(json);
}

/// @nodoc
mixin _$AvailableDataTypesData {
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_data_types')
  List<String>? get availableDataTypes => throw _privateConstructorUsedError;
  DataSummary? get summary => throw _privateConstructorUsedError;

  /// Serializes this AvailableDataTypesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailableDataTypesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailableDataTypesDataCopyWith<AvailableDataTypesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableDataTypesDataCopyWith<$Res> {
  factory $AvailableDataTypesDataCopyWith(
    AvailableDataTypesData value,
    $Res Function(AvailableDataTypesData) then,
  ) = _$AvailableDataTypesDataCopyWithImpl<$Res, AvailableDataTypesData>;
  @useResult
  $Res call({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'available_data_types') List<String>? availableDataTypes,
    DataSummary? summary,
  });

  $DataSummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class _$AvailableDataTypesDataCopyWithImpl<
  $Res,
  $Val extends AvailableDataTypesData
>
    implements $AvailableDataTypesDataCopyWith<$Res> {
  _$AvailableDataTypesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailableDataTypesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? availableDataTypes = freezed,
    Object? summary = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            availableDataTypes: freezed == availableDataTypes
                ? _value.availableDataTypes
                : availableDataTypes // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            summary: freezed == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as DataSummary?,
          )
          as $Val,
    );
  }

  /// Create a copy of AvailableDataTypesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataSummaryCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $DataSummaryCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AvailableDataTypesDataImplCopyWith<$Res>
    implements $AvailableDataTypesDataCopyWith<$Res> {
  factory _$$AvailableDataTypesDataImplCopyWith(
    _$AvailableDataTypesDataImpl value,
    $Res Function(_$AvailableDataTypesDataImpl) then,
  ) = __$$AvailableDataTypesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'available_data_types') List<String>? availableDataTypes,
    DataSummary? summary,
  });

  @override
  $DataSummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class __$$AvailableDataTypesDataImplCopyWithImpl<$Res>
    extends
        _$AvailableDataTypesDataCopyWithImpl<$Res, _$AvailableDataTypesDataImpl>
    implements _$$AvailableDataTypesDataImplCopyWith<$Res> {
  __$$AvailableDataTypesDataImplCopyWithImpl(
    _$AvailableDataTypesDataImpl _value,
    $Res Function(_$AvailableDataTypesDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvailableDataTypesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? availableDataTypes = freezed,
    Object? summary = freezed,
  }) {
    return _then(
      _$AvailableDataTypesDataImpl(
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        availableDataTypes: freezed == availableDataTypes
            ? _value._availableDataTypes
            : availableDataTypes // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        summary: freezed == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as DataSummary?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableDataTypesDataImpl implements _AvailableDataTypesData {
  const _$AvailableDataTypesDataImpl({
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(name: 'available_data_types')
    final List<String>? availableDataTypes,
    this.summary,
  }) : _availableDataTypes = availableDataTypes;

  factory _$AvailableDataTypesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableDataTypesDataImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  final List<String>? _availableDataTypes;
  @override
  @JsonKey(name: 'available_data_types')
  List<String>? get availableDataTypes {
    final value = _availableDataTypes;
    if (value == null) return null;
    if (_availableDataTypes is EqualUnmodifiableListView)
      return _availableDataTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DataSummary? summary;

  @override
  String toString() {
    return 'AvailableDataTypesData(userId: $userId, availableDataTypes: $availableDataTypes, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableDataTypesDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(
              other._availableDataTypes,
              _availableDataTypes,
            ) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    const DeepCollectionEquality().hash(_availableDataTypes),
    summary,
  );

  /// Create a copy of AvailableDataTypesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableDataTypesDataImplCopyWith<_$AvailableDataTypesDataImpl>
  get copyWith =>
      __$$AvailableDataTypesDataImplCopyWithImpl<_$AvailableDataTypesDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableDataTypesDataImplToJson(this);
  }
}

abstract class _AvailableDataTypesData implements AvailableDataTypesData {
  const factory _AvailableDataTypesData({
    @JsonKey(name: 'user_id') final String? userId,
    @JsonKey(name: 'available_data_types')
    final List<String>? availableDataTypes,
    final DataSummary? summary,
  }) = _$AvailableDataTypesDataImpl;

  factory _AvailableDataTypesData.fromJson(Map<String, dynamic> json) =
      _$AvailableDataTypesDataImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'available_data_types')
  List<String>? get availableDataTypes;
  @override
  DataSummary? get summary;

  /// Create a copy of AvailableDataTypesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailableDataTypesDataImplCopyWith<_$AvailableDataTypesDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}

AvailableDataTypesResponse _$AvailableDataTypesResponseFromJson(
  Map<String, dynamic> json,
) {
  return _AvailableDataTypesResponse.fromJson(json);
}

/// @nodoc
mixin _$AvailableDataTypesResponse {
  bool? get success => throw _privateConstructorUsedError;
  AvailableDataTypesData? get data => throw _privateConstructorUsedError;

  /// Serializes this AvailableDataTypesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailableDataTypesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailableDataTypesResponseCopyWith<AvailableDataTypesResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableDataTypesResponseCopyWith<$Res> {
  factory $AvailableDataTypesResponseCopyWith(
    AvailableDataTypesResponse value,
    $Res Function(AvailableDataTypesResponse) then,
  ) =
      _$AvailableDataTypesResponseCopyWithImpl<
        $Res,
        AvailableDataTypesResponse
      >;
  @useResult
  $Res call({bool? success, AvailableDataTypesData? data});

  $AvailableDataTypesDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AvailableDataTypesResponseCopyWithImpl<
  $Res,
  $Val extends AvailableDataTypesResponse
>
    implements $AvailableDataTypesResponseCopyWith<$Res> {
  _$AvailableDataTypesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailableDataTypesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = freezed, Object? data = freezed}) {
    return _then(
      _value.copyWith(
            success: freezed == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool?,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as AvailableDataTypesData?,
          )
          as $Val,
    );
  }

  /// Create a copy of AvailableDataTypesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AvailableDataTypesDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AvailableDataTypesDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AvailableDataTypesResponseImplCopyWith<$Res>
    implements $AvailableDataTypesResponseCopyWith<$Res> {
  factory _$$AvailableDataTypesResponseImplCopyWith(
    _$AvailableDataTypesResponseImpl value,
    $Res Function(_$AvailableDataTypesResponseImpl) then,
  ) = __$$AvailableDataTypesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, AvailableDataTypesData? data});

  @override
  $AvailableDataTypesDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AvailableDataTypesResponseImplCopyWithImpl<$Res>
    extends
        _$AvailableDataTypesResponseCopyWithImpl<
          $Res,
          _$AvailableDataTypesResponseImpl
        >
    implements _$$AvailableDataTypesResponseImplCopyWith<$Res> {
  __$$AvailableDataTypesResponseImplCopyWithImpl(
    _$AvailableDataTypesResponseImpl _value,
    $Res Function(_$AvailableDataTypesResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvailableDataTypesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = freezed, Object? data = freezed}) {
    return _then(
      _$AvailableDataTypesResponseImpl(
        success: freezed == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool?,
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as AvailableDataTypesData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableDataTypesResponseImpl implements _AvailableDataTypesResponse {
  const _$AvailableDataTypesResponseImpl({this.success, this.data});

  factory _$AvailableDataTypesResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$AvailableDataTypesResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final AvailableDataTypesData? data;

  @override
  String toString() {
    return 'AvailableDataTypesResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableDataTypesResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of AvailableDataTypesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableDataTypesResponseImplCopyWith<_$AvailableDataTypesResponseImpl>
  get copyWith =>
      __$$AvailableDataTypesResponseImplCopyWithImpl<
        _$AvailableDataTypesResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableDataTypesResponseImplToJson(this);
  }
}

abstract class _AvailableDataTypesResponse
    implements AvailableDataTypesResponse {
  const factory _AvailableDataTypesResponse({
    final bool? success,
    final AvailableDataTypesData? data,
  }) = _$AvailableDataTypesResponseImpl;

  factory _AvailableDataTypesResponse.fromJson(Map<String, dynamic> json) =
      _$AvailableDataTypesResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  AvailableDataTypesData? get data;

  /// Create a copy of AvailableDataTypesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailableDataTypesResponseImplCopyWith<_$AvailableDataTypesResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
