// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_score_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HealthScoreData _$HealthScoreDataFromJson(Map<String, dynamic> json) {
  return _HealthScoreData.fromJson(json);
}

/// @nodoc
mixin _$HealthScoreData {
  Metadata? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'overall_scores')
  OverallScores? get overallScores => throw _privateConstructorUsedError;
  @JsonKey(name: 'physical_health_score')
  PhysicalHealthScore? get physicalHealthScore =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_health_score')
  SleepHealthScore? get sleepHealthScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_health_score')
  BodyHealthScore? get bodyHealthScore => throw _privateConstructorUsedError;

  /// Serializes this HealthScoreData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthScoreData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthScoreDataCopyWith<HealthScoreData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthScoreDataCopyWith<$Res> {
  factory $HealthScoreDataCopyWith(
    HealthScoreData value,
    $Res Function(HealthScoreData) then,
  ) = _$HealthScoreDataCopyWithImpl<$Res, HealthScoreData>;
  @useResult
  $Res call({
    Metadata? metadata,
    @JsonKey(name: 'overall_scores') OverallScores? overallScores,
    @JsonKey(name: 'physical_health_score')
    PhysicalHealthScore? physicalHealthScore,
    @JsonKey(name: 'sleep_health_score') SleepHealthScore? sleepHealthScore,
    @JsonKey(name: 'body_health_score') BodyHealthScore? bodyHealthScore,
  });

  $MetadataCopyWith<$Res>? get metadata;
  $OverallScoresCopyWith<$Res>? get overallScores;
  $PhysicalHealthScoreCopyWith<$Res>? get physicalHealthScore;
  $SleepHealthScoreCopyWith<$Res>? get sleepHealthScore;
  $BodyHealthScoreCopyWith<$Res>? get bodyHealthScore;
}

/// @nodoc
class _$HealthScoreDataCopyWithImpl<$Res, $Val extends HealthScoreData>
    implements $HealthScoreDataCopyWith<$Res> {
  _$HealthScoreDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthScoreData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? overallScores = freezed,
    Object? physicalHealthScore = freezed,
    Object? sleepHealthScore = freezed,
    Object? bodyHealthScore = freezed,
  }) {
    return _then(
      _value.copyWith(
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Metadata?,
            overallScores: freezed == overallScores
                ? _value.overallScores
                : overallScores // ignore: cast_nullable_to_non_nullable
                      as OverallScores?,
            physicalHealthScore: freezed == physicalHealthScore
                ? _value.physicalHealthScore
                : physicalHealthScore // ignore: cast_nullable_to_non_nullable
                      as PhysicalHealthScore?,
            sleepHealthScore: freezed == sleepHealthScore
                ? _value.sleepHealthScore
                : sleepHealthScore // ignore: cast_nullable_to_non_nullable
                      as SleepHealthScore?,
            bodyHealthScore: freezed == bodyHealthScore
                ? _value.bodyHealthScore
                : bodyHealthScore // ignore: cast_nullable_to_non_nullable
                      as BodyHealthScore?,
          )
          as $Val,
    );
  }

  /// Create a copy of HealthScoreData
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

  /// Create a copy of HealthScoreData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OverallScoresCopyWith<$Res>? get overallScores {
    if (_value.overallScores == null) {
      return null;
    }

    return $OverallScoresCopyWith<$Res>(_value.overallScores!, (value) {
      return _then(_value.copyWith(overallScores: value) as $Val);
    });
  }

  /// Create a copy of HealthScoreData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhysicalHealthScoreCopyWith<$Res>? get physicalHealthScore {
    if (_value.physicalHealthScore == null) {
      return null;
    }

    return $PhysicalHealthScoreCopyWith<$Res>(_value.physicalHealthScore!, (
      value,
    ) {
      return _then(_value.copyWith(physicalHealthScore: value) as $Val);
    });
  }

  /// Create a copy of HealthScoreData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SleepHealthScoreCopyWith<$Res>? get sleepHealthScore {
    if (_value.sleepHealthScore == null) {
      return null;
    }

    return $SleepHealthScoreCopyWith<$Res>(_value.sleepHealthScore!, (value) {
      return _then(_value.copyWith(sleepHealthScore: value) as $Val);
    });
  }

  /// Create a copy of HealthScoreData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodyHealthScoreCopyWith<$Res>? get bodyHealthScore {
    if (_value.bodyHealthScore == null) {
      return null;
    }

    return $BodyHealthScoreCopyWith<$Res>(_value.bodyHealthScore!, (value) {
      return _then(_value.copyWith(bodyHealthScore: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HealthScoreDataImplCopyWith<$Res>
    implements $HealthScoreDataCopyWith<$Res> {
  factory _$$HealthScoreDataImplCopyWith(
    _$HealthScoreDataImpl value,
    $Res Function(_$HealthScoreDataImpl) then,
  ) = __$$HealthScoreDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Metadata? metadata,
    @JsonKey(name: 'overall_scores') OverallScores? overallScores,
    @JsonKey(name: 'physical_health_score')
    PhysicalHealthScore? physicalHealthScore,
    @JsonKey(name: 'sleep_health_score') SleepHealthScore? sleepHealthScore,
    @JsonKey(name: 'body_health_score') BodyHealthScore? bodyHealthScore,
  });

  @override
  $MetadataCopyWith<$Res>? get metadata;
  @override
  $OverallScoresCopyWith<$Res>? get overallScores;
  @override
  $PhysicalHealthScoreCopyWith<$Res>? get physicalHealthScore;
  @override
  $SleepHealthScoreCopyWith<$Res>? get sleepHealthScore;
  @override
  $BodyHealthScoreCopyWith<$Res>? get bodyHealthScore;
}

/// @nodoc
class __$$HealthScoreDataImplCopyWithImpl<$Res>
    extends _$HealthScoreDataCopyWithImpl<$Res, _$HealthScoreDataImpl>
    implements _$$HealthScoreDataImplCopyWith<$Res> {
  __$$HealthScoreDataImplCopyWithImpl(
    _$HealthScoreDataImpl _value,
    $Res Function(_$HealthScoreDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HealthScoreData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? overallScores = freezed,
    Object? physicalHealthScore = freezed,
    Object? sleepHealthScore = freezed,
    Object? bodyHealthScore = freezed,
  }) {
    return _then(
      _$HealthScoreDataImpl(
        metadata: freezed == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Metadata?,
        overallScores: freezed == overallScores
            ? _value.overallScores
            : overallScores // ignore: cast_nullable_to_non_nullable
                  as OverallScores?,
        physicalHealthScore: freezed == physicalHealthScore
            ? _value.physicalHealthScore
            : physicalHealthScore // ignore: cast_nullable_to_non_nullable
                  as PhysicalHealthScore?,
        sleepHealthScore: freezed == sleepHealthScore
            ? _value.sleepHealthScore
            : sleepHealthScore // ignore: cast_nullable_to_non_nullable
                  as SleepHealthScore?,
        bodyHealthScore: freezed == bodyHealthScore
            ? _value.bodyHealthScore
            : bodyHealthScore // ignore: cast_nullable_to_non_nullable
                  as BodyHealthScore?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthScoreDataImpl implements _HealthScoreData {
  _$HealthScoreDataImpl({
    this.metadata,
    @JsonKey(name: 'overall_scores') this.overallScores,
    @JsonKey(name: 'physical_health_score') this.physicalHealthScore,
    @JsonKey(name: 'sleep_health_score') this.sleepHealthScore,
    @JsonKey(name: 'body_health_score') this.bodyHealthScore,
  });

  factory _$HealthScoreDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthScoreDataImplFromJson(json);

  @override
  final Metadata? metadata;
  @override
  @JsonKey(name: 'overall_scores')
  final OverallScores? overallScores;
  @override
  @JsonKey(name: 'physical_health_score')
  final PhysicalHealthScore? physicalHealthScore;
  @override
  @JsonKey(name: 'sleep_health_score')
  final SleepHealthScore? sleepHealthScore;
  @override
  @JsonKey(name: 'body_health_score')
  final BodyHealthScore? bodyHealthScore;

  @override
  String toString() {
    return 'HealthScoreData(metadata: $metadata, overallScores: $overallScores, physicalHealthScore: $physicalHealthScore, sleepHealthScore: $sleepHealthScore, bodyHealthScore: $bodyHealthScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthScoreDataImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.overallScores, overallScores) ||
                other.overallScores == overallScores) &&
            (identical(other.physicalHealthScore, physicalHealthScore) ||
                other.physicalHealthScore == physicalHealthScore) &&
            (identical(other.sleepHealthScore, sleepHealthScore) ||
                other.sleepHealthScore == sleepHealthScore) &&
            (identical(other.bodyHealthScore, bodyHealthScore) ||
                other.bodyHealthScore == bodyHealthScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    metadata,
    overallScores,
    physicalHealthScore,
    sleepHealthScore,
    bodyHealthScore,
  );

  /// Create a copy of HealthScoreData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthScoreDataImplCopyWith<_$HealthScoreDataImpl> get copyWith =>
      __$$HealthScoreDataImplCopyWithImpl<_$HealthScoreDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthScoreDataImplToJson(this);
  }
}

abstract class _HealthScoreData implements HealthScoreData {
  factory _HealthScoreData({
    final Metadata? metadata,
    @JsonKey(name: 'overall_scores') final OverallScores? overallScores,
    @JsonKey(name: 'physical_health_score')
    final PhysicalHealthScore? physicalHealthScore,
    @JsonKey(name: 'sleep_health_score')
    final SleepHealthScore? sleepHealthScore,
    @JsonKey(name: 'body_health_score') final BodyHealthScore? bodyHealthScore,
  }) = _$HealthScoreDataImpl;

  factory _HealthScoreData.fromJson(Map<String, dynamic> json) =
      _$HealthScoreDataImpl.fromJson;

  @override
  Metadata? get metadata;
  @override
  @JsonKey(name: 'overall_scores')
  OverallScores? get overallScores;
  @override
  @JsonKey(name: 'physical_health_score')
  PhysicalHealthScore? get physicalHealthScore;
  @override
  @JsonKey(name: 'sleep_health_score')
  SleepHealthScore? get sleepHealthScore;
  @override
  @JsonKey(name: 'body_health_score')
  BodyHealthScore? get bodyHealthScore;

  /// Create a copy of HealthScoreData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthScoreDataImplCopyWith<_$HealthScoreDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
