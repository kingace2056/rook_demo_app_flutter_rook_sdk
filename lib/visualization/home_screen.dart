import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/available_data_controller.dart';
import 'health_summary_page.dart';
import 'screens/sleep_summary_page.dart';
import 'screens/dashboard_page.dart';
import 'widgets/heart_rate_chart.dart';
import 'widgets/sleep_summary_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AvailableDataController());
    final TextEditingController textController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          // Dashboard navigation button
          IconButton(
            icon: const Icon(Icons.dashboard),
            tooltip: 'Health Dashboard',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DashboardPage()),
              );
            },
          ),
          // Sleep Summary navigation button
          IconButton(
            icon: const Icon(Icons.bedtime),
            tooltip: 'Sleep Summary',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SleepSummaryPage(),
                ),
              );
            },
          ),
          // Health Summary navigation button
          IconButton(
            icon: const Icon(Icons.health_and_safety),
            tooltip: 'Health Summary',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HealthSummaryPage(),
                ),
              );
            },
          ),
          // Clear saved user ID action
          Obx(
            () => controller.savedUserId.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.person_remove),
                    tooltip: 'Clear saved user ID',
                    onPressed: () async {
                      await controller.clearAllData();
                      textController.clear();
                    },
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Input Section
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Check Available Data Types',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Show saved user ID info
                      Obx(
                        () => controller.savedUserId.isNotEmpty
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.green[200]!),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.green[600],
                                      size: 16,
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Saved User: ${controller.savedUserId}',
                                        style: TextStyle(
                                          color: Colors.green[700],
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                      const SizedBox(height: 16),
                      Obx(
                        () => TextField(
                          controller: textController,
                          decoration: InputDecoration(
                            labelText: 'User ID',
                            hintText: controller.savedUserId.isNotEmpty
                                ? controller.savedUserId
                                : 'Enter user ID (e.g., sorthk)',
                            border: const OutlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            suffixIcon: textController.text.isNotEmpty
                                ? IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () => textController.clear(),
                                  )
                                : null,
                          ),
                          onSubmitted: (userId) {
                            if (userId.isNotEmpty) {
                              controller.fetchAvailableDataTypes(userId);
                            }
                          },
                          onChanged: (value) {
                            // Trigger UI update for suffix icon
                            controller.update();
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {
                                final userId = textController.text.trim();
                                if (userId.isNotEmpty) {
                                  controller.fetchAvailableDataTypes(userId);
                                } else if (controller.savedUserId.isNotEmpty) {
                                  controller.fetchAvailableDataTypes(
                                    controller.savedUserId,
                                  );
                                }
                              },
                              icon: const Icon(Icons.search),
                              label: const Text('Check Data Types'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          // Refresh button for saved user
                          Obx(
                            () => controller.savedUserId.isNotEmpty
                                ? ElevatedButton.icon(
                                    onPressed: () {
                                      controller.fetchAvailableDataTypes(
                                        controller.savedUserId,
                                      );
                                    },
                                    icon: const Icon(Icons.refresh),
                                    label: const Text('Refresh'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey[600],
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Heart Rate Chart Section
              Obx(
                () => controller.savedUserId.isNotEmpty
                    ? HeartRateChart(
                        userId: controller.savedUserId,
                        useHardcodedDate:
                            true, // Use hardcoded date to match your sample data
                      )
                    : const SizedBox.shrink(),
              ),

              const SizedBox(height: 20),

              // Sleep Summary Section
              Obx(
                () => controller.savedUserId.isNotEmpty
                    ? SleepSummaryWidget(userId: controller.savedUserId)
                    : const SizedBox.shrink(),
              ),

              const SizedBox(height: 20),

              // Results Section
              Obx(() {
                if (controller.isLoading) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(32.0),
                      child: CircularProgressIndicator(),
                    ),
                  );
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
                          child: const Text('Clear'),
                        ),
                      ],
                    ),
                  );
                }

                if (controller.availableDataTypes.isEmpty) {
                  return const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.data_usage, size: 64, color: Colors.grey),
                        SizedBox(height: 16),
                        Text(
                          'No data available',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Enter a user ID and tap "Check Data Types"',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                }

                final groupedData = controller.getGroupedDataTypes();

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Available Data Types for ${controller.lastCheckedUserId}',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ...groupedData.entries.map((entry) {
                      final category = entry.key;
                      final dataTypes = entry.value;

                      return Card(
                        elevation: 2,
                        margin: const EdgeInsets.only(bottom: 16),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                category,
                                style: Theme.of(context).textTheme.titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[800],
                                    ),
                              ),
                              const SizedBox(height: 12),
                              Wrap(
                                spacing: 8.0,
                                runSpacing: 8.0,
                                children: dataTypes.map((dataType) {
                                  return Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[50],
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: Colors.blue[200]!,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          controller.getDataTypeIcon(dataType),
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          controller.getDataTypeDisplayName(
                                            dataType,
                                          ),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blue[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DashboardPage()),
          );
        },
        icon: const Icon(Icons.dashboard),
        label: const Text('Dashboard'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
    );
  }
}
