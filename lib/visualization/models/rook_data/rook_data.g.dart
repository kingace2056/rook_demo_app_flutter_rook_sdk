// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rook_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RookDataImpl _$$RookDataImplFromJson(Map<String, dynamic> json) =>
    _$RookDataImpl(
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RookDataImplToJson(_$RookDataImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'meta': instance.meta,
    };
