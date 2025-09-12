import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import '../controllers/heart_rate_controller.dart';

class HeartRateChart extends StatelessWidget {
  final String userId;
  final bool useHardcodedDate;

  const HeartRateChart({
    super.key,
    required this.userId,
    this.useHardcodedDate = true,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HeartRateController());

    // Fetch data when the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (userId.isNotEmpty) {
        controller.fetchHeartRateEvents(
          userId,
          useHardcodedDate: useHardcodedDate,
        );
      }
    });

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                const Icon(Icons.favorite, color: Colors.red, size: 24),
                const SizedBox(width: 8),
                Text(
                  'Heart Rate',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Obx(
                  () => controller.isLoading
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : IconButton(
                          icon: const Icon(Icons.refresh),
                          onPressed: () => controller.fetchHeartRateEvents(
                            userId,
                            useHardcodedDate: useHardcodedDate,
                          ),
                          tooltip: 'Refresh',
                        ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Stats Row
            Obx(() {
              if (controller.errorMessage.isNotEmpty) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.red[200]!),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.error, color: Colors.red[600], size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          controller.errorMessage,
                          style: TextStyle(color: Colors.red[700]),
                        ),
                      ),
                    ],
                  ),
                );
              }

              if (controller.chartData.isEmpty && !controller.isLoading) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.info, color: Colors.grey, size: 20),
                      SizedBox(width: 8),
                      Text('No heart rate data available'),
                    ],
                  ),
                );
              }

              return Row(
                children: [
                  _buildStatCard(
                    'AVG',
                    '${controller.avgHeartRate}',
                    'bpm',
                    Colors.blue,
                  ),
                  const SizedBox(width: 12),
                  _buildStatCard(
                    'MIN',
                    '${controller.minHeartRate}',
                    'bpm',
                    Colors.green,
                  ),
                  const SizedBox(width: 12),
                  _buildStatCard(
                    'MAX',
                    '${controller.maxHeartRate}',
                    'bpm',
                    Colors.red,
                  ),
                ],
              );
            }),

            const SizedBox(height: 20),

            // Chart
            Obx(() {
              if (controller.isLoading) {
                return const SizedBox(
                  height: 200,
                  child: Center(child: CircularProgressIndicator()),
                );
              }

              if (controller.chartData.isEmpty) {
                return const SizedBox(
                  height: 200,
                  child: Center(
                    child: Text(
                      'No chart data available',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                );
              }

              return SizedBox(
                height: 200,
                child: LineChart(_buildLineChartData(controller.chartData)),
              );
            }),

            const SizedBox(height: 12),

            // Last update info
            Obx(
              () => controller.lastUpdateTime.isNotEmpty
                  ? Text(
                      'Last updated: ${controller.lastUpdateTime}',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String label, String value, String unit, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            Text(
              unit,
              style: TextStyle(fontSize: 10, color: color.withOpacity(0.7)),
            ),
          ],
        ),
      ),
    );
  }

  LineChartData _buildLineChartData(List<Map<String, dynamic>> data) {
    if (data.isEmpty) {
      return LineChartData(lineBarsData: []);
    }

    // Create spots from data with proper time-based ordering
    final spots = <FlSpot>[];
    for (int i = 0; i < data.length; i++) {
      final item = data[i];
      final hrBpm = (item['hr_bpm'] ?? item['hr_bpm_int'] ?? 0).toDouble();
      // Use index for x-axis to ensure proper sequential ordering
      spots.add(FlSpot(i.toDouble(), hrBpm));
    }

    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 10,
        verticalInterval: data.length > 10
            ? (data.length / 8).ceilToDouble()
            : 1,
        getDrawingHorizontalLine: (value) =>
            FlLine(color: Colors.grey[200]!, strokeWidth: 1),
        getDrawingVerticalLine: (value) =>
            FlLine(color: Colors.grey[200]!, strokeWidth: 0.5),
      ),
      titlesData: FlTitlesData(
        show: true,
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 45,
            interval: 15,
            getTitlesWidget: (value, meta) => Container(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                '${value.toInt()}',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 35,
            interval: data.length > 8 ? (data.length / 4).ceilToDouble() : 2,
            getTitlesWidget: (value, meta) {
              final index = value.toInt();
              if (index >= 0 && index < data.length) {
                final controller = Get.find<HeartRateController>();
                final timeStr = controller.getFormattedTime(
                  data[index]['datetime'],
                );
                return Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    timeStr,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: Colors.grey[300]!, width: 1),
      ),
      minX: 0,
      maxX: spots.length > 1 ? spots.length.toDouble() - 1 : 1,
      minY: spots.map((s) => s.y).reduce((a, b) => a < b ? a : b) - 5,
      maxY: spots.map((s) => s.y).reduce((a, b) => a > b ? a : b) + 5,
      lineBarsData: [
        LineChartBarData(
          spots: spots,
          isCurved: true,
          curveSmoothness: 0.3,
          color: Colors.red[500]!,
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: spots.length <= 25,
            getDotPainter: (spot, percent, barData, index) =>
                FlDotCirclePainter(
                  radius: 4,
                  color: Colors.red[600]!,
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
                Colors.red.withOpacity(0.3),
                Colors.red.withOpacity(0.1),
                Colors.red.withOpacity(0.02),
              ],
            ),
          ),
        ),
      ],
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchedSpot) => Colors.black87,
          getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
            return touchedBarSpots.map((barSpot) {
              final index = barSpot.x.toInt();
              if (index >= 0 && index < data.length) {
                final controller = Get.find<HeartRateController>();
                final timeStr = controller.getFormattedTime(
                  data[index]['datetime'],
                );
                return LineTooltipItem(
                  '${barSpot.y.toInt()} BPM\n$timeStr',
                  const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                );
              }
              return null;
            }).toList();
          },
        ),
        handleBuiltInTouches: true,
      ),
    );
  }
}
