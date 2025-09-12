// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl(
      datetimeString: json['datetime_string'] == null
          ? null
          : DateTime.parse(json['datetime_string'] as String),
      userIdString: json['user_id_string'] as String?,
      sourcesOfDataArray: (json['sources_of_data_array'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{
      'datetime_string': instance.datetimeString?.toIso8601String(),
      'user_id_string': instance.userIdString,
      'sources_of_data_array': instance.sourcesOfDataArray,
    };
