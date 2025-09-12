import 'package:freezed_annotation/freezed_annotation.dart';

part 'breathing.freezed.dart';
part 'breathing.g.dart';

@freezed
class Breathing with _$Breathing {
  factory Breathing({
    @JsonKey(name: 'breaths_minimum_per_min_int') int? breathsMinimumPerMinInt,
    @JsonKey(name: 'breaths_avg_per_min_int') int? breathsAvgPerMinInt,
    @JsonKey(name: 'breaths_maximum_per_min_int') int? breathsMaximumPerMinInt,
    @JsonKey(name: 'snoring_events_count_int') int? snoringEventsCountInt,
    @JsonKey(name: 'snoring_duration_total_seconds_int')
    int? snoringDurationTotalSecondsInt,
    @JsonKey(name: 'saturation_avg_percentage_int')
    int? saturationAvgPercentageInt,
    @JsonKey(name: 'saturation_minimum_percentage_int')
    int? saturationMinimumPercentageInt,
    @JsonKey(name: 'saturation_maximum_percentage_int')
    int? saturationMaximumPercentageInt,
  }) = _Breathing;

  factory Breathing.fromJson(Map<String, dynamic> json) =>
      _$BreathingFromJson(json);
}
