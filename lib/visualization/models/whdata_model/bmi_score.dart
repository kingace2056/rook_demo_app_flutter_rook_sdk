import 'package:freezed_annotation/freezed_annotation.dart';

part 'bmi_score.freezed.dart';
part 'bmi_score.g.dart';

@freezed
class BmiScore with _$BmiScore {
  factory BmiScore({
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'created_at_string') DateTime? createdAtString,
    @JsonKey(name: 'updated_at_string') DateTime? updatedAtString,
    @JsonKey(name: 'score_0_100_int') int? score0100Int,
    @JsonKey(name: 'calculated_with_missing_user_info_bool')
    bool? calculatedWithMissingUserInfoBool,
  }) = _BmiScore;

  factory BmiScore.fromJson(Map<String, dynamic> json) =>
      _$BmiScoreFromJson(json);
}
