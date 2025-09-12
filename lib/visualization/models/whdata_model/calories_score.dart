import 'package:freezed_annotation/freezed_annotation.dart';

part 'calories_score.freezed.dart';
part 'calories_score.g.dart';

@freezed
class CaloriesScore with _$CaloriesScore {
  factory CaloriesScore({
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'created_at_string') DateTime? createdAtString,
    @JsonKey(name: 'updated_at_string') DateTime? updatedAtString,
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'calculated_with_missing_user_info_bool')
    bool? calculatedWithMissingUserInfoBool,
    @JsonKey(name: 'missing_user_info_array')
    List<String>? missingUserInfoArray,
  }) = _CaloriesScore;

  factory CaloriesScore.fromJson(Map<String, dynamic> json) =>
      _$CaloriesScoreFromJson(json);
}
