// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_data_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataSummaryImpl _$$DataSummaryImplFromJson(Map<String, dynamic> json) =>
    _$DataSummaryImpl(
      totalDataTypes: (json['total_data_types'] as num?)?.toInt(),
      totalRecords: (json['total_records'] as num?)?.toInt(),
      dataStructuresFound: (json['data_structures_found'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      dateRange: json['date_range'] == null
          ? null
          : DateRange.fromJson(json['date_range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataSummaryImplToJson(_$DataSummaryImpl instance) =>
    <String, dynamic>{
      'total_data_types': instance.totalDataTypes,
      'total_records': instance.totalRecords,
      'data_structures_found': instance.dataStructuresFound,
      'date_range': instance.dateRange,
    };

_$DateRangeImpl _$$DateRangeImplFromJson(Map<String, dynamic> json) =>
    _$DateRangeImpl(
      earliest: (json['earliest'] as num?)?.toInt(),
      latest: (json['latest'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DateRangeImplToJson(_$DateRangeImpl instance) =>
    <String, dynamic>{'earliest': instance.earliest, 'latest': instance.latest};

_$AvailableDataTypesDataImpl _$$AvailableDataTypesDataImplFromJson(
  Map<String, dynamic> json,
) => _$AvailableDataTypesDataImpl(
  userId: json['user_id'] as String?,
  availableDataTypes: (json['available_data_types'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  summary: json['summary'] == null
      ? null
      : DataSummary.fromJson(json['summary'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AvailableDataTypesDataImplToJson(
  _$AvailableDataTypesDataImpl instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'available_data_types': instance.availableDataTypes,
  'summary': instance.summary,
};

_$AvailableDataTypesResponseImpl _$$AvailableDataTypesResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AvailableDataTypesResponseImpl(
  success: json['success'] as bool?,
  data: json['data'] == null
      ? null
      : AvailableDataTypesData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AvailableDataTypesResponseImplToJson(
  _$AvailableDataTypesResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
