import 'package:freezed_annotation/freezed_annotation.dart';

import 'sleep_health.dart';

part 'sleep_summary.freezed.dart';
part 'sleep_summary.g.dart';

@freezed
class SleepSummary with _$SleepSummary {
  factory SleepSummary({
    @JsonKey(name: '_id') String? id,
    int? version,
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'document_version') int? documentVersion,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'sleep_health') SleepHealth? sleepHealth,
    @JsonKey(name: 'created_at') DateTime? createdAtRook,
    @JsonKey(name: 'webhook_received_at') DateTime? webhookReceivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  }) = _SleepSummary;

  factory SleepSummary.fromJson(Map<String, dynamic> json) =>
      _$SleepSummaryFromJson(json);
}
