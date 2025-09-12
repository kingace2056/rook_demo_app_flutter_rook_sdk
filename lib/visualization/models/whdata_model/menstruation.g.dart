// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menstruation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenstruationImpl _$$MenstruationImplFromJson(Map<String, dynamic> json) =>
    _$MenstruationImpl(
      lastUpdatedDatetimeString: json['last_updated_datetime_string'] == null
          ? null
          : DateTime.parse(json['last_updated_datetime_string'] as String),
      periodStartDateString: json['period_start_date_string'] == null
          ? null
          : DateTime.parse(json['period_start_date_string'] as String),
      cycleDayInt: (json['cycle_day_int'] as num?)?.toInt(),
      predictedCycleLengthDaysInt:
          (json['predicted_cycle_length_days_int'] as num?)?.toInt(),
      cycleLengthDaysInt: (json['cycle_length_days_int'] as num?)?.toInt(),
      currentPhaseString: json['current_phase_string'] as String?,
      lengthOfCurrentPhaseDaysInt:
          (json['length_of_current_phase_days_int'] as num?)?.toInt(),
      daysUntilNextPhaseInt: (json['days_until_next_phase_int'] as num?)
          ?.toInt(),
      isAPredictedCycleBool: json['is_a_predicted_cycle_bool'] as bool?,
    );

Map<String, dynamic> _$$MenstruationImplToJson(
  _$MenstruationImpl instance,
) => <String, dynamic>{
  'last_updated_datetime_string': instance.lastUpdatedDatetimeString
      ?.toIso8601String(),
  'period_start_date_string': instance.periodStartDateString?.toIso8601String(),
  'cycle_day_int': instance.cycleDayInt,
  'predicted_cycle_length_days_int': instance.predictedCycleLengthDaysInt,
  'cycle_length_days_int': instance.cycleLengthDaysInt,
  'current_phase_string': instance.currentPhaseString,
  'length_of_current_phase_days_int': instance.lengthOfCurrentPhaseDaysInt,
  'days_until_next_phase_int': instance.daysUntilNextPhaseInt,
  'is_a_predicted_cycle_bool': instance.isAPredictedCycleBool,
};
