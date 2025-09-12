// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breathing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreathingImpl _$$BreathingImplFromJson(Map<String, dynamic> json) =>
    _$BreathingImpl(
      breathsMinimumPerMinInt:
          (json['breaths_minimum_per_min_int'] as num?)?.toInt(),
      breathsAvgPerMinInt: (json['breaths_avg_per_min_int'] as num?)?.toInt(),
      breathsMaximumPerMinInt:
          (json['breaths_maximum_per_min_int'] as num?)?.toInt(),
      snoringEventsCountInt:
          (json['snoring_events_count_int'] as num?)?.toInt(),
      snoringDurationTotalSecondsInt:
          (json['snoring_duration_total_seconds_int'] as num?)?.toInt(),
      saturationAvgPercentageInt:
          (json['saturation_avg_percentage_int'] as num?)?.toInt(),
      saturationMinimumPercentageInt:
          (json['saturation_minimum_percentage_int'] as num?)?.toInt(),
      saturationMaximumPercentageInt:
          (json['saturation_maximum_percentage_int'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BreathingImplToJson(_$BreathingImpl instance) =>
    <String, dynamic>{
      'breaths_minimum_per_min_int': instance.breathsMinimumPerMinInt,
      'breaths_avg_per_min_int': instance.breathsAvgPerMinInt,
      'breaths_maximum_per_min_int': instance.breathsMaximumPerMinInt,
      'snoring_events_count_int': instance.snoringEventsCountInt,
      'snoring_duration_total_seconds_int':
          instance.snoringDurationTotalSecondsInt,
      'saturation_avg_percentage_int': instance.saturationAvgPercentageInt,
      'saturation_minimum_percentage_int':
          instance.saturationMinimumPercentageInt,
      'saturation_maximum_percentage_int':
          instance.saturationMaximumPercentageInt,
    };
