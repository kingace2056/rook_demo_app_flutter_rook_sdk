import 'package:freezed_annotation/freezed_annotation.dart';

import 'raw_data.dart';

part 'raw_webhook.freezed.dart';
part 'raw_webhook.g.dart';

@freezed
class RawWebhook with _$RawWebhook {
  factory RawWebhook({
    @JsonKey(name: '_id') String? id,
    int? version,
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'document_version') int? documentVersion,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'raw_data') RawData? rawData,
    bool? processed,
    @JsonKey(name: 'created_at') DateTime? createdAtRook,
    @JsonKey(name: 'webhook_received_at') DateTime? webhookReceivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  }) = _RawWebhook;

  factory RawWebhook.fromJson(Map<String, dynamic> json) =>
      _$RawWebhookFromJson(json);
}
