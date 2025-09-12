// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FiltersImpl _$$FiltersImplFromJson(Map<String, dynamic> json) =>
    _$FiltersImpl(
      clientUuid: json['client_uuid'] as String?,
      dataStructure: json['data_structure'] as String?,
      dateRange: json['date_range'] == null
          ? null
          : DateRange.fromJson(json['date_range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FiltersImplToJson(_$FiltersImpl instance) =>
    <String, dynamic>{
      'client_uuid': instance.clientUuid,
      'data_structure': instance.dataStructure,
      'date_range': instance.dateRange,
    };
