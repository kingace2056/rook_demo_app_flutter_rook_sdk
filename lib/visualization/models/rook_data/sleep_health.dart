import 'package:freezed_annotation/freezed_annotation.dart';

import 'summary.dart';

part 'sleep_health.freezed.dart';
part 'sleep_health.g.dart';

@freezed
class SleepHealth with _$SleepHealth {
  factory SleepHealth({Summary? summary}) = _SleepHealth;

  factory SleepHealth.fromJson(Map<String, dynamic> json) =>
      _$SleepHealthFromJson(json);
}
