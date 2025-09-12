// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overall_scores.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OverallScoresImpl _$$OverallScoresImplFromJson(Map<String, dynamic> json) =>
    _$OverallScoresImpl(
      globalScore0100Int: (json['global_score_0_100_int'] as num?)?.toInt(),
      sevenDaysAvgScore0100Int: (json['seven_days_avg_score_0_100_int'] as num?)
          ?.toInt(),
    );

Map<String, dynamic> _$$OverallScoresImplToJson(_$OverallScoresImpl instance) =>
    <String, dynamic>{
      'global_score_0_100_int': instance.globalScore0100Int,
      'seven_days_avg_score_0_100_int': instance.sevenDaysAvgScore0100Int,
    };
