// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DurationImpl _$$DurationImplFromJson(Map<String, dynamic> json) =>
    _$DurationImpl(
      sleepStartDatetimeString: json['sleep_start_datetime_string'] == null
          ? null
          : DateTime.parse(json['sleep_start_datetime_string'] as String),
      sleepEndDatetimeString: json['sleep_end_datetime_string'] == null
          ? null
          : DateTime.parse(json['sleep_end_datetime_string'] as String),
      sleepDateString: json['sleep_date_string'] == null
          ? null
          : DateTime.parse(json['sleep_date_string'] as String),
      sleepDurationSecondsInt:
          (json['sleep_duration_seconds_int'] as num?)?.toInt(),
      timeInBedSecondsInt: (json['time_in_bed_seconds_int'] as num?)?.toInt(),
      lightSleepDurationSecondsInt:
          (json['light_sleep_duration_seconds_int'] as num?)?.toInt(),
      remSleepDurationSecondsInt:
          (json['rem_sleep_duration_seconds_int'] as num?)?.toInt(),
      deepSleepDurationSecondsInt:
          (json['deep_sleep_duration_seconds_int'] as num?)?.toInt(),
      timeToFallAsleepSecondsInt:
          (json['time_to_fall_asleep_seconds_int'] as num?)?.toInt(),
      timeAwakeDuringSleepSecondsInt:
          (json['time_awake_during_sleep_seconds_int'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DurationImplToJson(_$DurationImpl instance) =>
    <String, dynamic>{
      'sleep_start_datetime_string':
          instance.sleepStartDatetimeString?.toIso8601String(),
      'sleep_end_datetime_string':
          instance.sleepEndDatetimeString?.toIso8601String(),
      'sleep_date_string': instance.sleepDateString?.toIso8601String(),
      'sleep_duration_seconds_int': instance.sleepDurationSecondsInt,
      'time_in_bed_seconds_int': instance.timeInBedSecondsInt,
      'light_sleep_duration_seconds_int': instance.lightSleepDurationSecondsInt,
      'rem_sleep_duration_seconds_int': instance.remSleepDurationSecondsInt,
      'deep_sleep_duration_seconds_int': instance.deepSleepDurationSecondsInt,
      'time_to_fall_asleep_seconds_int': instance.timeToFallAsleepSecondsInt,
      'time_awake_during_sleep_seconds_int':
          instance.timeAwakeDuringSleepSecondsInt,
    };
