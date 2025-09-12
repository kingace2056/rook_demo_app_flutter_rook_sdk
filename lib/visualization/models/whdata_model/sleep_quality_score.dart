import 'package:freezed_annotation/freezed_annotation.dart';

part 'sleep_quality_score.freezed.dart';
part 'sleep_quality_score.g.dart';

@freezed
class SleepQualityScore with _$SleepQualityScore {
  factory SleepQualityScore({
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'created_at_string') DateTime? createdAtString,
    @JsonKey(name: 'updated_at_string') DateTime? updatedAtString,
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'calculated_with_missing_user_info_bool')
    bool? calculatedWithMissingUserInfoBool,
  }) = _SleepQualityScore;

  factory SleepQualityScore.fromJson(Map<String, dynamic> json) =>
      _$SleepQualityScoreFromJson(json);
}
