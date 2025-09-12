import 'package:get/get.dart';
import '../services/dashboard_service.dart';
import '../models/health_score.dart';
import '../models/physical_summary.dart';
import '../models/body_summary.dart';
import '../models/sleep_summary.dart';

class DashboardController extends GetxController {
  final DashboardService _dashboardService = DashboardService();

  final RxBool isLoading = false.obs;
  final RxString error = ''.obs;

  // Data observables
  final RxList<HealthScore> healthScores = <HealthScore>[].obs;
  final RxList<PhysicalSummary> physicalSummaries = <PhysicalSummary>[].obs;
  final RxList<BodySummary> bodySummaries = <BodySummary>[].obs;
  final RxList<SleepSummary> sleepSummaries = <SleepSummary>[].obs;
  final RxList<dynamic> healthEvents = <dynamic>[].obs;
  final RxList<Map<String, dynamic>> heartRateEvents =
      <Map<String, dynamic>>[].obs;

  // Latest metrics for overview cards
  final Rx<HealthScore?> latestHealthScore = Rx<HealthScore?>(null);
  final Rx<PhysicalSummary?> latestPhysical = Rx<PhysicalSummary?>(null);
  final Rx<BodySummary?> latestBody = Rx<BodySummary?>(null);
  final Rx<SleepSummary?> latestSleep = Rx<SleepSummary?>(null);
  final RxInt totalRecords = 0.obs;

  @override
  void onInit() {
    super.onInit();
    loadDashboardData();
  }

  Future<void> loadDashboardData([String userId = 'sorth']) async {
    try {
      isLoading.value = true;
      error.value = '';

      final data = await _dashboardService.getDashboardData(userId: userId);

      healthScores.value = data['healthScores'];
      physicalSummaries.value = data['physicalSummaries'];
      bodySummaries.value = data['bodySummaries'];
      sleepSummaries.value = data['sleepSummaries'];
      healthEvents.value = data['healthEvents'];
      heartRateEvents.value = data['heartRateEvents'];
      totalRecords.value = data['totalRecords'];

      // Set latest metrics
      latestHealthScore.value = healthScores.isNotEmpty
          ? healthScores.first
          : null;
      latestPhysical.value = physicalSummaries.isNotEmpty
          ? physicalSummaries.first
          : null;
      latestBody.value = bodySummaries.isNotEmpty ? bodySummaries.first : null;
      latestSleep.value = sleepSummaries.isNotEmpty
          ? sleepSummaries.first
          : null;
    } catch (e) {
      error.value = 'Failed to load dashboard data: $e';
      print('Error loading dashboard data: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> refreshDashboard() async {
    await loadDashboardData();
  }

  // Calculated metrics
  double get averageHealthScore {
    if (healthScores.isEmpty) return 0;
    final scores = healthScores
        .where((h) => h.overallScore != null)
        .map((h) => h.overallScore!)
        .toList();
    if (scores.isEmpty) return 0;
    return scores.reduce((a, b) => a + b) / scores.length;
  }

  int get totalSteps {
    return physicalSummaries
        .where((p) => p.steps != null)
        .map((p) => p.steps!)
        .fold(0, (sum, steps) => sum + steps);
  }

  double get totalDistance {
    return physicalSummaries
            .where((p) => p.distanceMeters != null)
            .map((p) => p.distanceMeters!)
            .fold(0.0, (sum, distance) => sum + distance) /
        1000; // Convert to km
  }

  double get averageSleepHours {
    if (sleepSummaries.isEmpty) return 0;
    final totalHours = sleepSummaries
        .map((s) => s.totalHours)
        .fold(0.0, (sum, hours) => sum + hours);
    return totalHours / sleepSummaries.length;
  }

  // Today's data getters
  List<Map<String, dynamic>> get todaysHeartRateData {
    final today = DateTime.now();
    return heartRateEvents.where((event) {
      final eventDate = event['eventDateTime'] as DateTime;
      return eventDate.year == today.year &&
          eventDate.month == today.month &&
          eventDate.day == today.day;
    }).toList();
  }

  List<Map<String, dynamic>> get todaysHeartRatePoints {
    final todaysEvents = todaysHeartRateData;
    List<Map<String, dynamic>> allPoints = [];

    for (final event in todaysEvents) {
      final granularData = event['granularData'] as List<dynamic>;
      allPoints.addAll(granularData.cast<Map<String, dynamic>>());
    }

    // Sort by timestamp
    allPoints.sort(
      (a, b) =>
          (a['timestamp'] as DateTime).compareTo(b['timestamp'] as DateTime),
    );
    return allPoints;
  }

  SleepSummary? get todaysSleep {
    final today = DateTime.now();
    return sleepSummaries.where((sleep) {
      final sleepDate = sleep.sleepDateTime;
      return sleepDate.year == today.year &&
          sleepDate.month == today.month &&
          sleepDate.day == today.day;
    }).firstOrNull;
  }
}
