import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition.freezed.dart';
part 'nutrition.g.dart';

@freezed
class Nutrition with _$Nutrition {
  factory Nutrition({
    @JsonKey(name: 'food_intake_float') double? foodIntakeFloat,
    @JsonKey(name: 'calories_intake_kcal_float')
    double? caloriesIntakeKcalFloat,
    @JsonKey(name: 'protein_intake_g_float') double? proteinIntakeGFloat,
    @JsonKey(name: 'sugar_intake_g_float') double? sugarIntakeGFloat,
    @JsonKey(name: 'fat_intake_g_float') double? fatIntakeGFloat,
    @JsonKey(name: 'trans_fat_intake_g_float') double? transFatIntakeGFloat,
    @JsonKey(name: 'carbohydrates_intake_g_float')
    double? carbohydratesIntakeGFloat,
    @JsonKey(name: 'fiber_intake_g_float') double? fiberIntakeGFloat,
    @JsonKey(name: 'alcohol_intake_g_float') double? alcoholIntakeGFloat,
    @JsonKey(name: 'sodium_intake_mg_float') double? sodiumIntakeMgFloat,
    @JsonKey(name: 'cholesterol_intake_mg_float')
    double? cholesterolIntakeMgFloat,
  }) = _Nutrition;

  factory Nutrition.fromJson(Map<String, dynamic> json) =>
      _$NutritionFromJson(json);
}
