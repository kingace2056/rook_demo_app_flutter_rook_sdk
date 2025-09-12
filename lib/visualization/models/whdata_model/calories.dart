import 'package:freezed_annotation/freezed_annotation.dart';

part 'calories.freezed.dart';
part 'calories.g.dart';

@freezed
class Calories with _$Calories {
  factory Calories({
    @JsonKey(name: 'calories_net_intake_kcal_float')
    double? caloriesNetIntakeKcalFloat,
    @JsonKey(name: 'calories_expenditure_kcal_float')
    double? caloriesExpenditureKcalFloat,
    @JsonKey(name: 'calories_net_active_kcal_float')
    double? caloriesNetActiveKcalFloat,
    @JsonKey(name: 'calories_basal_metabolic_rate_kcal_float')
    double? caloriesBasalMetabolicRateKcalFloat,
  }) = _Calories;

  factory Calories.fromJson(Map<String, dynamic> json) =>
      _$CaloriesFromJson(json);
}
