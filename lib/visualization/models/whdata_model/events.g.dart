// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventsImpl _$$EventsImplFromJson(Map<String, dynamic> json) => _$EventsImpl(
      heartRateEvent: (json['heart_rate_event'] as List<dynamic>?)
          ?.map((e) => HeartRateEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EventsImplToJson(_$EventsImpl instance) =>
    <String, dynamic>{
      'heart_rate_event': instance.heartRateEvent,
    };
