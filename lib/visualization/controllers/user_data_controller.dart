import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:rook_sdk_demo_app_flutter/visualization/error_handlers/safe_json.dart';
import 'package:rook_sdk_demo_app_flutter/visualization/models/whdata_model/whdata_model.dart';
import 'package:rook_sdk_demo_app_flutter/visualization/services/storage_service.dart';
import 'package:rook_sdk_demo_app_flutter/visualization/services/user_data_service.dart';

class UserDataController extends GetxController {
  late final UserDataService _userDataService;

  // Observable variables
  final _isLoading = false.obs;
  final _userData = Rxn<WhdataModel>();
  final _errorMessage = ''.obs;

  @override
  void onReady() {
    super.onReady();
    // Initialize service after GetX is fully ready
    _userDataService = Get.find<UserDataService>();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    try {
      final savedUserId = StorageService.getSavedUserId();
      debugPrint(
        '🔄 Loading user data for saved user: $savedUserId',
      ); // Debug log

      if (savedUserId != null && savedUserId.isNotEmpty) {
        await fetchUserData(savedUserId);
      } else {
        debugPrint('⚠️ No saved user ID found'); // Debug log
      }
    } catch (e) {
      debugPrint('❌ Error loading initial user data: $e'); // Debug log
      _errorMessage.value = e.toString();
    }
  }

  // Getters
  bool get isLoading => _isLoading.value;
  WhdataModel? get userData => _userData.value;
  String get errorMessage => _errorMessage.value;

  Future<void> fetchUserData(String userId, [String? date]) async {
    try {
      _isLoading.value = true;
      _errorMessage.value = '';

      debugPrint('📡 Fetching user data for: $userId'); // Debug log

      final response = await _userDataService.getUserData(userId);
      debugPrint('✅ User data fetched successfully'); // Debug log
      debugPrint('📊 Response type: ${response.runtimeType}'); // Debug log
      debugPrint('📄 WH Response data: $response'); // Debug log

      if (response is Map<String, dynamic>) {
        _userData.value = safeFromJson(
          response,
          (j) => WhdataModel.fromJson(j),
        );
      } else {
        debugPrint(
          "❌ Expected Map<String, dynamic> but got ${response.runtimeType}",
        );
        debugPrint("📄 Response: $response");
        _errorMessage.value = "Invalid API response format";
      }
    } catch (e) {
      debugPrint('❌ Error fetching user data: $e'); // Debug log
      _errorMessage.value = e.toString().replaceFirst('Exception: ', '');
      _userData.value = null;
    } finally {
      _isLoading.value = false;
    }
  }

  // Clear data
  void clearData() {
    _userData.value = null;
    _errorMessage.value = '';
  }
}
