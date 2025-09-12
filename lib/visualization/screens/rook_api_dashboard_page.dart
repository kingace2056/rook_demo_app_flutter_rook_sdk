import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import '../controllers/rook_api_dashboard_controller.dart';

class RookApiDashboard extends StatelessWidget {
  const RookApiDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RookApiDashboardController());

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: const Text('ROOK API Dashboard'),
          backgroundColor: Colors.blue[600],
          foregroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.clear_all),
              onPressed: controller.clearAllData,
              tooltip: 'Clear All Data',
            ),
          ],
          bottom: const TabBar(
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Overview'),
              Tab(text: 'User Management'),
              Tab(text: 'Physical Health'),
              Tab(text: 'Sleep Health'),
              Tab(text: 'Body Health'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildOverviewTab(controller),
            _buildUserManagementTab(controller),
            _buildPhysicalHealthTab(controller),
            _buildSleepHealthTab(controller),
            _buildBodyHealthTab(controller),
          ],
        ),
      ),
    );
  }

  Widget _buildOverviewTab(RookApiDashboardController controller) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.info_outline, color: Colors.blue[600]),
                      const SizedBox(width: 8),
                      const Text(
                        'ROOK API Testing Dashboard',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'This dashboard allows you to test all ROOK API endpoints using demo credentials:',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  _buildInfoRow(
                      'User ID:', RookApiDashboardController.demoUserId),
                  _buildInfoRow('Date:', RookApiDashboardController.demoDate),
                  _buildInfoRow('Client UUID:', 'demoClientUUID'),
                  const SizedBox(height: 16),
                  const Text(
                    'Navigate through the tabs to test different API categories or use the button below to test all endpoints at once.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Quick Test All Endpoints',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Obx(() => ElevatedButton.icon(
                        onPressed: controller.isTestingAllEndpoints.value
                            ? null
                            : controller.testAllEndpoints,
                        icon: controller.isTestingAllEndpoints.value
                            ? const SizedBox(
                                width: 16,
                                height: 16,
                                child:
                                    CircularProgressIndicator(strokeWidth: 2),
                              )
                            : const Icon(Icons.play_circle_filled),
                        label: Text(
                          controller.isTestingAllEndpoints.value
                              ? 'Testing All Endpoints...'
                              : 'Test All Endpoints',
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                        ),
                      )),
                  const SizedBox(height: 16),
                  Obx(() {
                    if (controller.allEndpointsResults.isNotEmpty) {
                      return _buildResultsCard(
                        'All Endpoints Results',
                        controller.allEndpointsResults,
                        controller.allEndpointsError.value,
                      );
                    }
                    return const SizedBox();
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserManagementTab(RookApiDashboardController controller) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildApiSection(
            'User Information',
            '/v2/processed_data/user/info',
            'Get user information and health data summary',
            controller.getUserInfo,
            controller.isLoadingUserManagement,
          ),
          _buildApiSection(
            'Authorized Data Sources V2',
            '/api/v2/user_id/{user_id}/data_sources/authorized',
            'Get list of authorized data sources for the user',
            controller.getAuthorizedDataSources,
            controller.isLoadingUserManagement,
          ),
          _buildApiSection(
            'Update User Timezone',
            '/api/v1/user_id/{user_id}/time_zone',
            'Update user timezone settings',
            controller.updateUserTimeZone,
            controller.isLoadingUserManagement,
          ),
          _buildApiSection(
            'Revoke Data Source',
            '/api/v1/user_id/{user_id}/data_sources/revoke_auth',
            'Revoke authorization for a specific data source',
            controller.revokeDataSource,
            controller.isLoadingUserManagement,
          ),
          const SizedBox(height: 16),
          Obx(() => _buildResultsCard(
                'User Management Results',
                controller.userManagementData,
                controller.userManagementError.value,
              )),
        ],
      ),
    );
  }

  Widget _buildPhysicalHealthTab(RookApiDashboardController controller) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildApiSection(
            'Physical Health Summary',
            '/v2/processed_data/physical_health/summary',
            'Get daily physical health summary including steps, calories, distance',
            controller.getPhysicalSummary,
            controller.isLoadingPhysicalHealth,
          ),
          _buildApiSection(
            'Activity Events',
            '/v2/processed_data/physical_health/events/activity',
            'Get detailed activity events and workouts',
            controller.getActivityEvents,
            controller.isLoadingPhysicalHealth,
          ),
          _buildApiSection(
            'Heart Rate Events',
            '/v2/processed_data/physical_health/events/heart_rate',
            'Get heart rate measurement events',
            controller.getHeartRateEvents,
            controller.isLoadingPhysicalHealth,
          ),
          _buildApiSection(
            'Oxygenation Events',
            '/v2/processed_data/physical_health/events/oxygenation',
            'Get blood oxygen saturation events',
            controller.getOxygenationEvents,
            controller.isLoadingPhysicalHealth,
          ),
          _buildApiSection(
            'Stress Events',
            '/v2/processed_data/physical_health/events/stress',
            'Get stress level measurement events',
            controller.getStressEvents,
            controller.isLoadingPhysicalHealth,
          ),
          const SizedBox(height: 16),
          Obx(() => _buildResultsCard(
                'Physical Health Results',
                controller.physicalHealthData,
                controller.physicalHealthError.value,
              )),
        ],
      ),
    );
  }

  Widget _buildSleepHealthTab(RookApiDashboardController controller) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildApiSection(
            'Sleep Health Summary',
            '/v2/processed_data/sleep_health/summary',
            'Get daily sleep summary including duration, efficiency, stages',
            controller.getSleepSummary,
            controller.isLoadingSleepHealth,
          ),
          const SizedBox(height: 16),
          Obx(() => _buildResultsCard(
                'Sleep Health Results',
                controller.sleepHealthData,
                controller.sleepHealthError.value,
              )),
        ],
      ),
    );
  }

  Widget _buildBodyHealthTab(RookApiDashboardController controller) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildApiSection(
            'Body Health Summary',
            '/v2/processed_data/body_health/summary',
            'Get body health summary including weight, BMI, body composition',
            controller.getBodySummary,
            controller.isLoadingBodyHealth,
          ),
          _buildApiSection(
            'Nutrition Events',
            '/v2/processed_data/body_health/events/nutrition',
            'Get nutrition and meal tracking events',
            controller.getNutritionEvents,
            controller.isLoadingBodyHealth,
          ),
          _buildApiSection(
            'Blood Glucose Events',
            '/v2/processed_data/body_health/events/blood_glucose',
            'Get blood glucose measurement events',
            controller.getBloodGlucoseEvents,
            controller.isLoadingBodyHealth,
          ),
          _buildApiSection(
            'Blood Pressure Events',
            '/v2/processed_data/body_health/events/blood_pressure',
            'Get blood pressure measurement events',
            controller.getBloodPressureEvents,
            controller.isLoadingBodyHealth,
          ),
          const SizedBox(height: 16),
          Obx(() => _buildResultsCard(
                'Body Health Results',
                controller.bodyHealthData,
                controller.bodyHealthError.value,
              )),
        ],
      ),
    );
  }

  Widget _buildApiSection(
    String title,
    String endpoint,
    String description,
    VoidCallback onPressed,
    RxBool isLoading,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                endpoint,
                style: const TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 12,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 12),
            Obx(() => ElevatedButton.icon(
                  onPressed: isLoading.value ? null : onPressed,
                  icon: isLoading.value
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.play_arrow),
                  label: Text(isLoading.value ? 'Loading...' : 'Execute'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[600],
                    foregroundColor: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildResultsCard(
    String title,
    RxMap<String, dynamic> data,
    String error,
  ) {
    if (data.isEmpty && error.isEmpty) {
      return const SizedBox();
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  error.isNotEmpty ? Icons.error : Icons.check_circle,
                  color: error.isNotEmpty ? Colors.red : Colors.green,
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (error.isNotEmpty)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red[200]!),
                ),
                child: Text(
                  error,
                  style: const TextStyle(color: Colors.red),
                ),
              )
            else
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    _formatJson(data),
                    style: const TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontFamily: 'monospace',
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatJson(Map<String, dynamic> data) {
    try {
      const encoder = JsonEncoder.withIndent('  ');
      return encoder.convert(data);
    } catch (e) {
      return data.toString();
    }
  }
}
