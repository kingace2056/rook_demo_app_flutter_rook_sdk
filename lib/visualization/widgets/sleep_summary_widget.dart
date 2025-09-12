import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';
import '../controllers/sleep_controller.dart';
import '../models/sleep_summary.dart';
import '../screens/sleep_summary_page.dart';

class SleepSummaryWidget extends StatelessWidget {
  final String userId;

  const SleepSummaryWidget({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sleepController = Get.put(SleepController());

    // Initialize data loading
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (userId.isNotEmpty) {
        sleepController.loadNewSleepData();
      }
    });

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Icon(Icons.bedtime, color: Colors.indigo[600], size: 24),
                const SizedBox(width: 8),
                Text(
                  'Sleep Summary',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Obx(
                  () => sleepController.isLoading
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : IconButton(
                          icon: const Icon(Icons.refresh),
                          onPressed: sleepController.refreshSleepData,
                          tooltip: 'Refresh',
                        ),
                ),
                IconButton(
                  icon: const Icon(Icons.open_in_new),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SleepSummaryPage(),
                      ),
                    );
                  },
                  tooltip: 'View Full Sleep Summary',
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Content
            Obx(() {
              if (sleepController.isLoading) {
                return const SizedBox(
                  height: 120,
                  child: Center(child: CircularProgressIndicator()),
                );
              }

              if (sleepController.errorMessage.isNotEmpty) {
                return Container(
                  height: 120,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.red[200]!),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error, color: Colors.red[600], size: 32),
                        const SizedBox(height: 8),
                        Text(
                          'Error loading sleep data',
                          style: TextStyle(
                            color: Colors.red[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Tap refresh to try again',
                          style: TextStyle(
                            color: Colors.red[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }

              final todaysSleep = sleepController.todaysSleep.value;
              final historicalSleep = sleepController.historicalSleep;

              if (todaysSleep == null && historicalSleep.isEmpty) {
                return Container(
                  height: 120,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bedtime_off,
                          color: Colors.grey[400],
                          size: 32,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'No sleep data available',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Sleep data will appear here when available',
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }

              return Column(
                children: [
                  // Today's Sleep Quick View
                  if (todaysSleep != null) ...[
                    _buildTodaysQuickView(todaysSleep),
                    const SizedBox(height: 16),
                  ],

                  // Mini Historical Chart
                  if (historicalSleep.isNotEmpty) ...[
                    _buildMiniHistoricalChart(historicalSleep.take(7).toList()),
                  ],
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildTodaysQuickView(SleepSummary sleepData) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.indigo[50]!, Colors.blue[50]!],
        ),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.indigo[100]!),
      ),
      child: Row(
        children: [
          // Sleep Duration
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Last Night',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.indigo[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${sleepData.totalHours.toStringAsFixed(1)}h',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[700],
                  ),
                ),
                Text(
                  sleepData.formattedSleepDate,
                  style: TextStyle(fontSize: 10, color: Colors.indigo[500]),
                ),
              ],
            ),
          ),

          // Mini Pie Chart
          SizedBox(
            width: 80,
            height: 80,
            child: PieChart(
              PieChartData(
                sectionsSpace: 2,
                centerSpaceRadius: 25,
                sections: _buildMiniPieChartSections(sleepData),
                borderData: FlBorderData(show: false),
              ),
            ),
          ),

          // Sleep Times
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildTimeInfo(
                  'Bedtime',
                  '${sleepData.sleepStart.hour.toString().padLeft(2, '0')}:${sleepData.sleepStart.minute.toString().padLeft(2, '0')}',
                  Icons.night_shelter,
                ),
                const SizedBox(height: 8),
                _buildTimeInfo(
                  'Wake',
                  '${sleepData.sleepEnd.hour.toString().padLeft(2, '0')}:${sleepData.sleepEnd.minute.toString().padLeft(2, '0')}',
                  Icons.wb_sunny,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeInfo(String label, String time, IconData icon) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 10, color: Colors.indigo[500]),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[700],
              ),
            ),
          ],
        ),
        const SizedBox(width: 4),
        Icon(icon, color: Colors.indigo[600], size: 16),
      ],
    );
  }

  List<PieChartSectionData> _buildMiniPieChartSections(SleepSummary sleepData) {
    final sections = <PieChartSectionData>[];

    if (sleepData.lightSleepDuration > 0) {
      sections.add(
        PieChartSectionData(
          color: Colors.lightBlue[300]!,
          value: sleepData.lightHours,
          radius: 15,
          showTitle: false,
        ),
      );
    }

    if (sleepData.remSleepDuration > 0) {
      sections.add(
        PieChartSectionData(
          color: Colors.purple[400]!,
          value: sleepData.remHours,
          radius: 15,
          showTitle: false,
        ),
      );
    }

    if (sleepData.deepSleepDuration > 0) {
      sections.add(
        PieChartSectionData(
          color: Colors.indigo[600]!,
          value: sleepData.deepHours,
          radius: 15,
          showTitle: false,
        ),
      );
    }

    return sections;
  }

  Widget _buildMiniHistoricalChart(List<SleepSummary> historicalSleep) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last 7 Days',
            style: TextStyle(
              fontSize: 11,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Expanded(
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 12,
                barTouchData: BarTouchData(enabled: false),
                titlesData: const FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                barGroups: historicalSleep.asMap().entries.map((entry) {
                  final index = entry.key;
                  final sleepData = entry.value;

                  return BarChartGroupData(
                    x: index,
                    barRods: [
                      BarChartRodData(
                        toY: sleepData.totalHours,
                        color: Colors.indigo[400]!,
                        width: 8,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(2),
                        ),
                      ),
                    ],
                  );
                }).toList(),
                gridData: const FlGridData(show: false),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
