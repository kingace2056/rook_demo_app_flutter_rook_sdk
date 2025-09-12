// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heart_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeartRateImpl _$$HeartRateImplFromJson(Map<String, dynamic> json) =>
    _$HeartRateImpl(
      hrMaximumBpmInt: (json['hr_maximum_bpm_int'] as num?)?.toInt(),
      hrMinimumBpmInt: (json['hr_minimum_bpm_int'] as num?)?.toInt(),
      hrAvgBpmInt: (json['hr_avg_bpm_int'] as num?)?.toInt(),
      hrRestingBpmInt: (json['hr_resting_bpm_int'] as num?)?.toInt(),
      hrvAvgRmssdFloat: (json['hrv_avg_rmssd_float'] as num?)?.toInt(),
      hrvAvgSdnnFloat: (json['hrv_avg_sdnn_float'] as num?)?.toInt(),
      hrGranularDataArray: (json['hr_granular_data_array'] as List<dynamic>?)
          ?.map((e) => HrGranularDataArray.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HeartRateImplToJson(_$HeartRateImpl instance) =>
    <String, dynamic>{
      'hr_maximum_bpm_int': instance.hrMaximumBpmInt,
      'hr_minimum_bpm_int': instance.hrMinimumBpmInt,
      'hr_avg_bpm_int': instance.hrAvgBpmInt,
      'hr_resting_bpm_int': instance.hrRestingBpmInt,
      'hrv_avg_rmssd_float': instance.hrvAvgRmssdFloat,
      'hrv_avg_sdnn_float': instance.hrvAvgSdnnFloat,
      'hr_granular_data_array': instance.hrGranularDataArray,
    };
