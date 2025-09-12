// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  @JsonKey(name: 'datetime_string')
  DateTime? get datetimeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id_string')
  String? get userIdString => throw _privateConstructorUsedError;
  @JsonKey(name: 'sources_of_data_array')
  List<String>? get sourcesOfDataArray => throw _privateConstructorUsedError;
  @JsonKey(name: 'was_the_user_under_physical_activity_bool')
  bool? get wasTheUserUnderPhysicalActivityBool =>
      throw _privateConstructorUsedError;

  /// Serializes this Metadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataCopyWith<Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
  @useResult
  $Res call({
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'user_id_string') String? userIdString,
    @JsonKey(name: 'sources_of_data_array') List<String>? sourcesOfDataArray,
    @JsonKey(name: 'was_the_user_under_physical_activity_bool')
    bool? wasTheUserUnderPhysicalActivityBool,
  });
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetimeString = freezed,
    Object? userIdString = freezed,
    Object? sourcesOfDataArray = freezed,
    Object? wasTheUserUnderPhysicalActivityBool = freezed,
  }) {
    return _then(
      _value.copyWith(
            datetimeString: freezed == datetimeString
                ? _value.datetimeString
                : datetimeString // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            userIdString: freezed == userIdString
                ? _value.userIdString
                : userIdString // ignore: cast_nullable_to_non_nullable
                      as String?,
            sourcesOfDataArray: freezed == sourcesOfDataArray
                ? _value.sourcesOfDataArray
                : sourcesOfDataArray // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            wasTheUserUnderPhysicalActivityBool:
                freezed == wasTheUserUnderPhysicalActivityBool
                ? _value.wasTheUserUnderPhysicalActivityBool
                : wasTheUserUnderPhysicalActivityBool // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MetadataImplCopyWith<$Res>
    implements $MetadataCopyWith<$Res> {
  factory _$$MetadataImplCopyWith(
    _$MetadataImpl value,
    $Res Function(_$MetadataImpl) then,
  ) = __$$MetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'user_id_string') String? userIdString,
    @JsonKey(name: 'sources_of_data_array') List<String>? sourcesOfDataArray,
    @JsonKey(name: 'was_the_user_under_physical_activity_bool')
    bool? wasTheUserUnderPhysicalActivityBool,
  });
}

/// @nodoc
class __$$MetadataImplCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$MetadataImpl>
    implements _$$MetadataImplCopyWith<$Res> {
  __$$MetadataImplCopyWithImpl(
    _$MetadataImpl _value,
    $Res Function(_$MetadataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetimeString = freezed,
    Object? userIdString = freezed,
    Object? sourcesOfDataArray = freezed,
    Object? wasTheUserUnderPhysicalActivityBool = freezed,
  }) {
    return _then(
      _$MetadataImpl(
        datetimeString: freezed == datetimeString
            ? _value.datetimeString
            : datetimeString // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        userIdString: freezed == userIdString
            ? _value.userIdString
            : userIdString // ignore: cast_nullable_to_non_nullable
                  as String?,
        sourcesOfDataArray: freezed == sourcesOfDataArray
            ? _value._sourcesOfDataArray
            : sourcesOfDataArray // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        wasTheUserUnderPhysicalActivityBool:
            freezed == wasTheUserUnderPhysicalActivityBool
            ? _value.wasTheUserUnderPhysicalActivityBool
            : wasTheUserUnderPhysicalActivityBool // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataImpl implements _Metadata {
  _$MetadataImpl({
    @JsonKey(name: 'datetime_string') this.datetimeString,
    @JsonKey(name: 'user_id_string') this.userIdString,
    @JsonKey(name: 'sources_of_data_array')
    final List<String>? sourcesOfDataArray,
    @JsonKey(name: 'was_the_user_under_physical_activity_bool')
    this.wasTheUserUnderPhysicalActivityBool,
  }) : _sourcesOfDataArray = sourcesOfDataArray;

  factory _$MetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataImplFromJson(json);

  @override
  @JsonKey(name: 'datetime_string')
  final DateTime? datetimeString;
  @override
  @JsonKey(name: 'user_id_string')
  final String? userIdString;
  final List<String>? _sourcesOfDataArray;
  @override
  @JsonKey(name: 'sources_of_data_array')
  List<String>? get sourcesOfDataArray {
    final value = _sourcesOfDataArray;
    if (value == null) return null;
    if (_sourcesOfDataArray is EqualUnmodifiableListView)
      return _sourcesOfDataArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'was_the_user_under_physical_activity_bool')
  final bool? wasTheUserUnderPhysicalActivityBool;

  @override
  String toString() {
    return 'Metadata(datetimeString: $datetimeString, userIdString: $userIdString, sourcesOfDataArray: $sourcesOfDataArray, wasTheUserUnderPhysicalActivityBool: $wasTheUserUnderPhysicalActivityBool)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataImpl &&
            (identical(other.datetimeString, datetimeString) ||
                other.datetimeString == datetimeString) &&
            (identical(other.userIdString, userIdString) ||
                other.userIdString == userIdString) &&
            const DeepCollectionEquality().equals(
              other._sourcesOfDataArray,
              _sourcesOfDataArray,
            ) &&
            (identical(
                  other.wasTheUserUnderPhysicalActivityBool,
                  wasTheUserUnderPhysicalActivityBool,
                ) ||
                other.wasTheUserUnderPhysicalActivityBool ==
                    wasTheUserUnderPhysicalActivityBool));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    datetimeString,
    userIdString,
    const DeepCollectionEquality().hash(_sourcesOfDataArray),
    wasTheUserUnderPhysicalActivityBool,
  );

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      __$$MetadataImplCopyWithImpl<_$MetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataImplToJson(this);
  }
}

abstract class _Metadata implements Metadata {
  factory _Metadata({
    @JsonKey(name: 'datetime_string') final DateTime? datetimeString,
    @JsonKey(name: 'user_id_string') final String? userIdString,
    @JsonKey(name: 'sources_of_data_array')
    final List<String>? sourcesOfDataArray,
    @JsonKey(name: 'was_the_user_under_physical_activity_bool')
    final bool? wasTheUserUnderPhysicalActivityBool,
  }) = _$MetadataImpl;

  factory _Metadata.fromJson(Map<String, dynamic> json) =
      _$MetadataImpl.fromJson;

  @override
  @JsonKey(name: 'datetime_string')
  DateTime? get datetimeString;
  @override
  @JsonKey(name: 'user_id_string')
  String? get userIdString;
  @override
  @JsonKey(name: 'sources_of_data_array')
  List<String>? get sourcesOfDataArray;
  @override
  @JsonKey(name: 'was_the_user_under_physical_activity_bool')
  bool? get wasTheUserUnderPhysicalActivityBool;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
