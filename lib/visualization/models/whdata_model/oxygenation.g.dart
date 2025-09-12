// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oxygenation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OxygenationImpl _$$OxygenationImplFromJson(Map<String, dynamic> json) =>
    _$OxygenationImpl(
      saturationAvgPercentageInt:
          (json['saturation_avg_percentage_int'] as num?)?.toInt(),
      vo2maxMLPerMinPerKgInt: (json['vo2max_mL_per_min_per_kg_int'] as num?)
          ?.toInt(),
    );

Map<String, dynamic> _$$OxygenationImplToJson(_$OxygenationImpl instance) =>
    <String, dynamic>{
      'saturation_avg_percentage_int': instance.saturationAvgPercentageInt,
      'vo2max_mL_per_min_per_kg_int': instance.vo2maxMLPerMinPerKgInt,
    };
