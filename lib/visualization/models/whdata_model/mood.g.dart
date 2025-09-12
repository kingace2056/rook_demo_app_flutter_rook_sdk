// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoodImpl _$$MoodImplFromJson(Map<String, dynamic> json) => _$MoodImpl(
      moodMinimumScaleInt: (json['mood_minimum_scale_int'] as num?)?.toInt(),
      moodAvgScaleInt: (json['mood_avg_scale_int'] as num?)?.toInt(),
      moodMaximumScaleInt: (json['mood_maximum_scale_int'] as num?)?.toInt(),
      moodDeltaScaleInt: (json['mood_delta_scale_int'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MoodImplToJson(_$MoodImpl instance) =>
    <String, dynamic>{
      'mood_minimum_scale_int': instance.moodMinimumScaleInt,
      'mood_avg_scale_int': instance.moodAvgScaleInt,
      'mood_maximum_scale_int': instance.moodMaximumScaleInt,
      'mood_delta_scale_int': instance.moodDeltaScaleInt,
    };
