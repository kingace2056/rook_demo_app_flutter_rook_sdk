// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyMetricsImpl _$$BodyMetricsImplFromJson(Map<String, dynamic> json) =>
    _$BodyMetricsImpl(
      waistCircumferenceCmInt: (json['waist_circumference_cm_int'] as num?)
          ?.toInt(),
      hipCircumferenceCmInt: (json['hip_circumference_cm_int'] as num?)
          ?.toInt(),
      chestCircumferenceCmInt: (json['chest_circumference_cm_int'] as num?)
          ?.toInt(),
      boneCompositionPercentageInt:
          (json['bone_composition_percentage_int'] as num?)?.toInt(),
      muscleCompositionPercentageInt:
          (json['muscle_composition_percentage_int'] as num?)?.toInt(),
      waterCompositionPercentageInt:
          (json['water_composition_percentage_int'] as num?)?.toInt(),
      weightKgFloat: (json['weight_kg_float'] as num?)?.toDouble(),
      heightCmInt: (json['height_cm_int'] as num?)?.toInt(),
      bmiFloat: (json['bmi_float'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BodyMetricsImplToJson(
  _$BodyMetricsImpl instance,
) => <String, dynamic>{
  'waist_circumference_cm_int': instance.waistCircumferenceCmInt,
  'hip_circumference_cm_int': instance.hipCircumferenceCmInt,
  'chest_circumference_cm_int': instance.chestCircumferenceCmInt,
  'bone_composition_percentage_int': instance.boneCompositionPercentageInt,
  'muscle_composition_percentage_int': instance.muscleCompositionPercentageInt,
  'water_composition_percentage_int': instance.waterCompositionPercentageInt,
  'weight_kg_float': instance.weightKgFloat,
  'height_cm_int': instance.heightCmInt,
  'bmi_float': instance.bmiFloat,
};
