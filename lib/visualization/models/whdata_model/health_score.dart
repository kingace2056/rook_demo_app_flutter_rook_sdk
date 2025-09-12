import 'package:freezed_annotation/freezed_annotation.dart';

import 'health_score_data.dart';

part 'health_score.freezed.dart';
part 'health_score.g.dart';

@freezed
class HealthScore with _$HealthScore {
  factory HealthScore({
    @JsonKey(name: '_id') String? id,
    int? version,
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'document_version') int? documentVersion,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'health_score_data') HealthScoreData? healthScoreData,
    @JsonKey(name: 'created_at') DateTime? createdAtRook,
    @JsonKey(name: 'webhook_received_at') DateTime? webhookReceivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  }) = _HealthScore;

  factory HealthScore.fromJson(Map<String, dynamic> json) =>
      _$HealthScoreFromJson(json);
}
