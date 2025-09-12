// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StressImpl _$$StressImplFromJson(Map<String, dynamic> json) => _$StressImpl(
  stressAtRestDurationSecondsInt:
      (json['stress_at_rest_duration_seconds_int'] as num?)?.toInt(),
  stressDurationSecondsInt: (json['stress_duration_seconds_int'] as num?)
      ?.toInt(),
  lowStressDurationSecondsInt: (json['low_stress_duration_seconds_int'] as num?)
      ?.toInt(),
  mediumStressDurationSecondsInt:
      (json['medium_stress_duration_seconds_int'] as num?)?.toInt(),
  highStressDurationSecondsInt:
      (json['high_stress_duration_seconds_int'] as num?)?.toInt(),
  stressAvgLevelInt: (json['stress_avg_level_int'] as num?)?.toInt(),
  stressMaximumLevelInt: (json['stress_maximum_level_int'] as num?)?.toInt(),
);

Map<String, dynamic> _$$StressImplToJson(
  _$StressImpl instance,
) => <String, dynamic>{
  'stress_at_rest_duration_seconds_int':
      instance.stressAtRestDurationSecondsInt,
  'stress_duration_seconds_int': instance.stressDurationSecondsInt,
  'low_stress_duration_seconds_int': instance.lowStressDurationSecondsInt,
  'medium_stress_duration_seconds_int': instance.mediumStressDurationSecondsInt,
  'high_stress_duration_seconds_int': instance.highStressDurationSecondsInt,
  'stress_avg_level_int': instance.stressAvgLevelInt,
  'stress_maximum_level_int': instance.stressMaximumLevelInt,
};
