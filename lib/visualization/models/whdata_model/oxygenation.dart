import 'package:freezed_annotation/freezed_annotation.dart';

part 'oxygenation.freezed.dart';
part 'oxygenation.g.dart';

@freezed
class Oxygenation with _$Oxygenation {
  factory Oxygenation({
    @JsonKey(name: 'saturation_avg_percentage_int')
    int? saturationAvgPercentageInt,
    @JsonKey(name: 'vo2max_mL_per_min_per_kg_int') int? vo2maxMLPerMinPerKgInt,
    // @JsonKey(name: 'saturation_granular_data_array')
    // List<dynamic>? saturationGranularDataArray,
    // @JsonKey(name: 'vo2_granular_data_array')
    // List<dynamic>? vo2GranularDataArray,
  }) = _Oxygenation;

  factory Oxygenation.fromJson(Map<String, dynamic> json) =>
      _$OxygenationFromJson(json);
}
