import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rook_impl/models/whdata_model/body_summary.dart';
import 'package:rook_impl/models/whdata_model/health_event.dart';
import 'package:rook_impl/models/whdata_model/health_score.dart';
import 'package:rook_impl/models/whdata_model/physical_summary.dart';
import 'package:rook_impl/models/whdata_model/raw_webhook.dart';
import 'package:rook_impl/models/whdata_model/sleep_summary.dart';

import 'data.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'total_records') int? totalRecords,
    @JsonKey(name: 'data') DataType? types,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

//DataTypes
@freezed
class DataType with _$DataType {
  factory DataType({
    @JsonKey(name: 'health_scores') List<HealthScore>? healthScores,
    @JsonKey(name: 'health_events') List<HealthEvent>? healthEvents,
    @JsonKey(name: 'body_summaries') List<BodySummary>? bodySummaries,
    @JsonKey(name: 'sleep_summaries') List<SleepSummary>? sleepSummaries,
    @JsonKey(name: 'physical_summaries')
    List<PhysicalSummary>? physicalSummaries,
    @JsonKey(name: 'raw_webhooks') List<RawWebhook>? rawWebhooks,
  }) = _DataType;
  factory DataType.fromJson(Map<String, dynamic> json) =>
      _$DataTypeFromJson(json);
}
