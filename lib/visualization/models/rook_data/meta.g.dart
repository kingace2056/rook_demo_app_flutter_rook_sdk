// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
  userId: json['user_id'] as String?,
  total: (json['total'] as num?)?.toInt(),
  returned: (json['returned'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  skip: (json['skip'] as num?)?.toInt(),
  filters: json['filters'] == null
      ? null
      : Filters.fromJson(json['filters'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'total': instance.total,
      'returned': instance.returned,
      'limit': instance.limit,
      'skip': instance.skip,
      'filters': instance.filters,
    };
