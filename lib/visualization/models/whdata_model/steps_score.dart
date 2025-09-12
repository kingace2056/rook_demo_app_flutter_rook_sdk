import 'package:freezed_annotation/freezed_annotation.dart';

part 'steps_score.freezed.dart';
part 'steps_score.g.dart';

@freezed
class StepsScore with _$StepsScore {
  factory StepsScore({
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'created_at_string') DateTime? createdAtString,
    @JsonKey(name: 'updated_at_string') DateTime? updatedAtString,
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'calculated_with_missing_user_info_bool')
    bool? calculatedWithMissingUserInfoBool,
  }) = _StepsScore;

  factory StepsScore.fromJson(Map<String, dynamic> json) =>
      _$StepsScoreFromJson(json);
}
