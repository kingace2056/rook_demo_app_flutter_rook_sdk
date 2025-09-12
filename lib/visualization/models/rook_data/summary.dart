import 'package:freezed_annotation/freezed_annotation.dart';

import 'sleep_summary.dart';

part 'summary.freezed.dart';
part 'summary.g.dart';

@freezed
class Summary with _$Summary {
  factory Summary({
    @JsonKey(name: 'sleep_summary') SleepSummaryData? sleepSummary,
  }) = _Summary;

  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);
}
