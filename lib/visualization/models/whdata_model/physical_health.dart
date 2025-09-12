import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rook_impl/models/whdata_model/physical_summary.dart';

import 'summary.dart';

part 'physical_health.freezed.dart';
part 'physical_health.g.dart';

@freezed
class PhysicalHealth with _$PhysicalHealth {
  factory PhysicalHealth({Summary? summary}) = _PhysicalHealth;

  factory PhysicalHealth.fromJson(Map<String, dynamic> json) =>
      _$PhysicalHealthFromJson(json);
}
