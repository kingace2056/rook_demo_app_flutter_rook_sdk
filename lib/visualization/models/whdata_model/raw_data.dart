import 'package:freezed_annotation/freezed_annotation.dart';

import 'body_health.dart';

part 'raw_data.freezed.dart';
part 'raw_data.g.dart';

@freezed
class RawData with _$RawData {
  factory RawData({
    int? version,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'document_version') int? documentVersion,
    @JsonKey(name: 'auto_detected') bool? autoDetected,
    @JsonKey(name: 'body_health') BodyHealth? bodyHealth,
  }) = _RawData;

  factory RawData.fromJson(Map<String, dynamic> json) =>
      _$RawDataFromJson(json);
}
