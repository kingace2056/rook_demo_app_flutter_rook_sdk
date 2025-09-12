import 'package:freezed_annotation/freezed_annotation.dart';

import 'filters.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
class Meta with _$Meta {
  factory Meta({
    @JsonKey(name: 'user_id') String? userId,
    int? total,
    int? returned,
    int? limit,
    int? skip,
    Filters? filters,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
