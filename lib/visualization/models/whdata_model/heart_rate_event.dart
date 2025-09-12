import 'package:freezed_annotation/freezed_annotation.dart';

import 'heart_rate.dart';
import 'metadata.dart';
import 'non_structured_data_array.dart';

part 'heart_rate_event.freezed.dart';
part 'heart_rate_event.g.dart';

@freezed
class HeartRateEvent with _$HeartRateEvent {
  factory HeartRateEvent({
    Metadata? metadata,
    @JsonKey(name: 'heart_rate') HeartRate? heartRate,
    @JsonKey(name: 'non_structured_data_array')
    List<NonStructuredDataArray>? nonStructuredDataArray,
  }) = _HeartRateEvent;

  factory HeartRateEvent.fromJson(Map<String, dynamic> json) =>
      _$HeartRateEventFromJson(json);
}
