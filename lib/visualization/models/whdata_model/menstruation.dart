import 'package:freezed_annotation/freezed_annotation.dart';

part 'menstruation.freezed.dart';
part 'menstruation.g.dart';

@freezed
class Menstruation with _$Menstruation {
  factory Menstruation({
    @JsonKey(name: 'last_updated_datetime_string')
    DateTime? lastUpdatedDatetimeString,
    @JsonKey(name: 'period_start_date_string') DateTime? periodStartDateString,
    @JsonKey(name: 'cycle_day_int') int? cycleDayInt,
    @JsonKey(name: 'predicted_cycle_length_days_int')
    int? predictedCycleLengthDaysInt,
    @JsonKey(name: 'cycle_length_days_int') int? cycleLengthDaysInt,
    @JsonKey(name: 'current_phase_string') String? currentPhaseString,
    @JsonKey(name: 'length_of_current_phase_days_int')
    int? lengthOfCurrentPhaseDaysInt,
    @JsonKey(name: 'days_until_next_phase_int') int? daysUntilNextPhaseInt,
    @JsonKey(name: 'is_a_predicted_cycle_bool') bool? isAPredictedCycleBool,
  }) = _Menstruation;

  factory Menstruation.fromJson(Map<String, dynamic> json) =>
      _$MenstruationFromJson(json);
}
