package io.tryrook.rook_sdk_demo_app_flutter

import android.os.Build
import android.os.Bundle
import com.rookmotion.rook.sdk.domain.delegate.rookYesterdaySync
import com.rookmotion.rook.sdk.domain.environment.RookEnvironment
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {

    private val rookYesterdaySync by rookYesterdaySync(
        enableLogs = true,
        ignoreConfigChange = true,
        clientUUID = "CLIENT_UUID",
        secretKey = "SECRET_KEY",
        environment = RookEnvironment.SANDBOX,
    )

    override fun onCreate(savedInstanceState: Bundle?) {
        // Must be before super.onCreate(savedInstanceState)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            // Set your credentials above before uncommenting this
//            rookYesterdaySync.enable(this)
        }

        super.onCreate(savedInstanceState)
    }
}
