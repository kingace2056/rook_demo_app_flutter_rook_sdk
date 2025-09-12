import 'package:freezed_annotation/freezed_annotation.dart';

part 'hydration.freezed.dart';
part 'hydration.g.dart';

@freezed
class Hydration with _$Hydration {
  factory Hydration({
    @JsonKey(name: 'water_total_consumption_mL_int')
    int? waterTotalConsumptionMLInt,
    // @JsonKey(name: 'hydration_amount_granular_data_array')
    // List<dynamic>? hydrationAmountGranularDataArray,
    // @JsonKey(name: 'hydration_level_granular_data_array')
    // List<dynamic>? hydrationLevelGranularDataArray,
  }) = _Hydration;

  factory Hydration.fromJson(Map<String, dynamic> json) =>
      _$HydrationFromJson(json);
}
