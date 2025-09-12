import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rook_impl/models/whdata_model/activity.dart';
import 'package:rook_impl/models/whdata_model/calories.dart';
import 'package:rook_impl/models/whdata_model/distance.dart';
import 'package:rook_impl/models/whdata_model/heart_rate.dart';
import 'package:rook_impl/models/whdata_model/metadata.dart';
import 'package:rook_impl/models/whdata_model/oxygenation.dart';
import 'package:rook_impl/models/whdata_model/stress.dart';

import 'physical_health.dart';

part 'physical_summary.freezed.dart';
part 'physical_summary.g.dart';

@freezed
class PhysicalSummary with _$PhysicalSummary {
  factory PhysicalSummary({
    @JsonKey(name: '_id') String? id,
    int? version,
    @JsonKey(name: 'activity') Activity? activity,
    @JsonKey(name: 'calories') Calories? calories,

    // make similar  for calories, distance, heart_rate oxygenation, stress, metadata, non_structured_data_array
    @JsonKey(name: 'distance') Distance? distance,
    @JsonKey(name: 'heart_rate') HeartRate? heartRate,
    @JsonKey(name: 'oxygenation') Oxygenation? oxygenation,
    @JsonKey(name: 'stress') Stress? stress,
    @JsonKey(name: 'metadata') Metadata? metadata,

    @JsonKey(name: '__v') int? v,
  }) = _PhysicalSummary;

  factory PhysicalSummary.fromJson(Map<String, dynamic> json) =>
      _$PhysicalSummaryFromJson(json);
}
