// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DateRangeImpl _$$DateRangeImplFromJson(Map<String, dynamic> json) =>
    _$DateRangeImpl(
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$$DateRangeImplToJson(_$DateRangeImpl instance) =>
    <String, dynamic>{
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
    };
