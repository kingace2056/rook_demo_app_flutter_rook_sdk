import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_data.dart';
import 'metadata.dart';

part 'health_event.freezed.dart';
part 'health_event.g.dart';

@freezed
class HealthEvent with _$HealthEvent {
  factory HealthEvent({
    @JsonKey(name: '_id') String? id,
    int? version,
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'document_version') int? documentVersion,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'auto_detected') bool? autoDetected,
    @JsonKey(name: 'event_type') String? eventType,
    @JsonKey(name: 'event_data') EventData? eventData,
    Metadata? metadata,
    @JsonKey(name: 'created_at') DateTime? createdAtRook,
    @JsonKey(name: 'webhook_received_at') DateTime? webhookReceivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  }) = _HealthEvent;

  factory HealthEvent.fromJson(Map<String, dynamic> json) =>
      _$HealthEventFromJson(json);
}
