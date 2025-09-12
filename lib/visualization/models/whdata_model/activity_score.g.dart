// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityScoreImpl _$$ActivityScoreImplFromJson(Map<String, dynamic> json) =>
    _$ActivityScoreImpl(
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

Map<String, dynamic> _$$ActivityScoreImplToJson(_$ActivityScoreImpl instance) =>
    <String, dynamic>{
      'datetime_string': instance.datetimeString?.toIso8601String(),
      'created_at_string': instance.createdAtString?.toIso8601String(),
      'updated_at_string': instance.updatedAtString?.toIso8601String(),
      'score_0_100_int': instance.score0100Int,
      'calculated_with_missing_user_info_bool':
          instance.calculatedWithMissingUserInfoBool,
    };
