import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_metrics.freezed.dart';
part 'body_metrics.g.dart';

@freezed
class BodyMetrics with _$BodyMetrics {
  factory BodyMetrics({
    @JsonKey(name: 'waist_circumference_cm_int') int? waistCircumferenceCmInt,
    @JsonKey(name: 'hip_circumference_cm_int') int? hipCircumferenceCmInt,
    @JsonKey(name: 'chest_circumference_cm_int') int? chestCircumferenceCmInt,
    @JsonKey(name: 'bone_composition_percentage_int')
    int? boneCompositionPercentageInt,
    @JsonKey(name: 'muscle_composition_percentage_int')
    int? muscleCompositionPercentageInt,
    @JsonKey(name: 'water_composition_percentage_int')
    int? waterCompositionPercentageInt,
    @JsonKey(name: 'weight_kg_float') double? weightKgFloat,
    @JsonKey(name: 'height_cm_int') int? heightCmInt,
    @JsonKey(name: 'bmi_float') double? bmiFloat,
  }) = _BodyMetrics;

  factory BodyMetrics.fromJson(Map<String, dynamic> json) =>
      _$BodyMetricsFromJson(json);
}
