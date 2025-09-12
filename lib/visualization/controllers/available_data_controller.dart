import 'package:get/get.dart';
import '../services/sleep_api_service.dart';
import '../services/storage_service.dart';

class AvailableDataController extends GetxController {
  final SleepApiService _apiService = Get.find<SleepApiService>();

  // Observable variables
  final _isLoading = false.obs;
  final _availableDataTypes = <String>[].obs;
  final _errorMessage = ''.obs;
  final _lastCheckedUserId = ''.obs;
  final _savedUserId = ''.obs;

  // Getters
  bool get isLoading => _isLoading.value;
  List<String> get availableDataTypes => _availableDataTypes;
  String get errorMessage => _errorMessage.value;
  String get lastCheckedUserId => _lastCheckedUserId.value;
  String get savedUserId => _savedUserId.value;

  @override
  void onInit() {
    super.onInit();
    _loadSavedUserId();
  }

  // Load saved user ID from shared preferences
  void _loadSavedUserId() {
    final userId = StorageService.getSavedUserId();
    if (userId != null && userId.isNotEmpty) {
      _savedUserId.value = userId;
      // Automatically fetch data for saved user ID
      fetchAvailableDataTypes(userId);
    }
  }

  // Save user ID to shared preferences
  Future<void> saveUserId(String userId) async {
    await StorageService.saveUserId(userId);
    _savedUserId.value = userId;
  }

  // Check if a specific data type is available
  bool hasDataType(String dataType) {
    return _availableDataTypes.contains(dataType);
  }

  // Get user-friendly names for data types
  String getDataTypeDisplayName(String dataType) {
    switch (dataType) {
      case 'sleep_summary':
        return 'Sleep Summary';
      case 'activity_summary':
        return 'Activity Summary';
      case 'body_summary':
        return 'Body Summary';
      case 'heart_rate':
        return 'Heart Rate';
      case 'calories':
        return 'Calories';
      case 'steps':
        return 'Steps';
      case 'temperature':
        return 'Temperature';
      case 'breathing':
        return 'Breathing';
      case 'sleep_scores':
        return 'Sleep Scores';
      case 'sleep_duration':
        return 'Sleep Duration';
      case 'workout':
        return 'Workout';
      case 'nutrition':
        return 'Nutrition';
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
    switch (dataType) {
      case 'sleep_summary':
      case 'sleep_scores':
      case 'sleep_duration':
        return '🛌';
      case 'activity_summary':
      case 'steps':
        return '🏃';
      case 'body_summary':
        return '⚖️';
      case 'heart_rate':
        return '❤️';
      case 'calories':
        return '🔥';
      case 'temperature':
        return '🌡️';
      case 'breathing':
        return '🫁';
      case 'workout':
        return '💪';
      case 'nutrition':
        return '🍎';
      default:
        return '📊';
    }
  }

  // Fetch available data types for a user
  Future<void> fetchAvailableDataTypes(String userId) async {
    if (userId.isEmpty) {
      _errorMessage.value = 'User ID cannot be empty';
      return;
    }

    try {
      _isLoading.value = true;
      _errorMessage.value = '';

      print('🔄 Fetching data for user: $userId'); // Debug log

      final response = await _apiService.getAvailableDataTypes(userId);

      print('📦 Response received: ${response.success}'); // Debug log
      print(
        '📊 Data: ${response.data?.availableDataTypes?.length ?? 0} types',
      ); // Debug log

      // Handle optional fields safely
      final availableDataTypes = response.data?.availableDataTypes ?? [];
      _availableDataTypes.assignAll(availableDataTypes);
      _lastCheckedUserId.value = userId;

      print('✅ Available data types: $availableDataTypes'); // Debug log

      // Save the user ID if it's different from the saved one
      if (_savedUserId.value != userId) {
        await saveUserId(userId);
      }
    } catch (e) {
      print('❌ Error fetching data types: $e'); // Debug log
      _errorMessage.value = e.toString().replaceFirst('Exception: ', '');
      _availableDataTypes.clear();
    } finally {
      _isLoading.value = false;
    }
  }

  // Clear data but keep saved user ID
  void clearData() {
    _availableDataTypes.clear();
    _errorMessage.value = '';
    _lastCheckedUserId.value = '';
  }

  // Clear all data including saved user ID
  Future<void> clearAllData() async {
    _availableDataTypes.clear();
    _errorMessage.value = '';
    _lastCheckedUserId.value = '';
    _savedUserId.value = '';
    await StorageService.removeUserId();
  }

  // Get grouped data types for better UI organization
  Map<String, List<String>> getGroupedDataTypes() {
    final grouped = <String, List<String>>{
      'Health & Fitness': [],
      'Sleep': [],
      'Activity': [],
      'Other': [],
    };

    for (final dataType in _availableDataTypes) {
      if (dataType.startsWith('sleep_')) {
        grouped['Sleep']!.add(dataType);
      } else if ([
        'activity_summary',
        'steps',
        'calories',
        'workout',
      ].contains(dataType)) {
        grouped['Activity']!.add(dataType);
      } else if ([
        'heart_rate',
        'temperature',
        'breathing',
        'body_summary',
      ].contains(dataType)) {
        grouped['Health & Fitness']!.add(dataType);
      } else {
        grouped['Other']!.add(dataType);
      }
    }

    // Remove empty groups
    grouped.removeWhere((key, value) => value.isEmpty);

    return grouped;
  }
}
