// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sleep_health.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SleepHealthImpl _$$SleepHealthImplFromJson(Map<String, dynamic> json) =>
    _$SleepHealthImpl(
      summary: json['summary'] == null
          ? null
          : Summary.fromJson(json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SleepHealthImplToJson(_$SleepHealthImpl instance) =>
    <String, dynamic>{'summary': instance.summary};
