import 'package:get/get.dart';
import '../core/constants/api_constants.dart';
import '../core/network/dio_client.dart';
import '../models/rook_data/rook_data.dart';
import '../models/available_data_types.dart';

class SleepApiService extends GetxService {
  late final DioClient _dioClient;

  @override
  void onInit() {
    super.onInit();
    _dioClient = Get.find<DioClient>();
  }

  /// Get sleep summary for a specific user
  Future<RookData> getSleepSummary(
    String userId, {
    int limit = 10,
    int skip = 0,
    String? clientUuid,
    String? startDate,
    String? endDate,
  }) async {
    try {
      final queryParams = <String, dynamic>{'limit': limit, 'skip': skip};

      if (clientUuid != null) queryParams['client_uuid'] = clientUuid;
      if (startDate != null) queryParams['start_date'] = startDate;
      if (endDate != null) queryParams['end_date'] = endDate;

      final response = await _dioClient.dioInstance.get(
        ApiConstants.sleepSummary(userId),
        queryParameters: queryParams,
      );

      return RookData.fromJson(response.data);
    } catch (error) {
      throw Exception('Failed to fetch sleep summary: $error');
    }
  }

  /// Get available data types for a specific user
  Future<AvailableDataTypesResponse> getAvailableDataTypes(
    String userId, {
    String? clientUuid,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (clientUuid != null) queryParams['client_uuid'] = clientUuid;

      final response = await _dioClient.dioInstance.get(
        ApiConstants.userAvailableDataTypes(userId),
        queryParameters: queryParams,
      );

      return AvailableDataTypesResponse.fromJson(response.data);
    } catch (error) {
      throw Exception('Failed to fetch available data types: $error');
    }
  }

  /// Get all user data with filters
  Future<RookData> getUserData(
    String userId, {
    int limit = 50,
    int skip = 0,
    String? clientUuid,
    String? dataStructure,
    String? startDate,
    String? endDate,
  }) async {
    try {
      final queryParams = <String, dynamic>{'limit': limit, 'skip': skip};

      if (clientUuid != null) queryParams['client_uuid'] = clientUuid;
      if (dataStructure != null) queryParams['data_structure'] = dataStructure;
      if (startDate != null) queryParams['start_date'] = startDate;
      if (endDate != null) queryParams['end_date'] = endDate;

      final response = await _dioClient.get(
        ApiConstants.userData(userId),
        queryParameters: queryParams,
      );

      return RookData.fromJson(response.data);
    } catch (error) {
      throw Exception('Failed to fetch user data: $error');
    }
  }

  /// Get physical summary for a specific user
  Future<RookData> getPhysicalSummary(
    String userId, {
    int limit = 10,
    int skip = 0,
    String? clientUuid,
    String? startDate,
    String? endDate,
  }) async {
    try {
      final queryParams = <String, dynamic>{'limit': limit, 'skip': skip};

      if (clientUuid != null) queryParams['client_uuid'] = clientUuid;
      if (startDate != null) queryParams['start_date'] = startDate;
      if (endDate != null) queryParams['end_date'] = endDate;

      final response = await _dioClient.get(
        ApiConstants.physicalSummary(userId),
        queryParameters: queryParams,
      );

      return RookData.fromJson(response.data);
    } catch (error) {
      throw Exception('Failed to fetch physical summary: $error');
    }
  }

  /// Get body summary for a specific user
  Future<RookData> getBodySummary(
    String userId, {
    int limit = 10,
    int skip = 0,
    String? clientUuid,
    String? startDate,
    String? endDate,
  }) async {
    try {
      final queryParams = <String, dynamic>{'limit': limit, 'skip': skip};

      if (clientUuid != null) queryParams['client_uuid'] = clientUuid;
      if (startDate != null) queryParams['start_date'] = startDate;
      if (endDate != null) queryParams['end_date'] = endDate;

      final response = await _dioClient.get(
        ApiConstants.bodySummary(userId),
        queryParameters: queryParams,
      );

      return RookData.fromJson(response.data);
    } catch (error) {
      throw Exception('Failed to fetch body summary: $error');
    }
  }

  /// Get events for a specific user
  Future<RookData> getEvents(
    String userId, {
    int limit = 50,
    int skip = 0,
    String? clientUuid,
    String? eventType,
    String? startDate,
    String? endDate,
  }) async {
    try {
      final queryParams = <String, dynamic>{'limit': limit, 'skip': skip};

      if (clientUuid != null) queryParams['client_uuid'] = clientUuid;
      if (eventType != null) queryParams['event_type'] = eventType;
      if (startDate != null) queryParams['start_date'] = startDate;
      if (endDate != null) queryParams['end_date'] = endDate;

      final response = await _dioClient.get(
        ApiConstants.userEvents(userId),
        queryParameters: queryParams,
      );

      return RookData.fromJson(response.data);
    } catch (error) {
      throw Exception('Failed to fetch events: $error');
    }
  }

  /// Get user summary
  Future<RookData> getSummary(
    String userId, {
    int limit = 10,
    int skip = 0,
    String? clientUuid,
    String? summaryType,
    String? startDate,
    String? endDate,
  }) async {
    try {
      final queryParams = <String, dynamic>{'limit': limit, 'skip': skip};

      if (clientUuid != null) queryParams['client_uuid'] = clientUuid;
      if (summaryType != null) queryParams['summary_type'] = summaryType;
      if (startDate != null) queryParams['start_date'] = startDate;
      if (endDate != null) queryParams['end_date'] = endDate;

      final response = await _dioClient.get(
        ApiConstants.userSummary(userId),
        queryParameters: queryParams,
      );

      return RookData.fromJson(response.data);
    } catch (error) {
      throw Exception('Failed to fetch summary: $error');
    }
  }
}
