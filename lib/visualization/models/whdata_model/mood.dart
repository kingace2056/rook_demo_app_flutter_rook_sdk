import 'package:freezed_annotation/freezed_annotation.dart';

part 'mood.freezed.dart';
part 'mood.g.dart';

@freezed
class Mood with _$Mood {
  factory Mood({
    @JsonKey(name: 'mood_minimum_scale_int') int? moodMinimumScaleInt,
    @JsonKey(name: 'mood_avg_scale_int') int? moodAvgScaleInt,
    @JsonKey(name: 'mood_maximum_scale_int') int? moodMaximumScaleInt,
    @JsonKey(name: 'mood_delta_scale_int') int? moodDeltaScaleInt,
  }) = _Mood;

  factory Mood.fromJson(Map<String, dynamic> json) => _$MoodFromJson(json);
}
