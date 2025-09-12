// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'physical_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhysicalSummaryImpl _$$PhysicalSummaryImplFromJson(
  Map<String, dynamic> json,
) => _$PhysicalSummaryImpl(
  id: json['_id'] as String?,
  version: (json['version'] as num?)?.toInt(),
  activity: json['activity'] == null
      ? null
      : Activity.fromJson(json['activity'] as Map<String, dynamic>),
  calories: json['calories'] == null
      ? null
      : Calories.fromJson(json['calories'] as Map<String, dynamic>),
  distance: json['distance'] == null
      ? null
      : Distance.fromJson(json['distance'] as Map<String, dynamic>),
  heartRate: json['heart_rate'] == null
      ? null
      : HeartRate.fromJson(json['heart_rate'] as Map<String, dynamic>),
  oxygenation: json['oxygenation'] == null
      ? null
      : Oxygenation.fromJson(json['oxygenation'] as Map<String, dynamic>),
  stress: json['stress'] == null
      ? null
      : Stress.fromJson(json['stress'] as Map<String, dynamic>),
  metadata: json['metadata'] == null
      ? null
      : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
  v: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$$PhysicalSummaryImplToJson(
  _$PhysicalSummaryImpl instance,
) => <String, dynamic>{
  '_id': instance.id,
  'version': instance.version,
  'activity': instance.activity,
  'calories': instance.calories,
  'distance': instance.distance,
  'heart_rate': instance.heartRate,
  'oxygenation': instance.oxygenation,
  'stress': instance.stress,
  'metadata': instance.metadata,
  '__v': instance.v,
};
