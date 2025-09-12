import 'package:freezed_annotation/freezed_annotation.dart';

part 'non_structured_data_array.freezed.dart';
part 'non_structured_data_array.g.dart';

@freezed
class NonStructuredDataArray with _$NonStructuredDataArray {
  factory NonStructuredDataArray({
    @JsonKey(name: 'source_of_data_string') String? sourceOfDataString,
    @JsonKey(name: 'time_zone') String? timeZone,
    @JsonKey(name: 'offset_time_zone') int? offsetTimeZone,
    @JsonKey(name: 'uuid_device') String? uuidDevice,
    @JsonKey(name: 'walking_speed') int? walkingSpeed,
    @JsonKey(name: 'walking_step_length') int? walkingStepLength,
  }) = _NonStructuredDataArray;

  factory NonStructuredDataArray.fromJson(Map<String, dynamic> json) =>
      _$NonStructuredDataArrayFromJson(json);
}
  // "non_structured_data_array": [
  //                 {
  //                   "offset_time_zone": 5,
  //                   "source_of_data_string": "Apple Health",
  //                   "time_zone": "Asia/Kathmandu",
  //                   "uuid_device": "987A82C2-8629-4E9B-9D1E-A67DBD5177AD",
  //                   "walking_speed": 4,
  //                   "walking_step_length": 63
  //                 }
  //               ]