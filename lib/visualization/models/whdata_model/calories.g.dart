// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaloriesImpl _$$CaloriesImplFromJson(Map<String, dynamic> json) =>
    _$CaloriesImpl(
      caloriesNetIntakeKcalFloat:
          (json['calories_net_intake_kcal_float'] as num?)?.toDouble(),
      caloriesExpenditureKcalFloat:
          (json['calories_expenditure_kcal_float'] as num?)?.toDouble(),
      caloriesNetActiveKcalFloat:
          (json['calories_net_active_kcal_float'] as num?)?.toDouble(),
      caloriesBasalMetabolicRateKcalFloat:
          (json['calories_basal_metabolic_rate_kcal_float'] as num?)
              ?.toDouble(),
    );

Map<String, dynamic> _$$CaloriesImplToJson(_$CaloriesImpl instance) =>
    <String, dynamic>{
      'calories_net_intake_kcal_float': instance.caloriesNetIntakeKcalFloat,
      'calories_expenditure_kcal_float': instance.caloriesExpenditureKcalFloat,
      'calories_net_active_kcal_float': instance.caloriesNetActiveKcalFloat,
      'calories_basal_metabolic_rate_kcal_float':
          instance.caloriesBasalMetabolicRateKcalFloat,
    };
