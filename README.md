# Rook SDK demo app flutter

Demo app for ROOK SDK packages:

* [rook_sdk_core](https://pub.dev/packages/rook_sdk_core)
* [rook_sdk_apple_health](https://pub.dev/packages/rook_sdk_apple_health)
* [rook_sdk_health_connect](https://pub.dev/packages/rook_sdk_health_connect)

## Configure & Run

In the lib folder create a secrets.dart file with a Secrets class and add the following
   constants:

```dart
class Secrets {
  static String clientUUID = 'clientUUID';
  static String secretKey = 'secretKey';
}
```

Run `flutter pub get`

In the ios folder, ensure that your Podfile is targeted to ios 13+ (`platform :ios, '13.0'`)

In the ios folder, run `pod install`

If you want to test `rookYesterdaySync` open the android folder as an Android Studio project, then
in the **MainActivity** file inside the app module uncomment the `rookYesterdaySync` declaration and
the `enable` function.

```kotlin
class MainActivity : FlutterActivity() {

//    private val rookYesterdaySync by rookYesterdaySync(
//        enableLogs = isDebug,
//        clientUUID = REPLACE_WITH_YOUR_CLIENT_UUID,
//        secretKey = REPLACE_WITH_YOUR_SECRET_KEY,
//        environment = rookEnvironment,
//    )

    override fun onCreate(savedInstanceState: Bundle?) {
        // Must be before super.onCreate(savedInstanceState)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
//            rookYesterdaySync.enable(this)
        }

        super.onCreate(savedInstanceState)
    }
}
```

> [!IMPORTANT]  
> Don't forget to also add your credentials
