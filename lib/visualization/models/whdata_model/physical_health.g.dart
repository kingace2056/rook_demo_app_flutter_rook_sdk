// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'physical_health.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhysicalHealthImpl _$$PhysicalHealthImplFromJson(Map<String, dynamic> json) =>
    _$PhysicalHealthImpl(
      summary: json['summary'] == null
          ? null
          : Summary.fromJson(json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PhysicalHealthImplToJson(
  _$PhysicalHealthImpl instance,
) => <String, dynamic>{'summary': instance.summary};
