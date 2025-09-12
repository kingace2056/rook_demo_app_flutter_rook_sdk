import 'package:freezed_annotation/freezed_annotation.dart';

import 'date_range.dart';

part 'filters.freezed.dart';
part 'filters.g.dart';

@freezed
class Filters with _$Filters {
  factory Filters({
    @JsonKey(name: 'client_uuid') String? clientUuid,
    @JsonKey(name: 'data_structure') String? dataStructure,
    @JsonKey(name: 'date_range') DateRange? dateRange,
  }) = _Filters;

  factory Filters.fromJson(Map<String, dynamic> json) =>
      _$FiltersFromJson(json);
}
