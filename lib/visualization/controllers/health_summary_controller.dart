import 'package:get/get.dart';
import '../services/sleep_api_service.dart';
import '../services/storage_service.dart';

class HealthSummaryController extends GetxController {
  final SleepApiService _apiService = Get.find<SleepApiService>();

  // Observable variables
  final _isLoading = false.obs;
  final _errorMessage = ''.obs;
  final _selectedPeriod = 'Today'.obs;
  final _healthScore = 85.obs;
  final _physicalHealthScore = 90.obs;
  final _sleepScore = 80.obs;
  final _readinessScore = 88.obs;
  final _activitiesScore = 92.obs;

  // Health data observables
  final _sleepDuration = 0.0.obs;
  final _sleepEfficiency = 0.0.obs;
  final _stepsCount = 0.obs;
  final _caloriesBurned = 0.obs;
  final _heartRateAvg = 0.obs;

  // Getters
  bool get isLoading => _isLoading.value;
  String get errorMessage => _errorMessage.value;
  String get selectedPeriod => _selectedPeriod.value;
  int get healthScore => _healthScore.value;
  int get physicalHealthScore => _physicalHealthScore.value;
  int get sleepScore => _sleepScore.value;
  int get readinessScore => _readinessScore.value;
  int get activitiesScore => _activitiesScore.value;

  // Health data getters
  double get sleepDuration => _sleepDuration.value;
  double get sleepEfficiency => _sleepEfficiency.value;
  int get stepsCount => _stepsCount.value;
  int get caloriesBurned => _caloriesBurned.value;
  int get heartRateAvg => _heartRateAvg.value;

  @override
  void onInit() {
    super.onInit();
    _loadHealthData();
  }

  // Load health data from API
  Future<void> _loadHealthData() async {
    final savedUserId = StorageService.getSavedUserId();
    if (savedUserId != null && savedUserId.isNotEmpty) {
      await fetchHealthData(savedUserId);
    }
  }

  // Fetch health data for calculations
  Future<void> fetchHealthData(String userId) async {
    try {
      _isLoading.value = true;
      _errorMessage.value = '';

      // Get sleep data
      final sleepData = await _apiService.getSleepSummary(userId, limit: 7);

      // Calculate averages and scores
      _calculateHealthScores(sleepData);
    } catch (e) {
      _errorMessage.value = e.toString();
      print('Error fetching health data: $e');
    } finally {
      _isLoading.value = false;
    }
  }

  // Calculate health scores based on actual data
  void _calculateHealthScores(dynamic healthData) {
    // This would be implemented based on your actual data structure
    // For now, using sample calculations

    // Sleep score calculation (0-100)
    // Based on sleep duration, efficiency, etc.
    _sleepScore.value = _calculateSleepScore();

    // Physical health score (0-100)
    // Based on activity, steps, calories
    _physicalHealthScore.value = _calculatePhysicalScore();

    // Activities score (0-100)
    _activitiesScore.value = _calculateActivitiesScore();

    // Readiness score (0-100)
    // Based on heart rate, recovery metrics
    _readinessScore.value = _calculateReadinessScore();

    // Overall health score (weighted average)
    _healthScore.value = _calculateOverallScore();
  }

  int _calculateSleepScore() {
    // Sample calculation - replace with your logic
    double score = 80.0;

    // Adjust based on sleep duration (7-9 hours is optimal)
    if (_sleepDuration.value >= 7 && _sleepDuration.value <= 9) {
      score += 10;
    } else if (_sleepDuration.value < 6) {
      score -= 20;
    } else if (_sleepDuration.value > 10) {
      score -= 10;
    }

    // Adjust based on sleep efficiency
    if (_sleepEfficiency.value > 85) {
      score += 5;
    }

    return score.clamp(0, 100).round();
  }

  int _calculatePhysicalScore() {
    // Sample calculation based on activity metrics
    double score = 70.0;

    // Steps calculation
    if (_stepsCount.value >= 10000) {
      score += 15;
    } else if (_stepsCount.value >= 5000) {
      score += 10;
    }

    // Calories calculation
    if (_caloriesBurned.value >= 2000) {
      score += 10;
    }

    return score.clamp(0, 100).round();
  }

  int _calculateActivitiesScore() {
    // Sample calculation
    return 92; // This would be based on actual activity data
  }

  int _calculateReadinessScore() {
    // Sample calculation based on recovery metrics
    double score = 85.0;

    // Heart rate consideration
    if (_heartRateAvg.value > 0 && _heartRateAvg.value < 100) {
      score += 5;
    }

    return score.clamp(0, 100).round();
  }

  int _calculateOverallScore() {
    // Weighted average of all scores
    double overall =
        (_sleepScore.value * 0.3) +
        (_physicalHealthScore.value * 0.3) +
        (_activitiesScore.value * 0.2) +
        (_readinessScore.value * 0.2);

    return overall.round();
  }

  // Change time period
  void changePeriod(String period) {
    _selectedPeriod.value = period;
    // Reload data for the selected period
    final savedUserId = StorageService.getSavedUserId();
    if (savedUserId != null) {
      fetchHealthData(savedUserId);
    }
  }

  // Get health insights
  String getSleepInsight() {
    if (_sleepScore.value >= 80) {
      return 'Great sleep! You\'re well-rested.';
    } else if (_sleepScore.value >= 60) {
      return 'You should sleep an average of 2 hours more per day';
    } else {
      return 'Your sleep needs improvement. Try going to bed earlier.';
    }
  }

  String getPhysicalInsight() {
    if (_physicalHealthScore.value >= 85) {
      return 'You have completed your daily activity';
    } else if (_physicalHealthScore.value >= 65) {
      return 'Good progress! Try to be more active.';
    } else {
      return 'Increase your daily physical activity.';
    }
  }

  // Share health score
  Future<void> shareHealthScore() async {
    // Implement share functionality
    print('Sharing health score: $_healthScore');
  }
}
