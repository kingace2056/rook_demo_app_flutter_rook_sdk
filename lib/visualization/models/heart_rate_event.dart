import 'package:freezed_annotation/freezed_annotation.dart';

part 'heart_rate_event.freezed.dart';
part 'heart_rate_event.g.dart';

@freezed
class HeartRateEvent with _$HeartRateEvent {
  const factory HeartRateEvent({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'version') int? version,
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'document_version') int? documentVersion,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'auto_detected') bool? autoDetected,
    @JsonKey(name: 'event_type') String? eventType,
    @JsonKey(name: 'event_data') HeartRateEventData? eventData,
    @JsonKey(name: 'metadata') HeartRateMetadata? metadata,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'webhook_received_at') DateTime? webhookReceivedAt,
    @JsonKey(name: 'createdAt') DateTime? createdAtTimestamp,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
  }) = _HeartRateEvent;

  factory HeartRateEvent.fromJson(Map<String, dynamic> json) =>
      _$HeartRateEventFromJson(json);
}

@freezed
class HeartRateEventData with _$HeartRateEventData {
  const factory HeartRateEventData({
    @JsonKey(name: 'heart_rate_event')
    List<HeartRateEventDetail>? heartRateEvent,
  }) = _HeartRateEventData;

  factory HeartRateEventData.fromJson(Map<String, dynamic> json) =>
      _$HeartRateEventDataFromJson(json);
}

@freezed
class HeartRateEventDetail with _$HeartRateEventDetail {
  const factory HeartRateEventDetail({
    @JsonKey(name: 'metadata') HeartRateMetadata? metadata,
    @JsonKey(name: 'heart_rate') HeartRateData? heartRate,
    @JsonKey(name: 'non_structured_data_array')
    List<NonStructuredData>? nonStructuredDataArray,
  }) = _HeartRateEventDetail;

  factory HeartRateEventDetail.fromJson(Map<String, dynamic> json) =>
      _$HeartRateEventDetailFromJson(json);
}

@freezed
class HeartRateData with _$HeartRateData {
  const factory HeartRateData({
    @JsonKey(name: 'hr_maximum_bpm_int') int? hrMaximumBpm,
    @JsonKey(name: 'hr_minimum_bpm_int') int? hrMinimumBpm,
    @JsonKey(name: 'hr_avg_bpm_int') int? hrAvgBpm,
    @JsonKey(name: 'hr_resting_bpm_int') int? hrRestingBpm,
    @JsonKey(name: 'hrv_avg_rmssd_float') double? hrvAvgRmssd,
    @JsonKey(name: 'hrv_avg_sdnn_float') double? hrvAvgSdnn,
    @JsonKey(name: 'hr_granular_data_array')
    List<HeartRateGranularData>? hrGranularDataArray,
    @JsonKey(name: 'hrv_sdnn_granular_data_array')
    List<dynamic>? hrvSdnnGranularDataArray,
    @JsonKey(name: 'hrv_rmssd_granular_data_array')
    List<dynamic>? hrvRmssdGranularDataArray,
  }) = _HeartRateData;

  factory HeartRateData.fromJson(Map<String, dynamic> json) =>
      _$HeartRateDataFromJson(json);
}

@freezed
class HeartRateGranularData with _$HeartRateGranularData {
  const factory HeartRateGranularData({
    @JsonKey(name: 'hr_bpm_int') int? hrBpm,
    @JsonKey(name: 'datetime_string') String? datetimeString,
    @JsonKey(name: 'interval_duration_seconds_float')
    double? intervalDurationSeconds,
    @JsonKey(name: 'source_of_data_string') String? sourceOfData,
  }) = _HeartRateGranularData;

  factory HeartRateGranularData.fromJson(Map<String, dynamic> json) =>
      _$HeartRateGranularDataFromJson(json);
}

@freezed
class HeartRateMetadata with _$HeartRateMetadata {
  const factory HeartRateMetadata({
    @JsonKey(name: 'datetime_string') String? datetimeString,
    @JsonKey(name: 'user_id_string') String? userIdString,
    @JsonKey(name: 'sources_of_data_array') List<String>? sourcesOfDataArray,
    @JsonKey(name: 'was_the_user_under_physical_activity_bool')
    bool? wasUserUnderPhysicalActivity,
  }) = _HeartRateMetadata;

  factory HeartRateMetadata.fromJson(Map<String, dynamic> json) =>
      _$HeartRateMetadataFromJson(json);
}

@freezed
class NonStructuredData with _$NonStructuredData {
  const factory NonStructuredData({
    @JsonKey(name: 'source_of_data_string') String? sourceOfData,
  }) = _NonStructuredData;

  factory NonStructuredData.fromJson(Map<String, dynamic> json) =>
      _$NonStructuredDataFromJson(json);
}
