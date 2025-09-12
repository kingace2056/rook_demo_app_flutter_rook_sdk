// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'physical_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PhysicalSummary _$PhysicalSummaryFromJson(Map<String, dynamic> json) {
  return _PhysicalSummary.fromJson(json);
}

/// @nodoc
mixin _$PhysicalSummary {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'activity')
  Activity? get activity => throw _privateConstructorUsedError;
  @JsonKey(name: 'calories')
  Calories? get calories => throw _privateConstructorUsedError; // make similar  for calories, distance, heart_rate oxygenation, stress, metadata, non_structured_data_array
  @JsonKey(name: 'distance')
  Distance? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'heart_rate')
  HeartRate? get heartRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'oxygenation')
  Oxygenation? get oxygenation => throw _privateConstructorUsedError;
  @JsonKey(name: 'stress')
  Stress? get stress => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadata')
  Metadata? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;

  /// Serializes this PhysicalSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhysicalSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhysicalSummaryCopyWith<PhysicalSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalSummaryCopyWith<$Res> {
  factory $PhysicalSummaryCopyWith(
    PhysicalSummary value,
    $Res Function(PhysicalSummary) then,
  ) = _$PhysicalSummaryCopyWithImpl<$Res, PhysicalSummary>;
  @useResult
  $Res call({
    @JsonKey(name: '_id') String? id,
    int? version,
    @JsonKey(name: 'activity') Activity? activity,
    @JsonKey(name: 'calories') Calories? calories,
    @JsonKey(name: 'distance') Distance? distance,
    @JsonKey(name: 'heart_rate') HeartRate? heartRate,
    @JsonKey(name: 'oxygenation') Oxygenation? oxygenation,
    @JsonKey(name: 'stress') Stress? stress,
    @JsonKey(name: 'metadata') Metadata? metadata,
    @JsonKey(name: '__v') int? v,
  });

  $ActivityCopyWith<$Res>? get activity;
  $CaloriesCopyWith<$Res>? get calories;
  $DistanceCopyWith<$Res>? get distance;
  $HeartRateCopyWith<$Res>? get heartRate;
  $OxygenationCopyWith<$Res>? get oxygenation;
  $StressCopyWith<$Res>? get stress;
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$PhysicalSummaryCopyWithImpl<$Res, $Val extends PhysicalSummary>
    implements $PhysicalSummaryCopyWith<$Res> {
  _$PhysicalSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhysicalSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? activity = freezed,
    Object? calories = freezed,
    Object? distance = freezed,
    Object? heartRate = freezed,
    Object? oxygenation = freezed,
    Object? stress = freezed,
    Object? metadata = freezed,
    Object? v = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            version: freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as int?,
            activity: freezed == activity
                ? _value.activity
                : activity // ignore: cast_nullable_to_non_nullable
                      as Activity?,
            calories: freezed == calories
                ? _value.calories
                : calories // ignore: cast_nullable_to_non_nullable
                      as Calories?,
            distance: freezed == distance
                ? _value.distance
                : distance // ignore: cast_nullable_to_non_nullable
                      as Distance?,
            heartRate: freezed == heartRate
                ? _value.heartRate
                : heartRate // ignore: cast_nullable_to_non_nullable
                      as HeartRate?,
            oxygenation: freezed == oxygenation
                ? _value.oxygenation
                : oxygenation // ignore: cast_nullable_to_non_nullable
                      as Oxygenation?,
            stress: freezed == stress
                ? _value.stress
                : stress // ignore: cast_nullable_to_non_nullable
                      as Stress?,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Metadata?,
            v: freezed == v
                ? _value.v
                : v // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }

  /// Create a copy of PhysicalSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<$Res>? get activity {
    if (_value.activity == null) {
      return null;
    }

    return $ActivityCopyWith<$Res>(_value.activity!, (value) {
      return _then(_value.copyWith(activity: value) as $Val);
    });
  }

  /// Create a copy of PhysicalSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CaloriesCopyWith<$Res>? get calories {
    if (_value.calories == null) {
      return null;
    }

    return $CaloriesCopyWith<$Res>(_value.calories!, (value) {
      return _then(_value.copyWith(calories: value) as $Val);
    });
  }

  /// Create a copy of PhysicalSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistanceCopyWith<$Res>? get distance {
    if (_value.distance == null) {
      return null;
    }

    return $DistanceCopyWith<$Res>(_value.distance!, (value) {
      return _then(_value.copyWith(distance: value) as $Val);
    });
  }

  /// Create a copy of PhysicalSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeartRateCopyWith<$Res>? get heartRate {
    if (_value.heartRate == null) {
      return null;
    }

    return $HeartRateCopyWith<$Res>(_value.heartRate!, (value) {
      return _then(_value.copyWith(heartRate: value) as $Val);
    });
  }

  /// Create a copy of PhysicalSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OxygenationCopyWith<$Res>? get oxygenation {
    if (_value.oxygenation == null) {
      return null;
    }

    return $OxygenationCopyWith<$Res>(_value.oxygenation!, (value) {
      return _then(_value.copyWith(oxygenation: value) as $Val);
    });
  }

  /// Create a copy of PhysicalSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StressCopyWith<$Res>? get stress {
    if (_value.stress == null) {
      return null;
    }

    return $StressCopyWith<$Res>(_value.stress!, (value) {
      return _then(_value.copyWith(stress: value) as $Val);
    });
  }

  /// Create a copy of PhysicalSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhysicalSummaryImplCopyWith<$Res>
    implements $PhysicalSummaryCopyWith<$Res> {
  factory _$$PhysicalSummaryImplCopyWith(
    _$PhysicalSummaryImpl value,
    $Res Function(_$PhysicalSummaryImpl) then,
  ) = __$$PhysicalSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: '_id') String? id,
    int? version,
    @JsonKey(name: 'activity') Activity? activity,
    @JsonKey(name: 'calories') Calories? calories,
    @JsonKey(name: 'distance') Distance? distance,
    @JsonKey(name: 'heart_rate') HeartRate? heartRate,
    @JsonKey(name: 'oxygenation') Oxygenation? oxygenation,
    @JsonKey(name: 'stress') Stress? stress,
    @JsonKey(name: 'metadata') Metadata? metadata,
    @JsonKey(name: '__v') int? v,
  });

  @override
  $ActivityCopyWith<$Res>? get activity;
  @override
  $CaloriesCopyWith<$Res>? get calories;
  @override
  $DistanceCopyWith<$Res>? get distance;
  @override
  $HeartRateCopyWith<$Res>? get heartRate;
  @override
  $OxygenationCopyWith<$Res>? get oxygenation;
  @override
  $StressCopyWith<$Res>? get stress;
  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$PhysicalSummaryImplCopyWithImpl<$Res>
    extends _$PhysicalSummaryCopyWithImpl<$Res, _$PhysicalSummaryImpl>
    implements _$$PhysicalSummaryImplCopyWith<$Res> {
  __$$PhysicalSummaryImplCopyWithImpl(
    _$PhysicalSummaryImpl _value,
    $Res Function(_$PhysicalSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PhysicalSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? activity = freezed,
    Object? calories = freezed,
    Object? distance = freezed,
    Object? heartRate = freezed,
    Object? oxygenation = freezed,
    Object? stress = freezed,
    Object? metadata = freezed,
    Object? v = freezed,
  }) {
    return _then(
      _$PhysicalSummaryImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        version: freezed == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as int?,
        activity: freezed == activity
            ? _value.activity
            : activity // ignore: cast_nullable_to_non_nullable
                  as Activity?,
        calories: freezed == calories
            ? _value.calories
            : calories // ignore: cast_nullable_to_non_nullable
                  as Calories?,
        distance: freezed == distance
            ? _value.distance
            : distance // ignore: cast_nullable_to_non_nullable
                  as Distance?,
        heartRate: freezed == heartRate
            ? _value.heartRate
            : heartRate // ignore: cast_nullable_to_non_nullable
                  as HeartRate?,
        oxygenation: freezed == oxygenation
            ? _value.oxygenation
            : oxygenation // ignore: cast_nullable_to_non_nullable
                  as Oxygenation?,
        stress: freezed == stress
            ? _value.stress
            : stress // ignore: cast_nullable_to_non_nullable
                  as Stress?,
        metadata: freezed == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Metadata?,
        v: freezed == v
            ? _value.v
            : v // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PhysicalSummaryImpl implements _PhysicalSummary {
  _$PhysicalSummaryImpl({
    @JsonKey(name: '_id') this.id,
    this.version,
    @JsonKey(name: 'activity') this.activity,
    @JsonKey(name: 'calories') this.calories,
    @JsonKey(name: 'distance') this.distance,
    @JsonKey(name: 'heart_rate') this.heartRate,
    @JsonKey(name: 'oxygenation') this.oxygenation,
    @JsonKey(name: 'stress') this.stress,
    @JsonKey(name: 'metadata') this.metadata,
    @JsonKey(name: '__v') this.v,
  });

  factory _$PhysicalSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhysicalSummaryImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final int? version;
  @override
  @JsonKey(name: 'activity')
  final Activity? activity;
  @override
  @JsonKey(name: 'calories')
  final Calories? calories;
  // make similar  for calories, distance, heart_rate oxygenation, stress, metadata, non_structured_data_array
  @override
  @JsonKey(name: 'distance')
  final Distance? distance;
  @override
  @JsonKey(name: 'heart_rate')
  final HeartRate? heartRate;
  @override
  @JsonKey(name: 'oxygenation')
  final Oxygenation? oxygenation;
  @override
  @JsonKey(name: 'stress')
  final Stress? stress;
  @override
  @JsonKey(name: 'metadata')
  final Metadata? metadata;
  @override
  @JsonKey(name: '__v')
  final int? v;

  @override
  String toString() {
    return 'PhysicalSummary(id: $id, version: $version, activity: $activity, calories: $calories, distance: $distance, heartRate: $heartRate, oxygenation: $oxygenation, stress: $stress, metadata: $metadata, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhysicalSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.heartRate, heartRate) ||
                other.heartRate == heartRate) &&
            (identical(other.oxygenation, oxygenation) ||
                other.oxygenation == oxygenation) &&
            (identical(other.stress, stress) || other.stress == stress) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    version,
    activity,
    calories,
    distance,
    heartRate,
    oxygenation,
    stress,
    metadata,
    v,
  );

  /// Create a copy of PhysicalSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhysicalSummaryImplCopyWith<_$PhysicalSummaryImpl> get copyWith =>
      __$$PhysicalSummaryImplCopyWithImpl<_$PhysicalSummaryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PhysicalSummaryImplToJson(this);
  }
}

abstract class _PhysicalSummary implements PhysicalSummary {
  factory _PhysicalSummary({
    @JsonKey(name: '_id') final String? id,
    final int? version,
    @JsonKey(name: 'activity') final Activity? activity,
    @JsonKey(name: 'calories') final Calories? calories,
    @JsonKey(name: 'distance') final Distance? distance,
    @JsonKey(name: 'heart_rate') final HeartRate? heartRate,
    @JsonKey(name: 'oxygenation') final Oxygenation? oxygenation,
    @JsonKey(name: 'stress') final Stress? stress,
    @JsonKey(name: 'metadata') final Metadata? metadata,
    @JsonKey(name: '__v') final int? v,
  }) = _$PhysicalSummaryImpl;

  factory _PhysicalSummary.fromJson(Map<String, dynamic> json) =
      _$PhysicalSummaryImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  int? get version;
  @override
  @JsonKey(name: 'activity')
  Activity? get activity;
  @override
  @JsonKey(name: 'calories')
  Calories? get calories; // make similar  for calories, distance, heart_rate oxygenation, stress, metadata, non_structured_data_array
  @override
  @JsonKey(name: 'distance')
  Distance? get distance;
  @override
  @JsonKey(name: 'heart_rate')
  HeartRate? get heartRate;
  @override
  @JsonKey(name: 'oxygenation')
  Oxygenation? get oxygenation;
  @override
  @JsonKey(name: 'stress')
  Stress? get stress;
  @override
  @JsonKey(name: 'metadata')
  Metadata? get metadata;
  @override
  @JsonKey(name: '__v')
  int? get v;

  /// Create a copy of PhysicalSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhysicalSummaryImplCopyWith<_$PhysicalSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
