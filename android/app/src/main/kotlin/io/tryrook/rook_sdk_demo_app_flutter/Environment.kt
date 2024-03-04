package io.tryrook.rook_sdk_demo_app_flutter

import com.rookmotion.rook.sdk.domain.environment.RookEnvironment

val rookEnvironment = if (BuildConfig.DEBUG) RookEnvironment.SANDBOX
else RookEnvironment.PRODUCTION

val isDebug = BuildConfig.DEBUG
