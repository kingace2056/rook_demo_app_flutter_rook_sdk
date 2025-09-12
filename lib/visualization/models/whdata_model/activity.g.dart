// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      activeSecondsInt: (json['active_seconds_int'] as num?)?.toInt(),
      restSecondsInt: (json['rest_seconds_int'] as num?)?.toInt(),
      lowIntensitySecondsInt: (json['low_intensity_seconds_int'] as num?)
          ?.toInt(),
      moderateIntensitySecondsInt:
          (json['moderate_intensity_seconds_int'] as num?)?.toInt(),
      vigorousIntensitySecondsInt:
          (json['vigorous_intensity_seconds_int'] as num?)?.toInt(),
      inactivitySecondsInt: (json['inactivity_seconds_int'] as num?)?.toInt(),
      continuousInactivePeriodsInt:
          (json['continuous_inactive_periods_int'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'active_seconds_int': instance.activeSecondsInt,
      'rest_seconds_int': instance.restSecondsInt,
      'low_intensity_seconds_int': instance.lowIntensitySecondsInt,
      'moderate_intensity_seconds_int': instance.moderateIntensitySecondsInt,
      'vigorous_intensity_seconds_int': instance.vigorousIntensitySecondsInt,
      'inactivity_seconds_int': instance.inactivitySecondsInt,
      'continuous_inactive_periods_int': instance.continuousInactivePeriodsInt,
    };
