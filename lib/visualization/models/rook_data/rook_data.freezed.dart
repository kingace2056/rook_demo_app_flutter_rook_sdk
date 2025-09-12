// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rook_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RookData _$RookDataFromJson(Map<String, dynamic> json) {
  return _RookData.fromJson(json);
}

/// @nodoc
mixin _$RookData {
  bool? get success => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  /// Serializes this RookData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RookData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RookDataCopyWith<RookData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RookDataCopyWith<$Res> {
  factory $RookDataCopyWith(RookData value, $Res Function(RookData) then) =
      _$RookDataCopyWithImpl<$Res, RookData>;
  @useResult
  $Res call({bool? success, List<Datum>? data, Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$RookDataCopyWithImpl<$Res, $Val extends RookData>
    implements $RookDataCopyWith<$Res> {
  _$RookDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RookData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: freezed == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool?,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<Datum>?,
            meta: freezed == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                      as Meta?,
          )
          as $Val,
    );
  }

  /// Create a copy of RookData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RookDataImplCopyWith<$Res>
    implements $RookDataCopyWith<$Res> {
  factory _$$RookDataImplCopyWith(
    _$RookDataImpl value,
    $Res Function(_$RookDataImpl) then,
  ) = __$$RookDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, List<Datum>? data, Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$RookDataImplCopyWithImpl<$Res>
    extends _$RookDataCopyWithImpl<$Res, _$RookDataImpl>
    implements _$$RookDataImplCopyWith<$Res> {
  __$$RookDataImplCopyWithImpl(
    _$RookDataImpl _value,
    $Res Function(_$RookDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RookData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(
      _$RookDataImpl(
        success: freezed == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool?,
        data: freezed == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<Datum>?,
        meta: freezed == meta
            ? _value.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as Meta?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RookDataImpl implements _RookData {
  _$RookDataImpl({this.success, final List<Datum>? data, this.meta})
    : _data = data;

  factory _$RookDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RookDataImplFromJson(json);

  @override
  final bool? success;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Meta? meta;

  @override
  String toString() {
    return 'RookData(success: $success, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RookDataImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    const DeepCollectionEquality().hash(_data),
    meta,
  );

  /// Create a copy of RookData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RookDataImplCopyWith<_$RookDataImpl> get copyWith =>
      __$$RookDataImplCopyWithImpl<_$RookDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RookDataImplToJson(this);
  }
}

abstract class _RookData implements RookData {
  factory _RookData({
    final bool? success,
    final List<Datum>? data,
    final Meta? meta,
  }) = _$RookDataImpl;

  factory _RookData.fromJson(Map<String, dynamic> json) =
      _$RookDataImpl.fromJson;

  @override
  bool? get success;
  @override
  List<Datum>? get data;
  @override
  Meta? get meta;

  /// Create a copy of RookData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RookDataImplCopyWith<_$RookDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
