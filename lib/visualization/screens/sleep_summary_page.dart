import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';
import '../controllers/sleep_controller.dart';
import '../models/sleep_summary.dart';

class SleepSummaryPage extends StatelessWidget {
  const SleepSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sleepController = Get.put(SleepController());

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Sleep Summary'),
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: sleepController.refreshSleepData,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Obx(() {
            if (sleepController.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (sleepController.errorMessage.isNotEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline, size: 64, color: Colors.red[400]),
                    const SizedBox(height: 16),
                    Text(
                      'Error loading sleep data',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[600],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      sleepController.errorMessage,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: sleepController.refreshSleepData,
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Today's Sleep Section
                _buildTodaysSleepSection(sleepController),
                const SizedBox(height: 24),

                // Historical Sleep Chart Section
                _buildHistoricalSleepSection(sleepController),
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget _buildTodaysSleepSection(SleepController controller) {
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
                Icon(Icons.bedtime, color: Colors.blue[600], size: 24),
                const SizedBox(width: 8),
                Text(
                  'Today\'s Sleep',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Obx(() {
              final todaysSleep = controller.todaysSleep.value;
              if (todaysSleep == null) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Text(
                      'No sleep data available for today',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                );
              }

              return Column(
                children: [
                  // Sleep Duration Pie Chart
                  SizedBox(
                    height: 200,
                    child: PieChart(
                      PieChartData(
                        sectionsSpace: 4,
                        centerSpaceRadius: 60,
                        sections: _buildSleepPieChartSections(todaysSleep),
                        borderData: FlBorderData(show: false),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Sleep Metrics
                  _buildSleepMetrics(todaysSleep),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoricalSleepSection(SleepController controller) {
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
                Icon(Icons.history, color: Colors.green[600], size: 24),
                const SizedBox(width: 8),
                Text(
                  'Sleep History (30 Days)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Obx(() {
              final historicalSleep = controller.historicalSleep;
              if (historicalSleep.isEmpty) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Text(
                      'No historical sleep data available',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                );
              }

              return SizedBox(
                height: 300,
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 12,
                    barTouchData: BarTouchData(
                      touchTooltipData: BarTouchTooltipData(
                        getTooltipColor: (group) => Colors.blueGrey,
                        getTooltipItem: (group, groupIndex, rod, rodIndex) {
                          final sleepData = historicalSleep[groupIndex];
                          return BarTooltipItem(
                            '${sleepData.formattedSleepDate}\n${sleepData.totalHours.toStringAsFixed(1)}h',
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
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            if (value.toInt() < historicalSleep.length) {
                              final sleepData = historicalSleep[value.toInt()];
                              final date = sleepData.sleepDateTime;
                              return Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  '${date.day}/${date.month}',
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              );
                            }
                            return const Text('');
                          },
                          reservedSize: 32,
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return Text(
                              '${value.toInt()}h',
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                          reservedSize: 32,
                        ),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                    borderData: FlBorderData(show: false),
                    barGroups: _buildHistoricalBarGroups(historicalSleep),
                    gridData: const FlGridData(show: false),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> _buildSleepPieChartSections(
    SleepSummary sleepData,
  ) {
    final sections = <PieChartSectionData>[];

    if (sleepData.lightSleepDuration > 0) {
      sections.add(
        PieChartSectionData(
          color: Colors.lightBlue[300]!,
          value: sleepData.lightHours,
          title: 'Light\n${sleepData.lightHours.toStringAsFixed(1)}h',
          radius: 50,
          titleStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      );
    }

    if (sleepData.remSleepDuration > 0) {
      sections.add(
        PieChartSectionData(
          color: Colors.purple[400]!,
          value: sleepData.remHours,
          title: 'REM\n${sleepData.remHours.toStringAsFixed(1)}h',
          radius: 50,
          titleStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      );
    }

    if (sleepData.deepSleepDuration > 0) {
      sections.add(
        PieChartSectionData(
          color: Colors.indigo[600]!,
          value: sleepData.deepHours,
          title: 'Deep\n${sleepData.deepHours.toStringAsFixed(1)}h',
          radius: 50,
          titleStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      );
    }

    return sections;
  }

  Widget _buildSleepMetrics(SleepSummary sleepData) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildMetricCard(
              'Total Sleep',
              '${sleepData.totalHours.toStringAsFixed(1)}h',
              Icons.bedtime,
              Colors.blue[600]!,
            ),
            _buildMetricCard(
              'Sleep Date',
              sleepData.formattedSleepDate,
              Icons.calendar_today,
              Colors.green[600]!,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildMetricCard(
              'Bedtime',
              '${sleepData.sleepStart.hour.toString().padLeft(2, '0')}:${sleepData.sleepStart.minute.toString().padLeft(2, '0')}',
              Icons.night_shelter,
              Colors.indigo[600]!,
            ),
            _buildMetricCard(
              'Wake Time',
              '${sleepData.sleepEnd.hour.toString().padLeft(2, '0')}:${sleepData.sleepEnd.minute.toString().padLeft(2, '0')}',
              Icons.wb_sunny,
              Colors.orange[600]!,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMetricCard(
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _buildHistoricalBarGroups(
    List<SleepSummary> historicalSleep,
  ) {
    return historicalSleep.asMap().entries.map((entry) {
      final index = entry.key;
      final sleepData = entry.value;

      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: sleepData.totalHours,
            color: Colors.blue[400]!,
            width: 16,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
          ),
        ],
      );
    }).toList();
  }
}
