import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_range.freezed.dart';
part 'date_range.g.dart';

@freezed
class DateRange with _$DateRange {
  factory DateRange({
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
  }) = _DateRange;

  factory DateRange.fromJson(Map<String, dynamic> json) =>
      _$DateRangeFromJson(json);
}
