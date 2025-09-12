// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'readiness_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadinessScoreImpl _$$ReadinessScoreImplFromJson(Map<String, dynamic> json) =>
    _$ReadinessScoreImpl(
      datetimeString: json['datetime_string'] == null
          ? null
          : DateTime.parse(json['datetime_string'] as String),
      createdAtString: json['created_at_string'] == null
          ? null
          : DateTime.parse(json['created_at_string'] as String),
      updatedAtString: json['updated_at_string'] == null
          ? null
          : DateTime.parse(json['updated_at_string'] as String),
      score0100Int: (json['score_0_100_int'] as num?)?.toInt(),
      calculatedWithMissingUserInfoBool:
          json['calculated_with_missing_user_info_bool'] as bool?,
    );

Map<String, dynamic> _$$ReadinessScoreImplToJson(
  _$ReadinessScoreImpl instance,
) => <String, dynamic>{
  'datetime_string': instance.datetimeString?.toIso8601String(),
  'created_at_string': instance.createdAtString?.toIso8601String(),
  'updated_at_string': instance.updatedAtString?.toIso8601String(),
  'score_0_100_int': instance.score0100Int,
  'calculated_with_missing_user_info_bool':
      instance.calculatedWithMissingUserInfoBool,
};
