import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_data_types.freezed.dart';
part 'available_data_types.g.dart';

@freezed
class DataSummary with _$DataSummary {
  const factory DataSummary({
    @JsonKey(name: 'total_data_types') int? totalDataTypes,
    @JsonKey(name: 'total_records') int? totalRecords,
    @JsonKey(name: 'data_structures_found') List<String>? dataStructuresFound,
    @JsonKey(name: 'date_range') DateRange? dateRange,
  }) = _DataSummary;

  factory DataSummary.fromJson(Map<String, dynamic> json) =>
      _$DataSummaryFromJson(json);
}

@freezed
class DateRange with _$DateRange {
  const factory DateRange({int? earliest, int? latest}) = _DateRange;

  factory DateRange.fromJson(Map<String, dynamic> json) =>
      _$DateRangeFromJson(json);
}

@freezed
class AvailableDataTypesData with _$AvailableDataTypesData {
  const factory AvailableDataTypesData({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'available_data_types') List<String>? availableDataTypes,
    DataSummary? summary,
  }) = _AvailableDataTypesData;

  factory AvailableDataTypesData.fromJson(Map<String, dynamic> json) =>
      _$AvailableDataTypesDataFromJson(json);
}

@freezed
class AvailableDataTypesResponse with _$AvailableDataTypesResponse {
  const factory AvailableDataTypesResponse({
    bool? success,
    AvailableDataTypesData? data,
  }) = _AvailableDataTypesResponse;

  factory AvailableDataTypesResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailableDataTypesResponseFromJson(json);
}
