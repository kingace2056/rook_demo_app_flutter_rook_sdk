// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Filters _$FiltersFromJson(Map<String, dynamic> json) {
  return _Filters.fromJson(json);
}

/// @nodoc
mixin _$Filters {
  @JsonKey(name: 'client_uuid')
  String? get clientUuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_structure')
  String? get dataStructure => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_range')
  DateRange? get dateRange => throw _privateConstructorUsedError;

  /// Serializes this Filters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Filters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FiltersCopyWith<Filters> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltersCopyWith<$Res> {
  factory $FiltersCopyWith(Filters value, $Res Function(Filters) then) =
      _$FiltersCopyWithImpl<$Res, Filters>;
  @useResult
  $Res call({
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'date_range') DateRange? dateRange,
  });

  $DateRangeCopyWith<$Res>? get dateRange;
}

/// @nodoc
class _$FiltersCopyWithImpl<$Res, $Val extends Filters>
    implements $FiltersCopyWith<$Res> {
  _$FiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Filters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientUuid = freezed,
    Object? dataStructure = freezed,
    Object? dateRange = freezed,
  }) {
    return _then(
      _value.copyWith(
            clientUuid: freezed == clientUuid
                ? _value.clientUuid
                : clientUuid // ignore: cast_nullable_to_non_nullable
                      as String?,
            dataStructure: freezed == dataStructure
                ? _value.dataStructure
                : dataStructure // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateRange: freezed == dateRange
                ? _value.dateRange
                : dateRange // ignore: cast_nullable_to_non_nullable
                      as DateRange?,
          )
          as $Val,
    );
  }

  /// Create a copy of Filters
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
abstract class _$$FiltersImplCopyWith<$Res> implements $FiltersCopyWith<$Res> {
  factory _$$FiltersImplCopyWith(
    _$FiltersImpl value,
    $Res Function(_$FiltersImpl) then,
  ) = __$$FiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'date_range') DateRange? dateRange,
  });

  @override
  $DateRangeCopyWith<$Res>? get dateRange;
}

/// @nodoc
class __$$FiltersImplCopyWithImpl<$Res>
    extends _$FiltersCopyWithImpl<$Res, _$FiltersImpl>
    implements _$$FiltersImplCopyWith<$Res> {
  __$$FiltersImplCopyWithImpl(
    _$FiltersImpl _value,
    $Res Function(_$FiltersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Filters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientUuid = freezed,
    Object? dataStructure = freezed,
    Object? dateRange = freezed,
  }) {
    return _then(
      _$FiltersImpl(
        clientUuid: freezed == clientUuid
            ? _value.clientUuid
            : clientUuid // ignore: cast_nullable_to_non_nullable
                  as String?,
        dataStructure: freezed == dataStructure
            ? _value.dataStructure
            : dataStructure // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$FiltersImpl implements _Filters {
  _$FiltersImpl({
    @JsonKey(name: 'client_uuid') this.clientUuid,
    @JsonKey(name: 'data_structure') this.dataStructure,
    @JsonKey(name: 'date_range') this.dateRange,
  });

  factory _$FiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$FiltersImplFromJson(json);

  @override
  @JsonKey(name: 'client_uuid')
  final String? clientUuid;
  @override
  @JsonKey(name: 'data_structure')
  final String? dataStructure;
  @override
  @JsonKey(name: 'date_range')
  final DateRange? dateRange;

  @override
  String toString() {
    return 'Filters(clientUuid: $clientUuid, dataStructure: $dataStructure, dateRange: $dateRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FiltersImpl &&
            (identical(other.clientUuid, clientUuid) ||
                other.clientUuid == clientUuid) &&
            (identical(other.dataStructure, dataStructure) ||
                other.dataStructure == dataStructure) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clientUuid, dataStructure, dateRange);

  /// Create a copy of Filters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FiltersImplCopyWith<_$FiltersImpl> get copyWith =>
      __$$FiltersImplCopyWithImpl<_$FiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FiltersImplToJson(this);
  }
}

abstract class _Filters implements Filters {
  factory _Filters({
    @JsonKey(name: 'client_uuid') final String? clientUuid,
    @JsonKey(name: 'data_structure') final String? dataStructure,
    @JsonKey(name: 'date_range') final DateRange? dateRange,
  }) = _$FiltersImpl;

  factory _Filters.fromJson(Map<String, dynamic> json) = _$FiltersImpl.fromJson;

  @override
  @JsonKey(name: 'client_uuid')
  String? get clientUuid;
  @override
  @JsonKey(name: 'data_structure')
  String? get dataStructure;
  @override
  @JsonKey(name: 'date_range')
  DateRange? get dateRange;

  /// Create a copy of Filters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FiltersImplCopyWith<_$FiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
