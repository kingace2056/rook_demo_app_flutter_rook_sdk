// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'whdata_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WhdataModel _$WhdataModelFromJson(Map<String, dynamic> json) {
  return _WhdataModel.fromJson(json);
}

/// @nodoc
mixin _$WhdataModel {
  bool? get success => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  /// Serializes this WhdataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WhdataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WhdataModelCopyWith<WhdataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhdataModelCopyWith<$Res> {
  factory $WhdataModelCopyWith(
    WhdataModel value,
    $Res Function(WhdataModel) then,
  ) = _$WhdataModelCopyWithImpl<$Res, WhdataModel>;
  @useResult
  $Res call({bool? success, Data? data, Pagination? pagination});

  $DataCopyWith<$Res>? get data;
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$WhdataModelCopyWithImpl<$Res, $Val extends WhdataModel>
    implements $WhdataModelCopyWith<$Res> {
  _$WhdataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WhdataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? pagination = freezed,
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
                      as Data?,
            pagination: freezed == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                      as Pagination?,
          )
          as $Val,
    );
  }

  /// Create a copy of WhdataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  /// Create a copy of WhdataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WhdataModelImplCopyWith<$Res>
    implements $WhdataModelCopyWith<$Res> {
  factory _$$WhdataModelImplCopyWith(
    _$WhdataModelImpl value,
    $Res Function(_$WhdataModelImpl) then,
  ) = __$$WhdataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, Data? data, Pagination? pagination});

  @override
  $DataCopyWith<$Res>? get data;
  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$WhdataModelImplCopyWithImpl<$Res>
    extends _$WhdataModelCopyWithImpl<$Res, _$WhdataModelImpl>
    implements _$$WhdataModelImplCopyWith<$Res> {
  __$$WhdataModelImplCopyWithImpl(
    _$WhdataModelImpl _value,
    $Res Function(_$WhdataModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WhdataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(
      _$WhdataModelImpl(
        success: freezed == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool?,
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Data?,
        pagination: freezed == pagination
            ? _value.pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as Pagination?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WhdataModelImpl implements _WhdataModel {
  _$WhdataModelImpl({this.success, this.data, this.pagination});

  factory _$WhdataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WhdataModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final Data? data;
  @override
  final Pagination? pagination;

  @override
  String toString() {
    return 'WhdataModel(success: $success, data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhdataModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, pagination);

  /// Create a copy of WhdataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WhdataModelImplCopyWith<_$WhdataModelImpl> get copyWith =>
      __$$WhdataModelImplCopyWithImpl<_$WhdataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WhdataModelImplToJson(this);
  }
}

abstract class _WhdataModel implements WhdataModel {
  factory _WhdataModel({
    final bool? success,
    final Data? data,
    final Pagination? pagination,
  }) = _$WhdataModelImpl;

  factory _WhdataModel.fromJson(Map<String, dynamic> json) =
      _$WhdataModelImpl.fromJson;

  @override
  bool? get success;
  @override
  Data? get data;
  @override
  Pagination? get pagination;

  /// Create a copy of WhdataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WhdataModelImplCopyWith<_$WhdataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
