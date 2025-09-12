// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SummaryImpl _$$SummaryImplFromJson(Map<String, dynamic> json) =>
    _$SummaryImpl(
      sleepSummary: json['sleep_summary'] == null
          ? null
          : SleepSummaryData.fromJson(
              json['sleep_summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SummaryImplToJson(_$SummaryImpl instance) =>
    <String, dynamic>{
      'sleep_summary': instance.sleepSummary,
    };
