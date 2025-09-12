import 'dart:convert';
import 'package:flutter/foundation.dart';

T safeFromJson<T>(
  Map<String, dynamic> json,
  T Function(Map<String, dynamic>) builder,
) {
  try {
    return builder(json);
  } catch (e, s) {
    debugPrint('❌ JSON parse failed for $T');
    debugPrint('📄 JSON data: ${jsonEncode(json)}');
    debugPrint('⚠️ Error: $e');
    debugPrint('🪵 Stacktrace: $s');
    rethrow; // Let GetX or your controller catch it
  }
}
