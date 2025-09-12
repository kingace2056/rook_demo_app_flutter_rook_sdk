import 'package:freezed_annotation/freezed_annotation.dart';

import 'body_health.dart';

part 'body_summary.freezed.dart';
part 'body_summary.g.dart';

@freezed
class BodySummary with _$BodySummary {
  factory BodySummary({
    @JsonKey(name: '_id') String? id,
    int? version,
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'document_version') int? documentVersion,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'body_health') BodyHealth? bodyHealth,
    @JsonKey(name: 'created_at') DateTime? createdAtRook,
    @JsonKey(name: 'webhook_received_at') DateTime? webhookReceivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  }) = _BodySummary;

  factory BodySummary.fromJson(Map<String, dynamic> json) =>
      _$BodySummaryFromJson(json);
}
