import 'package:get/get.dart';
import '../services/sleep_api_service.dart';
import '../models/available_data_types.dart';

class HomeController extends GetxController {
  final SleepApiService _apiService = Get.find<SleepApiService>();

  // Observable variables
  final _isLoading = false.obs;
  final _availableDataTypes = Rxn<AvailableDataTypesResponse>();
  final _errorMessage = ''.obs;

  // Getters
  bool get isLoading => _isLoading.value;
  AvailableDataTypesResponse? get availableDataTypes =>
      _availableDataTypes.value;
  String get errorMessage => _errorMessage.value;

  // Get list of available data types
  List<String> get dataTypesList =>
      availableDataTypes?.data?.availableDataTypes ?? [];

  // Check if a specific data type is available
  bool hasDataType(String dataType) {
    return dataTypesList.contains(dataType);
  }

  // Get count of available data types
  int get dataTypesCount => dataTypesList.length;

  // Fetch available data types for a user
  Future<void> fetchAvailableDataTypes(
    String userId, {
    String? clientUuid,
  }) async {
    try {
      _isLoading.value = true;
      _errorMessage.value = '';

      final response = await _apiService.getAvailableDataTypes(
        userId,
        clientUuid: clientUuid,
      );

      _availableDataTypes.value = response;
    } catch (e) {
      _errorMessage.value = e.toString();
      _availableDataTypes.value = null;
    } finally {
      _isLoading.value = false;
    }
  }

  // Clear data
  void clearData() {
    _availableDataTypes.value = null;
    _errorMessage.value = '';
  }

  // Get formatted display names for data types
  String getDisplayName(String dataType) {
    switch (dataType) {
      case 'sleep_quality_score':
        return 'Sleep Quality Score';
      case 'sleep_efficiency_score':
        return 'Sleep Efficiency Score';
      case 'sleep_duration':
        return 'Sleep Duration';
      case 'time_in_bed':
        return 'Time in Bed';
      case 'deep_sleep_duration':
        return 'Deep Sleep Duration';
      case 'rem_sleep_duration':
        return 'REM Sleep Duration';
      case 'light_sleep_duration':
        return 'Light Sleep Duration';
      case 'avg_heart_rate_sleep':
        return 'Average Heart Rate (Sleep)';
      case 'avg_hrv_rmssd':
        return 'Average HRV RMSSD';
      case 'physical_events':
        return 'Physical Events';
      case 'calories_burned':
        return 'Calories Burned';
      case 'steps_count':
        return 'Steps Count';
      case 'distance_meters':
        return 'Distance (Meters)';
      case 'active_duration':
        return 'Active Duration';
      case 'weight':
        return 'Weight';
      case 'body_fat_percentage':
        return 'Body Fat Percentage';
      case 'muscle_mass':
        return 'Muscle Mass';
      case 'hydration_percentage':
        return 'Hydration Percentage';
      case 'heart_rate_events':
        return 'Heart Rate Events';
      case 'nutrition_events':
        return 'Nutrition Events';
      default:
        return dataType
            .replaceAll('_', ' ')
            .split(' ')
            .map((word) => word[0].toUpperCase() + word.substring(1))
            .join(' ');
    }
  }

  // Get icon for data type
  String getDataTypeIcon(String dataType) {
    if (dataType.contains('sleep')) return '😴';
    if (dataType.contains('heart')) return '❤️';
    if (dataType.contains('steps') || dataType.contains('distance'))
      return '👟';
    if (dataType.contains('calories')) return '🔥';
    if (dataType.contains('weight') || dataType.contains('body')) return '⚖️';
    if (dataType.contains('nutrition')) return '🍎';
    if (dataType.contains('hydration')) return '💧';
    if (dataType.contains('physical') || dataType.contains('active'))
      return '🏃‍♂️';
    return '📊';
  }
}
