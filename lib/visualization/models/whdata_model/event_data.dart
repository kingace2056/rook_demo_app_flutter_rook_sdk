import 'package:freezed_annotation/freezed_annotation.dart';

import 'heart_rate_event.dart';

part 'event_data.freezed.dart';
part 'event_data.g.dart';

@freezed
class EventData with _$EventData {
  factory EventData({
    @JsonKey(name: 'heart_rate_event') List<HeartRateEvent>? heartRateEvent,
  }) = _EventData;

  factory EventData.fromJson(Map<String, dynamic> json) =>
      _$EventDataFromJson(json);
}
