import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/sleep_controller.dart';

class SleepDataScreen extends StatelessWidget {
  const SleepDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SleepController controller = Get.put(SleepController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sleep Data'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => controller.clearData(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: [
          // User Input Section
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'User ID',
                    hintText: 'Enter user ID (e.g., sorthk)',
                    border: OutlineInputBorder(),
                  ),
                  onSubmitted: (userId) {
                    if (userId.isNotEmpty) {
                      controller.fetchSleepData(userId);
                    }
                  },
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Load data for default user
                    controller.fetchSleepData('sorthk');
                  },
                  child: const Text('Load Sleep Data'),
                ),
              ],
            ),
          ),
          // Content Section
          Expanded(
            child: Obx(() {
              if (controller.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (controller.errorMessage.isNotEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error, size: 64, color: Colors.red),
                      const SizedBox(height: 16),
                      Text(
                        'Error: ${controller.errorMessage}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.red),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () => controller.clearData(),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                );
              }

              if (controller.sleepData?.data == null ||
                  controller.sleepData!.data!.isEmpty) {
                return const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bedtime, size: 64, color: Colors.grey),
                      SizedBox(height: 16),
                      Text(
                        'No sleep data available',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Enter a user ID and tap "Load Sleep Data"',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                );
              }

              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: controller.sleepData!.data!.length,
                itemBuilder: (context, index) {
                  final datum = controller.sleepData!.data![index];
                  return SleepDataCard(datum: datum, controller: controller);
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}

class SleepDataCard extends StatelessWidget {
  final dynamic datum;
  final SleepController controller;

  const SleepDataCard({
    super.key,
    required this.datum,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final sleepSummary = datum.rawData?.sleepHealth?.summary?.sleepSummary;

    if (sleepSummary == null) {
      return Card(
        margin: const EdgeInsets.only(bottom: 16),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Text('No sleep summary data available'),
        ),
      );
    }

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sleep Summary',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
                Icon(Icons.bedtime, color: Colors.blue[600], size: 32),
              ],
            ),
            const SizedBox(height: 20),

            // Sleep Quality Score
            if (sleepSummary.scores?.sleepQualityRating15ScoreInt != null)
              _buildScoreRow(
                'Sleep Quality',
                '${sleepSummary.scores!.sleepQualityRating15ScoreInt}/5',
                Colors.green,
              ),

            // Sleep Efficiency
            if (sleepSummary.scores?.sleepEfficiency1100ScoreInt != null)
              _buildScoreRow(
                'Sleep Efficiency',
                '${sleepSummary.scores!.sleepEfficiency1100ScoreInt}/100',
                Colors.blue,
              ),

            const Divider(height: 32),

            // Duration Information
            Text(
              'Duration',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            if (controller.formattedTotalSleep != 'N/A')
              _buildInfoRow('Total Sleep', controller.formattedTotalSleep),
            if (controller.formattedTotalBedtime != 'N/A')
              _buildInfoRow('Time in Bed', controller.formattedTotalBedtime),
            if (controller.formattedLightSleep != 'N/A')
              _buildInfoRow('Light Sleep', controller.formattedLightSleep),
            if (controller.formattedDeepSleep != 'N/A')
              _buildInfoRow('Deep Sleep', controller.formattedDeepSleep),
            if (controller.formattedRemSleep != 'N/A')
              _buildInfoRow('REM Sleep', controller.formattedRemSleep),

            const Divider(height: 32),

            // Heart Rate Information
            if (sleepSummary.heartRate != null) ...[
              Text(
                'Heart Rate',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              if (controller.avgHeartRate != null)
                _buildInfoRow('Average HR', '${controller.avgHeartRate} bpm'),
              if (controller.minHeartRate != null)
                _buildInfoRow('Minimum HR', '${controller.minHeartRate} bpm'),
              if (controller.maxHeartRate != null)
                _buildInfoRow('Maximum HR', '${controller.maxHeartRate} bpm'),
              if (controller.restingHeartRate != null)
                _buildInfoRow(
                  'Resting HR',
                  '${controller.restingHeartRate} bpm',
                ),
              if (controller.avgHrvRmssd != null)
                _buildInfoRow(
                  'Avg HRV RMSSD',
                  '${controller.avgHrvRmssd?.toStringAsFixed(1)} ms',
                ),
            ],

            const SizedBox(height: 16),

            // Sleep Times
            if (controller.sleepStartTime != null &&
                controller.sleepEndTime != null) ...[
              const Divider(height: 32),
              Text(
                'Sleep Times',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              _buildInfoRow(
                'Sleep Start',
                _formatTime(controller.sleepStartTime!),
              ),
              _buildInfoRow('Sleep End', _formatTime(controller.sleepEndTime!)),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildScoreRow(String title, String value, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 16)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: color.withAlpha(25),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: color.withAlpha(75)),
            ),
            child: Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, color: color),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 16)),
          Text(
            value,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  String _formatTime(DateTime dateTime) {
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
