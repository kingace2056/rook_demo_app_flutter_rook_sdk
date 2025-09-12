// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_health.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyHealthImpl _$$BodyHealthImplFromJson(Map<String, dynamic> json) =>
    _$BodyHealthImpl(
      events: json['events'] == null
          ? null
          : Events.fromJson(json['events'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BodyHealthImplToJson(_$BodyHealthImpl instance) =>
    <String, dynamic>{'events': instance.events};
