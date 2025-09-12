import 'package:freezed_annotation/freezed_annotation.dart';

import 'events.dart';

part 'body_health.freezed.dart';
part 'body_health.g.dart';

@freezed
class BodyHealth with _$BodyHealth {
  factory BodyHealth({Events? events}) = _BodyHealth;

  factory BodyHealth.fromJson(Map<String, dynamic> json) =>
      _$BodyHealthFromJson(json);
}
