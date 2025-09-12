import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';
import 'meta.dart';

part 'rook_data.freezed.dart';
part 'rook_data.g.dart';

@freezed
class RookData with _$RookData {
  factory RookData({bool? success, List<Datum>? data, Meta? meta}) = _RookData;

  factory RookData.fromJson(Map<String, dynamic> json) =>
      _$RookDataFromJson(json);
}
