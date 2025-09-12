// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventDataImpl _$$EventDataImplFromJson(Map<String, dynamic> json) =>
    _$EventDataImpl(
      heartRateEvent: (json['heart_rate_event'] as List<dynamic>?)
          ?.map((e) => HeartRateEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EventDataImplToJson(_$EventDataImpl instance) =>
    <String, dynamic>{
      'heart_rate_event': instance.heartRateEvent,
    };
