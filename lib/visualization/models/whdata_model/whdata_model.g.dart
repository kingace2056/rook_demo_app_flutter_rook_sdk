// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whdata_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WhdataModelImpl _$$WhdataModelImplFromJson(Map<String, dynamic> json) =>
    _$WhdataModelImpl(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WhdataModelImplToJson(_$WhdataModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'pagination': instance.pagination,
    };
