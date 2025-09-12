import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';
import '../controllers/dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardController = Get.put(DashboardController());

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Health Dashboard'),
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          Obx(
            () => dashboardController.isLoading.value
                ? const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    ),
                  )
                : IconButton(
                    icon: const Icon(Icons.refresh),
                    onPressed: dashboardController.refreshDashboard,
                  ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: dashboardController.refreshDashboard,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Obx(() {
            if (dashboardController.isLoading.value) {
              return const SizedBox(
                height: 400,
                child: Center(child: CircularProgressIndicator()),
              );
            }

            if (dashboardController.error.value.isNotEmpty) {
              return _buildErrorState(dashboardController);
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Overview Cards
                _buildOverviewSection(dashboardController),
                const SizedBox(height: 24),

                // Today's Heart Rate Analysis
                _buildTodaysHeartRateSection(dashboardController),
                const SizedBox(height: 24),

                // Today's Sleep Timeline
                _buildTodaysSleepTimelineSection(dashboardController),
                const SizedBox(height: 24),

                // Health Score Trends
                _buildHealthScoreSection(dashboardController),
                const SizedBox(height: 24),

                // Heart Rate Events & History
                _buildHeartRateEventsSection(dashboardController),
                const SizedBox(height: 24),

                // Physical Activity Section
                _buildPhysicalActivitySection(dashboardController),
                const SizedBox(height: 24),

                // Sleep Analysis Section
                _buildSleepAnalysisSection(dashboardController),
                const SizedBox(height: 24),

                // Body Metrics Section
                _buildBodyMetricsSection(dashboardController),
                const SizedBox(height: 24),

                // Data Summary
                _buildDataSummarySection(dashboardController),
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget _buildErrorState(DashboardController controller) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: Colors.red[400]),
          const SizedBox(height: 16),
          Text(
            'Error loading dashboard',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.red[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            controller.error.value,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[600]),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: controller.refreshDashboard,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _buildOverviewSection(DashboardController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Health Overview',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildOverviewCard(
                title: 'Health Score',
                value: controller.averageHealthScore.toStringAsFixed(0),
                unit: '/100',
                icon: Icons.health_and_safety,
                color: Colors.green,
                backgroundColor: Colors.green[50]!,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildOverviewCard(
                title: 'Total Records',
                value: controller.totalRecords.value.toString(),
                unit: '',
                icon: Icons.data_usage,
                color: Colors.blue,
                backgroundColor: Colors.blue[50]!,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _buildOverviewCard(
                title: 'Avg Sleep',
                value: controller.averageSleepHours.toStringAsFixed(1),
                unit: 'hrs',
                icon: Icons.bedtime,
                color: Colors.indigo,
                backgroundColor: Colors.indigo[50]!,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildOverviewCard(
                title: 'Total Steps',
                value: (controller.totalSteps / 1000).toStringAsFixed(0),
                unit: 'K',
                icon: Icons.directions_walk,
                color: Colors.orange,
                backgroundColor: Colors.orange[50]!,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildOverviewCard({
    required String title,
    required String value,
    required String unit,
    required IconData icon,
    required Color color,
    required Color backgroundColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 24),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  unit,
                  style: TextStyle(
                    fontSize: 10,
                    color: color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHealthScoreSection(DashboardController controller) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.trending_up, color: Colors.green[600], size: 24),
                const SizedBox(width: 8),
                Text(
                  'Health Score Trends',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Obx(() {
              final healthScores = controller.healthScores.take(14).toList();
              if (healthScores.isEmpty) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Text('No health score data available'),
                  ),
                );
              }

              return SizedBox(
                height: 200,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: false,
                      horizontalInterval: 20,
                      getDrawingHorizontalLine: (value) =>
                          FlLine(color: Colors.grey[200]!, strokeWidth: 1),
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          interval: 25,
                          reservedSize: 40,
                          getTitlesWidget: (value, meta) => Text(
                            value.toInt().toString(),
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          interval: 3,
                          getTitlesWidget: (value, meta) {
                            final index = value.toInt();
                            if (index >= 0 && index < healthScores.length) {
                              final date = healthScores[index].date;
                              return Text(
                                '${date.day}/${date.month}',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[600],
                                ),
                              );
                            }
                            return const Text('');
                          },
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: true,
                      border: Border.all(color: Colors.grey[300]!, width: 1),
                    ),
                    minX: 0,
                    maxX: healthScores.length.toDouble() - 1,
                    minY: 0,
                    maxY: 100,
                    lineBarsData: [
                      LineChartBarData(
                        spots: healthScores.asMap().entries.map((entry) {
                          final index = entry.key;
                          final score = entry.value;
                          return FlSpot(
                            index.toDouble(),
                            (score.overallScore ?? 0).toDouble(),
                          );
                        }).toList(),
                        isCurved: true,
                        curveSmoothness: 0.3,
                        color: Colors.green[500]!,
                        barWidth: 3,
                        isStrokeCapRound: true,
                        dotData: FlDotData(
                          show: true,
                          getDotPainter: (spot, percent, barData, index) =>
                              FlDotCirclePainter(
                                radius: 4,
                                color: Colors.green[600]!,
                                strokeWidth: 2,
                                strokeColor: Colors.white,
                              ),
                        ),
                        belowBarData: BarAreaData(
                          show: true,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.green.withOpacity(0.3),
                              Colors.green.withOpacity(0.1),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildPhysicalActivitySection(DashboardController controller) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.fitness_center, color: Colors.orange[600], size: 24),
                const SizedBox(width: 8),
                Text(
                  'Physical Activity',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Obx(() {
              final physicalData = controller.physicalSummaries
                  .take(7)
                  .toList();
              if (physicalData.isEmpty) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Text('No physical activity data available'),
                  ),
                );
              }

              return Column(
                children: [
                  // Steps Chart
                  SizedBox(
                    height: 200,
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.spaceAround,
                        maxY:
                            physicalData
                                .where((p) => p.steps != null)
                                .map((p) => p.steps!.toDouble())
                                .fold(
                                  0.0,
                                  (prev, curr) => prev > curr ? prev : curr,
                                ) *
                            1.2,
                        barTouchData: BarTouchData(
                          touchTooltipData: BarTouchTooltipData(
                            getTooltipColor: (group) => Colors.orange[700]!,
                            getTooltipItem: (group, groupIndex, rod, rodIndex) {
                              final data = physicalData[groupIndex];
                              return BarTooltipItem(
                                '${data.steps ?? 0} steps\n${data.formattedDate}',
                                const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              );
                            },
                          ),
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          rightTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 40,
                              getTitlesWidget: (value, meta) => Text(
                                '${(value / 1000).toInt()}K',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                final index = value.toInt();
                                if (index >= 0 && index < physicalData.length) {
                                  final date = physicalData[index].date;
                                  return Text(
                                    '${date.day}/${date.month}',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey[600],
                                    ),
                                  );
                                }
                                return const Text('');
                              },
                            ),
                          ),
                        ),
                        borderData: FlBorderData(show: false),
                        barGroups: physicalData.asMap().entries.map((entry) {
                          final index = entry.key;
                          final data = entry.value;

                          return BarChartGroupData(
                            x: index,
                            barRods: [
                              BarChartRodData(
                                toY: (data.steps ?? 0).toDouble(),
                                color: Colors.orange[400]!,
                                width: 20,
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(4),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                        gridData: const FlGridData(show: false),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Activity Summary Cards
                  Row(
                    children: [
                      Expanded(
                        child: _buildMetricCard(
                          title: 'Total Distance',
                          value: controller.totalDistance.toStringAsFixed(1),
                          unit: 'km',
                          icon: Icons.map,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildMetricCard(
                          title: 'Avg Calories',
                          value:
                              physicalData.isNotEmpty &&
                                  physicalData.any(
                                    (p) => p.caloriesExpenditure != null,
                                  )
                              ? (physicalData
                                            .where(
                                              (p) =>
                                                  p.caloriesExpenditure != null,
                                            )
                                            .map((p) => p.caloriesExpenditure!)
                                            .reduce((a, b) => a + b) /
                                        physicalData
                                            .where(
                                              (p) =>
                                                  p.caloriesExpenditure != null,
                                            )
                                            .length)
                                    .toStringAsFixed(0)
                              : '0',
                          unit: 'kcal',
                          icon: Icons.local_fire_department,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildSleepAnalysisSection(DashboardController controller) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.bedtime, color: Colors.indigo[600], size: 24),
                const SizedBox(width: 8),
                Text(
                  'Sleep Analysis',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Obx(() {
              final sleepData = controller.sleepSummaries.take(7).toList();
              if (sleepData.isEmpty) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Text('No sleep data available'),
                  ),
                );
              }

              // Calculate safe chart parameters
              final maxSleepHours = sleepData
                  .map((s) => s.totalHours)
                  .fold(0.0, (prev, curr) => prev > curr ? prev : curr);
              final chartMaxY = (maxSleepHours * 1.2).clamp(
                6.0,
                15.0,
              ); // Reasonable range for sleep
              final yInterval = (chartMaxY / 4).clamp(1.0, 4.0);

              return Column(
                children: [
                  // Sleep Duration Chart
                  SizedBox(
                    height: 200,
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(
                          show: true,
                          drawVerticalLine: false,
                          horizontalInterval: yInterval,
                          getDrawingHorizontalLine: (value) =>
                              FlLine(color: Colors.grey[200]!, strokeWidth: 1),
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          rightTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              interval: yInterval,
                              reservedSize: 40,
                              getTitlesWidget: (value, meta) => Text(
                                '${value.toInt()}h',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                final index = value.toInt();
                                if (index >= 0 && index < sleepData.length) {
                                  final date = sleepData[index].sleepDateTime;
                                  return Text(
                                    '${date.day}/${date.month}',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey[600],
                                    ),
                                  );
                                }
                                return const Text('');
                              },
                            ),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: true,
                          border: Border.all(
                            color: Colors.grey[300]!,
                            width: 1,
                          ),
                        ),
                        minX: 0,
                        maxX: sleepData.length.toDouble() - 1,
                        minY: 0,
                        maxY: chartMaxY,
                        lineBarsData: [
                          // Total sleep
                          LineChartBarData(
                            spots: sleepData.asMap().entries.map((entry) {
                              final index = entry.key;
                              final sleep = entry.value;
                              return FlSpot(index.toDouble(), sleep.totalHours);
                            }).toList(),
                            isCurved: true,
                            color: Colors.indigo[500]!,
                            barWidth: 3,
                            dotData: FlDotData(
                              show: true,
                              getDotPainter: (spot, percent, barData, index) =>
                                  FlDotCirclePainter(
                                    radius: 4,
                                    color: Colors.indigo[600]!,
                                    strokeWidth: 2,
                                    strokeColor: Colors.white,
                                  ),
                            ),
                            belowBarData: BarAreaData(
                              show: true,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.indigo.withOpacity(0.3),
                                  Colors.indigo.withOpacity(0.1),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Sleep Quality Breakdown
                  if (sleepData.isNotEmpty)
                    Row(
                      children: [
                        Expanded(
                          child: _buildSleepPhaseCard(
                            'Deep Sleep',
                            sleepData.first.deepHours,
                            Colors.indigo[700]!,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: _buildSleepPhaseCard(
                            'REM Sleep',
                            sleepData.first.remHours,
                            Colors.purple[500]!,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: _buildSleepPhaseCard(
                            'Light Sleep',
                            sleepData.first.lightHours,
                            Colors.lightBlue[400]!,
                          ),
                        ),
                      ],
                    ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildSleepPhaseCard(String phase, double hours, Color color) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Text(
            '${hours.toStringAsFixed(1)}h',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            phase,
            style: TextStyle(
              fontSize: 10,
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBodyMetricsSection(DashboardController controller) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.monitor_weight, color: Colors.teal[600], size: 24),
                const SizedBox(width: 8),
                Text(
                  'Body Metrics',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Obx(() {
              final bodyData = controller.bodySummaries.take(1).toList();
              if (bodyData.isEmpty) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Text('No body metrics data available'),
                  ),
                );
              }

              final latest = bodyData.first;
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: _buildMetricCard(
                          title: 'Weight',
                          value: latest.weight?.toStringAsFixed(1) ?? 'N/A',
                          unit: 'kg',
                          icon: Icons.monitor_weight,
                          color: Colors.teal,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildMetricCard(
                          title: 'Body Fat',
                          value: latest.bodyFat?.toStringAsFixed(1) ?? 'N/A',
                          unit: '%',
                          icon: Icons.analytics,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: _buildMetricCard(
                          title: 'Resting HR',
                          value: latest.heartRateResting?.toString() ?? 'N/A',
                          unit: 'bpm',
                          icon: Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildMetricCard(
                          title: 'Blood Pressure',
                          value:
                              latest.systolicBP != null &&
                                  latest.diastolicBP != null
                              ? '${latest.systolicBP}/${latest.diastolicBP}'
                              : 'N/A',
                          unit: 'mmHg',
                          icon: Icons.bloodtype,
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildMetricCard({
    required String title,
    required String value,
    required String unit,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Text(
            unit,
            style: TextStyle(
              fontSize: 10,
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 2),
          Text(title, style: TextStyle(fontSize: 10, color: Colors.grey[600])),
        ],
      ),
    );
  }

  Widget _buildDataSummarySection(DashboardController controller) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.summarize, color: Colors.blue[600], size: 24),
                const SizedBox(width: 8),
                Text(
                  'Data Summary',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Obx(
              () => Column(
                children: [
                  _buildSummaryRow(
                    'Health Scores',
                    controller.healthScores.length.toString(),
                    Icons.health_and_safety,
                    Colors.green,
                  ),
                  _buildSummaryRow(
                    'Sleep Records',
                    controller.sleepSummaries.length.toString(),
                    Icons.bedtime,
                    Colors.indigo,
                  ),
                  _buildSummaryRow(
                    'Physical Activity',
                    controller.physicalSummaries.length.toString(),
                    Icons.fitness_center,
                    Colors.orange,
                  ),
                  _buildSummaryRow(
                    'Body Metrics',
                    controller.bodySummaries.length.toString(),
                    Icons.monitor_weight,
                    Colors.teal,
                  ),
                  _buildSummaryRow(
                    'Health Events',
                    controller.healthEvents.length.toString(),
                    Icons.event,
                    Colors.purple,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryRow(
    String title,
    String count,
    IconData icon,
    Color color,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: color.withOpacity(0.3)),
            ),
            child: Text(
              count,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTodaysHeartRateSection(DashboardController controller) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.favorite, color: Colors.red[600], size: 24),
                const SizedBox(width: 8),
                Text(
                  'Today\'s Heart Rate',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Obx(() {
              final todaysData = controller.todaysHeartRatePoints;
              if (todaysData.isEmpty) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Text('No heart rate data for today'),
                  ),
                );
              }

              return Column(
                children: [
                  // Today's HR Chart
                  SizedBox(
                    height: 250,
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(
                          show: true,
                          drawVerticalLine: false,
                          horizontalInterval: 20,
                          getDrawingHorizontalLine: (value) =>
                              FlLine(color: Colors.grey[200]!, strokeWidth: 1),
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          rightTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              interval: 20,
                              reservedSize: 40,
                              getTitlesWidget: (value, meta) => Text(
                                '${value.toInt()}',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              interval: todaysData.length / 6,
                              getTitlesWidget: (value, meta) {
                                final index = value.toInt();
                                if (index >= 0 && index < todaysData.length) {
                                  final timestamp =
                                      todaysData[index]['timestamp']
                                          as DateTime;
                                  return Text(
                                    '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey[600],
                                    ),
                                  );
                                }
                                return const Text('');
                              },
                            ),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: true,
                          border: Border.all(
                            color: Colors.grey[300]!,
                            width: 1,
                          ),
                        ),
                        minX: 0,
                        maxX: todaysData.length.toDouble() - 1,
                        minY:
                            todaysData
                                .map((p) => p['heartRate'] as int)
                                .reduce((a, b) => a < b ? a : b)
                                .toDouble() -
                            10,
                        maxY:
                            todaysData
                                .map((p) => p['heartRate'] as int)
                                .reduce((a, b) => a > b ? a : b)
                                .toDouble() +
                            10,
                        lineBarsData: [
                          LineChartBarData(
                            spots: todaysData.asMap().entries.map((entry) {
                              final index = entry.key;
                              final point = entry.value;
                              return FlSpot(
                                index.toDouble(),
                                (point['heartRate'] as int).toDouble(),
                              );
                            }).toList(),
                            isCurved: true,
                            curveSmoothness: 0.3,
                            color: Colors.red[500]!,
                            barWidth: 2,
                            isStrokeCapRound: true,
                            dotData: FlDotData(
                              show: true,
                              getDotPainter: (spot, percent, barData, index) =>
                                  FlDotCirclePainter(
                                    radius: 3,
                                    color: Colors.red[600]!,
                                    strokeWidth: 1,
                                    strokeColor: Colors.white,
                                  ),
                            ),
                            belowBarData: BarAreaData(
                              show: true,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.red.withOpacity(0.3),
                                  Colors.red.withOpacity(0.1),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Today's HR Stats
                  if (todaysData.isNotEmpty)
                    Row(
                      children: [
                        Expanded(
                          child: _buildMetricCard(
                            title: 'Current HR',
                            value: todaysData.last['heartRate'].toString(),
                            unit: 'bpm',
                            icon: Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildMetricCard(
                            title: 'Max HR',
                            value: todaysData
                                .map((p) => p['heartRate'] as int)
                                .reduce((a, b) => a > b ? a : b)
                                .toString(),
                            unit: 'bpm',
                            icon: Icons.trending_up,
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildMetricCard(
                            title: 'Min HR',
                            value: todaysData
                                .map((p) => p['heartRate'] as int)
                                .reduce((a, b) => a < b ? a : b)
                                .toString(),
                            unit: 'bpm',
                            icon: Icons.trending_down,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildTodaysSleepTimelineSection(DashboardController controller) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.bedtime_outlined,
                  color: Colors.indigo[600],
                  size: 24,
                ),
                const SizedBox(width: 8),
                Text(
                  'Today\'s Sleep Timeline',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Obx(() {
              final todaysSleep = controller.todaysSleep;
              if (todaysSleep == null) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Text('No sleep data for today'),
                  ),
                );
              }

              return Column(
                children: [
                  // Sleep Timeline Visualization
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.indigo[50],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.indigo[200]!),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          // Sleep start time
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.bedtime,
                                color: Colors.indigo[600],
                                size: 20,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Sleep Start',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[600],
                                ),
                              ),
                              Text(
                                '${todaysSleep.sleepStart.hour.toString().padLeft(2, '0')}:${todaysSleep.sleepStart.minute.toString().padLeft(2, '0')}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo[700],
                                ),
                              ),
                            ],
                          ),
                          // Sleep phases timeline
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              height: 40,
                              child: Row(
                                children: [
                                  // Light sleep
                                  Expanded(
                                    flex: (todaysSleep.lightHours * 10).round(),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlue[300],
                                        borderRadius:
                                            const BorderRadius.horizontal(
                                              left: Radius.circular(8),
                                            ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Light\n${todaysSleep.lightHours.toStringAsFixed(1)}h',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Deep sleep
                                  Expanded(
                                    flex: (todaysSleep.deepHours * 10)
                                        .round()
                                        .clamp(1, 100),
                                    child: Container(
                                      color: Colors.indigo[600],
                                      child: Center(
                                        child: Text(
                                          'Deep\n${todaysSleep.deepHours.toStringAsFixed(1)}h',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // REM sleep
                                  Expanded(
                                    flex: (todaysSleep.remHours * 10)
                                        .round()
                                        .clamp(1, 100),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.purple[400],
                                        borderRadius:
                                            const BorderRadius.horizontal(
                                              right: Radius.circular(8),
                                            ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'REM\n${todaysSleep.remHours.toStringAsFixed(1)}h',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Sleep end time
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.wb_sunny,
                                color: Colors.orange[600],
                                size: 20,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Wake Up',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[600],
                                ),
                              ),
                              Text(
                                '${todaysSleep.sleepEnd.hour.toString().padLeft(2, '0')}:${todaysSleep.sleepEnd.minute.toString().padLeft(2, '0')}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange[700],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Sleep summary cards
                  Row(
                    children: [
                      Expanded(
                        child: _buildMetricCard(
                          title: 'Total Sleep',
                          value: todaysSleep.totalHours.toStringAsFixed(1),
                          unit: 'hrs',
                          icon: Icons.schedule,
                          color: Colors.indigo,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildMetricCard(
                          title: 'Sleep Efficiency',
                          value: ((todaysSleep.totalHours / 8) * 100)
                              .clamp(0, 100)
                              .toStringAsFixed(0),
                          unit: '%',
                          icon: Icons.assessment,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildHeartRateEventsSection(DashboardController controller) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.timeline, color: Colors.red[600], size: 24),
                const SizedBox(width: 8),
                Text(
                  'Heart Rate Events & History',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Obx(() {
              final heartRateEvents = controller.heartRateEvents
                  .take(7)
                  .toList();
              if (heartRateEvents.isEmpty) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Text('No heart rate events available'),
                  ),
                );
              }

              return Column(
                children: [
                  // Historical HR trends
                  SizedBox(
                    height: 200,
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(
                          show: true,
                          drawVerticalLine: false,
                          horizontalInterval: 20,
                          getDrawingHorizontalLine: (value) =>
                              FlLine(color: Colors.grey[200]!, strokeWidth: 1),
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          rightTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              interval: 20,
                              reservedSize: 40,
                              getTitlesWidget: (value, meta) => Text(
                                '${value.toInt()}',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                final index = value.toInt();
                                if (index >= 0 &&
                                    index < heartRateEvents.length) {
                                  final eventDate =
                                      heartRateEvents[index]['eventDateTime']
                                          as DateTime;
                                  return Text(
                                    '${eventDate.day}/${eventDate.month}',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey[600],
                                    ),
                                  );
                                }
                                return const Text('');
                              },
                            ),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: true,
                          border: Border.all(
                            color: Colors.grey[300]!,
                            width: 1,
                          ),
                        ),
                        minX: 0,
                        maxX: heartRateEvents.length.toDouble() - 1,
                        minY: 40,
                        maxY: 200,
                        lineBarsData: [
                          // Max HR line
                          LineChartBarData(
                            spots: heartRateEvents.asMap().entries.map((entry) {
                              final index = entry.key;
                              final event = entry.value;
                              return FlSpot(
                                index.toDouble(),
                                (event['maxHeartRate'] as int).toDouble(),
                              );
                            }).toList(),
                            isCurved: true,
                            color: Colors.red[400]!,
                            barWidth: 2,
                            dotData: FlDotData(show: false),
                          ),
                          // Avg HR line
                          LineChartBarData(
                            spots: heartRateEvents.asMap().entries.map((entry) {
                              final index = entry.key;
                              final event = entry.value;
                              return FlSpot(
                                index.toDouble(),
                                (event['avgHeartRate'] as int).toDouble(),
                              );
                            }).toList(),
                            isCurved: true,
                            color: Colors.blue[500]!,
                            barWidth: 3,
                            dotData: FlDotData(
                              show: true,
                              getDotPainter: (spot, percent, barData, index) =>
                                  FlDotCirclePainter(
                                    radius: 3,
                                    color: Colors.blue[600]!,
                                    strokeWidth: 1,
                                    strokeColor: Colors.white,
                                  ),
                            ),
                          ),
                          // Min HR line
                          LineChartBarData(
                            spots: heartRateEvents.asMap().entries.map((entry) {
                              final index = entry.key;
                              final event = entry.value;
                              return FlSpot(
                                index.toDouble(),
                                (event['minHeartRate'] as int).toDouble(),
                              );
                            }).toList(),
                            isCurved: true,
                            color: Colors.green[400]!,
                            barWidth: 2,
                            dotData: FlDotData(show: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // HR Events Summary
                  if (heartRateEvents.isNotEmpty)
                    Row(
                      children: [
                        Expanded(
                          child: _buildMetricCard(
                            title: 'Avg HR (7d)',
                            value:
                                (heartRateEvents
                                            .map(
                                              (e) => e['avgHeartRate'] as int,
                                            )
                                            .reduce((a, b) => a + b) /
                                        heartRateEvents.length)
                                    .toStringAsFixed(0),
                            unit: 'bpm',
                            icon: Icons.favorite,
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildMetricCard(
                            title: 'HR Events',
                            value: heartRateEvents.length.toString(),
                            unit: 'events',
                            icon: Icons.event,
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
