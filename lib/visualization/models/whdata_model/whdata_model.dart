import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'pagination.dart';

part 'whdata_model.freezed.dart';
part 'whdata_model.g.dart';

@freezed
class WhdataModel with _$WhdataModel {
  factory WhdataModel({bool? success, Data? data, Pagination? pagination}) =
      _WhdataModel;

  factory WhdataModel.fromJson(Map<String, dynamic> json) =>
      _$WhdataModelFromJson(json);
}
