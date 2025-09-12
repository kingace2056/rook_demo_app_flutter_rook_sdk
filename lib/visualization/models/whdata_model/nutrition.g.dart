// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NutritionImpl _$$NutritionImplFromJson(Map<String, dynamic> json) =>
    _$NutritionImpl(
      foodIntakeFloat: (json['food_intake_float'] as num?)?.toDouble(),
      caloriesIntakeKcalFloat: (json['calories_intake_kcal_float'] as num?)
          ?.toDouble(),
      proteinIntakeGFloat: (json['protein_intake_g_float'] as num?)?.toDouble(),
      sugarIntakeGFloat: (json['sugar_intake_g_float'] as num?)?.toDouble(),
      fatIntakeGFloat: (json['fat_intake_g_float'] as num?)?.toDouble(),
      transFatIntakeGFloat: (json['trans_fat_intake_g_float'] as num?)
          ?.toDouble(),
      carbohydratesIntakeGFloat: (json['carbohydrates_intake_g_float'] as num?)
          ?.toDouble(),
      fiberIntakeGFloat: (json['fiber_intake_g_float'] as num?)?.toDouble(),
      alcoholIntakeGFloat: (json['alcohol_intake_g_float'] as num?)?.toDouble(),
      sodiumIntakeMgFloat: (json['sodium_intake_mg_float'] as num?)?.toDouble(),
      cholesterolIntakeMgFloat: (json['cholesterol_intake_mg_float'] as num?)
          ?.toDouble(),
    );

Map<String, dynamic> _$$NutritionImplToJson(_$NutritionImpl instance) =>
    <String, dynamic>{
      'food_intake_float': instance.foodIntakeFloat,
      'calories_intake_kcal_float': instance.caloriesIntakeKcalFloat,
      'protein_intake_g_float': instance.proteinIntakeGFloat,
      'sugar_intake_g_float': instance.sugarIntakeGFloat,
      'fat_intake_g_float': instance.fatIntakeGFloat,
      'trans_fat_intake_g_float': instance.transFatIntakeGFloat,
      'carbohydrates_intake_g_float': instance.carbohydratesIntakeGFloat,
      'fiber_intake_g_float': instance.fiberIntakeGFloat,
      'alcohol_intake_g_float': instance.alcoholIntakeGFloat,
      'sodium_intake_mg_float': instance.sodiumIntakeMgFloat,
      'cholesterol_intake_mg_float': instance.cholesterolIntakeMgFloat,
    };
