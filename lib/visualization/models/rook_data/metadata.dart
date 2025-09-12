import 'package:freezed_annotation/freezed_annotation.dart';

part 'metadata.freezed.dart';
part 'metadata.g.dart';

@freezed
class Metadata with _$Metadata {
  factory Metadata({
    @JsonKey(name: 'datetime_string') DateTime? datetimeString,
    @JsonKey(name: 'user_id_string') String? userIdString,
    @JsonKey(name: 'sources_of_data_array') List<String>? sourcesOfDataArray,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
