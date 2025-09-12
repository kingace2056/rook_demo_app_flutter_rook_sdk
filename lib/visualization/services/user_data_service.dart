import 'package:get/get.dart';
import 'package:rook_sdk_demo_app_flutter/visualization/core/constants/api_constants.dart';
import 'package:rook_sdk_demo_app_flutter/visualization/core/network/dio_client.dart';

class UserDataService extends GetxService {
  late final DioClient _dioClient;

  @override
  void onInit() {
    super.onInit();
    _dioClient = Get.find<DioClient>();
  }

  Future<dynamic> getUserData(String userId) async {
    try {
      // Construct the proper endpoint URL
      final endpoint = ApiConstants.allUserData(userId);

      print('📡 Making API call to: $endpoint'); // Debug log

      final response = await _dioClient.dioInstance.get(endpoint);

      print('✅ API response status: ${response.statusCode}'); // Debug log
      print('📊 Response data type: ${response.data.runtimeType}'); // Debug log

      return response.data;
    } catch (error) {
      print('❌ API call failed: $error'); // Debug log
      throw Exception('Failed to fetch user data: $error');
    }
  }
}
