// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calories_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaloriesScoreImpl _$$CaloriesScoreImplFromJson(Map<String, dynamic> json) =>
    _$CaloriesScoreImpl(
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
      missingUserInfoArray: (json['missing_user_info_array'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CaloriesScoreImplToJson(_$CaloriesScoreImpl instance) =>
    <String, dynamic>{
      'datetime_string': instance.datetimeString?.toIso8601String(),
      'created_at_string': instance.createdAtString?.toIso8601String(),
      'updated_at_string': instance.updatedAtString?.toIso8601String(),
      'score_0_100_int': instance.score0100Int,
      'calculated_with_missing_user_info_bool':
          instance.calculatedWithMissingUserInfoBool,
      'missing_user_info_array': instance.missingUserInfoArray,
    };
