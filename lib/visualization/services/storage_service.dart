import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String _userIdKey = 'user_id';
  static const String _lastCheckedUserIdKey = 'last_checked_user_id';

  static SharedPreferences? _prefs;

  // Initialize shared preferences
  static Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  // Save user ID
  static Future<void> saveUserId(String userId) async {
    await _prefs?.setString(_userIdKey, userId);
  }

  // Get saved user ID
  static String? getSavedUserId() {
    return _prefs?.getString(_userIdKey);
  }

  // Save last checked user ID
  static Future<void> saveLastCheckedUserId(String userId) async {
    await _prefs?.setString(_lastCheckedUserIdKey, userId);
  }

  // Get last checked user ID
  static String? getLastCheckedUserId() {
    return _prefs?.getString(_lastCheckedUserIdKey);
  }

  // Clear all stored data
  static Future<void> clearAll() async {
    await _prefs?.clear();
  }

  // Remove specific user ID
  static Future<void> removeUserId() async {
    await _prefs?.remove(_userIdKey);
  }
}
