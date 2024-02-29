import 'package:flutter/foundation.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

const rookEnvironment =
    kDebugMode ? RookEnvironment.sandbox : RookEnvironment.production;
const isDebug = kDebugMode;
