import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rook_sdk_demo_app_flutter/visualization/models/rook_data/sleep_summary.dart';

import 'physical_summary.dart';

part 'summary.freezed.dart';
part 'summary.g.dart';

@freezed
class Summary with _$Summary {
  factory Summary({
    @JsonKey(name: 'physical_summary') PhysicalSummary? physicalSummary,
    @JsonKey(name: 'sleep_summary') SleepSummaryData? sleepSummary,
  }) = _Summary;

  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);
}
