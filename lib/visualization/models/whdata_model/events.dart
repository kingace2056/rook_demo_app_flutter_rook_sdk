import 'package:freezed_annotation/freezed_annotation.dart';

import 'heart_rate_event.dart';

part 'events.freezed.dart';
part 'events.g.dart';

@freezed
class Events with _$Events {
  factory Events({
    @JsonKey(name: 'heart_rate_event') List<HeartRateEvent>? heartRateEvent,
  }) = _Events;

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);
}
