import 'package:get/get.dart';
import '../services/sleep_api_service.dart';
import '../services/sleep_service.dart';
import '../models/rook_data/rook_data.dart';
import '../models/rook_data/datum.dart';
import '../models/rook_data/sleep_summary.dart';
import '../models/sleep_summary.dart' as NewSleep;

class SleepController extends GetxController {
  final SleepApiService _sleepApiService = Get.find<SleepApiService>();
  final SleepService _sleepService = SleepService();

  // Observable variables
  final _isLoading = false.obs;
  final _sleepData = Rxn<RookData>();
  final _errorMessage = ''.obs;

  // New sleep data observables
  final Rx<NewSleep.SleepSummary?> todaysSleep = Rx<NewSleep.SleepSummary?>(
    null,
  );
  final RxList<NewSleep.SleepSummary> historicalSleep =
      <NewSleep.SleepSummary>[].obs;

  // Getters
  bool get isLoading => _isLoading.value;
  RookData? get sleepData => _sleepData.value;
  String get errorMessage => _errorMessage.value;

  // Get first datum (sleep summary) if available
  Datum? get firstSleepDatum {
    if (sleepData?.data?.isNotEmpty == true) {
      return sleepData!.data!.first;
    }
    return null;
  }

  // Get sleep summary from the nested structure
  SleepSummaryData? get sleepSummary {
    return firstSleepDatum?.rawData?.sleepHealth?.summary?.sleepSummary;
  }

  // Helper methods to extract sleep metrics from the sleep summary
  int? get sleepQualityScore =>
      sleepSummary?.scores?.sleepQualityRating15ScoreInt;
  int? get sleepEfficiencyScore =>
      sleepSummary?.scores?.sleepEfficiency1100ScoreInt;
  int? get sleepGoalSeconds => sleepSummary?.scores?.sleepGoalSecondsInt;
  int? get sleepContinuityScore =>
      sleepSummary?.scores?.sleepContinuity15ScoreInt;
  int? get sleepContinuityRating =>
      sleepSummary?.scores?.sleepContinuity15RatingInt;

  // Duration metrics
  DateTime? get sleepStartTime =>
      sleepSummary?.duration?.sleepStartDatetimeString;
  DateTime? get sleepEndTime => sleepSummary?.duration?.sleepEndDatetimeString;
  DateTime? get sleepDate => sleepSummary?.duration?.sleepDateString;
  int? get sleepDurationSeconds =>
      sleepSummary?.duration?.sleepDurationSecondsInt;
  int? get timeInBedSeconds => sleepSummary?.duration?.timeInBedSecondsInt;
  int? get lightSleepDurationSeconds =>
      sleepSummary?.duration?.lightSleepDurationSecondsInt;
  int? get remSleepDurationSeconds =>
      sleepSummary?.duration?.remSleepDurationSecondsInt;
  int? get deepSleepDurationSeconds =>
      sleepSummary?.duration?.deepSleepDurationSecondsInt;
  int? get timeToFallAsleepSeconds =>
      sleepSummary?.duration?.timeToFallAsleepSecondsInt;
  int? get timeAwakeDuringSleepSeconds =>
      sleepSummary?.duration?.timeAwakeDuringSleepSecondsInt;

  // Heart rate metrics
  int? get maxHeartRate => sleepSummary?.heartRate?.hrMaximumBpmInt;
  int? get minHeartRate => sleepSummary?.heartRate?.hrMinimumBpmInt;
  int? get avgHeartRate => sleepSummary?.heartRate?.hrAvgBpmInt;
  int? get restingHeartRate => sleepSummary?.heartRate?.hrRestingBpmInt;
  double? get avgHrvRmssd => sleepSummary?.heartRate?.hrvAvgRmssdFloat;
  double? get avgHrvSdnn => sleepSummary?.heartRate?.hrvAvgSdnnFloat;

  // Formatted duration helpers
  String formatDuration(int? seconds) {
    if (seconds == null) return 'N/A';
    final hours = seconds ~/ 3600;
    final minutes = (seconds % 3600) ~/ 60;
    return '${hours}h ${minutes}m';
  }

  String get formattedTotalSleep => formatDuration(sleepDurationSeconds);
  String get formattedTotalBedtime => formatDuration(timeInBedSeconds);
  String get formattedAwakeTime => formatDuration(timeAwakeDuringSleepSeconds);
  String get formattedLightSleep => formatDuration(lightSleepDurationSeconds);
  String get formattedDeepSleep => formatDuration(deepSleepDurationSeconds);
  String get formattedRemSleep => formatDuration(remSleepDurationSeconds);

  // Fetch sleep data
  Future<void> fetchSleepData(String userId, [String? date]) async {
    try {
      _isLoading.value = true;
      _errorMessage.value = '';

      final response = await _sleepApiService.getSleepSummary(userId);
      _sleepData.value = response;
    } catch (e) {
      _errorMessage.value = e.toString();
      _sleepData.value = null;
    } finally {
      _isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    loadNewSleepData();
  }

  Future<void> loadNewSleepData() async {
    try {
      _isLoading.value = true;
      _errorMessage.value = '';

      // Load today's sleep data
      await loadTodaysSleep();

      // Load historical sleep data
      await loadHistoricalSleep();
    } catch (e) {
      _errorMessage.value = 'Failed to load sleep data: $e';
      print('Error loading sleep data: $e');
    } finally {
      _isLoading.value = false;
    }
  }

  Future<void> loadTodaysSleep() async {
    try {
      final today = await _sleepService.getTodaySleepSummary('sorth');
      todaysSleep.value = today;
    } catch (e) {
      print('Error loading todays sleep: $e');
    }
  }

  Future<void> loadHistoricalSleep() async {
    try {
      final historical = await _sleepService.getHistoricalSleepSummaries(
        userId: 'sorth',
        days: 30,
      );
      historicalSleep.value = historical;
    } catch (e) {
      print('Error loading historical sleep: $e');
    }
  }

  Future<void> refreshSleepData() async {
    await loadNewSleepData();
  }

  // Clear data
  void clearData() {
    _sleepData.value = null;
    _errorMessage.value = '';
  }
}
