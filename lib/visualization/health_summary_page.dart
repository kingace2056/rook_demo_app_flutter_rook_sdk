import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import 'controllers/health_summary_controller.dart';

class HealthSummaryPage extends StatelessWidget {
  const HealthSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HealthSummaryController());

    return Scaffold(
      backgroundColor: const Color(0xFFFAFBFC),
      body: SafeArea(
        child: Obx(() {
          if (controller.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Column(
            children: [
              // Custom App Bar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Color(0xFF2D3748),
                          size: 18,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      'Health Score',
                      style: TextStyle(
                        color: Color(0xFF2D3748),
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),

              // Scrollable content
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Time Period Selector
                      _buildTimePeriodSelector(controller),

                      const SizedBox(height: 40),

                      // Main Health Score Circle
                      _buildMainHealthScore(controller),

                      const SizedBox(height: 50),

                      // Share Button
                      _buildShareButton(controller),

                      const SizedBox(height: 40),

                      // Health Categories
                      _buildHealthCategories(controller),

                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildTimePeriodSelector(HealthSummaryController controller) {
    return Row(
      children: [
        const Text(
          'Your Score to',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const Spacer(),
        _buildTimePeriodChip(
          'Today',
          controller.selectedPeriod == 'Today',
          controller,
        ),
        const SizedBox(width: 12),
        _buildTimePeriodChip(
          'Week',
          controller.selectedPeriod == 'Week',
          controller,
        ),
        const SizedBox(width: 12),
        _buildTimePeriodChip(
          'Month',
          controller.selectedPeriod == 'Month',
          controller,
        ),
      ],
    );
  }

  Widget _buildTimePeriodChip(
    String label,
    bool isSelected,
    HealthSummaryController controller,
  ) {
    return GestureDetector(
      onTap: () => controller.changePeriod(label),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue[100] : Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.blue[800] : Colors.grey[600],
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildMainHealthScore(HealthSummaryController controller) {
    return Center(
      child: SizedBox(
        width: 320,
        height: 320,
        child: Stack(
          children: [
            // Background circle
            Container(
              width: 320,
              height: 320,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[100],
              ),
            ),
            // Multiple progress rings for different categories
            CustomPaint(
              size: const Size(320, 320),
              painter: MultiSegmentCircularProgressPainter(
                sleepProgress: controller.sleepScore / 100.0,
                activityProgress: controller.activitiesScore / 100.0,
                readinessProgress: controller.readinessScore / 100.0,
                strokeWidth: 16,
              ),
            ),
            // Inner white circle with score
            Positioned.fill(
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 30,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          controller.healthScore.toString(),
                          style: const TextStyle(
                            fontSize: 72,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF6B73FF),
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Category labels positioned around the circle
            Positioned(
              top: 25,
              left: 50,
              child: _buildCategoryDot('Sleep', Colors.red[400]!),
            ),
            Positioned(
              top: 25,
              right: 50,
              child: _buildCategoryDot('Activities', Colors.green[400]!),
            ),
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: Center(
                child: _buildCategoryDot('Readiness', Colors.blue[400]!),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryDot(String label, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildShareButton(HealthSummaryController controller) {
    return Center(
      child: GestureDetector(
        onTap: () => controller.shareHealthScore(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 20,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.share_rounded, color: Colors.grey[700], size: 20),
              const SizedBox(width: 10),
              Text(
                'share your Health Score',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHealthCategories(HealthSummaryController controller) {
    return Column(
      children: [
        _buildHealthCategoryCard(
          icon: Icons.directions_run,
          title: 'Physical Health',
          subtitle: controller.getPhysicalInsight(),
          score: controller.physicalHealthScore,
          color: Colors.blue,
        ),
        const SizedBox(height: 16),
        _buildHealthCategoryCard(
          icon: Icons.bedtime,
          title: 'Sleep',
          subtitle: controller.getSleepInsight(),
          score: controller.sleepScore,
          color: Colors.purple,
        ),
      ],
    );
  }

  Widget _buildHealthCategoryCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required int score,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2D3748),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          SizedBox(
            width: 70,
            height: 70,
            child: Stack(
              children: [
                // Background circle
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color.withOpacity(0.1),
                  ),
                ),
                // Progress ring
                CustomPaint(
                  size: const Size(70, 70),
                  painter: CircularProgressPainter(
                    progress: score / 100.0,
                    strokeWidth: 4,
                    colors: [color],
                  ),
                ),
                // Score text
                Positioned.fill(
                  child: Center(
                    child: Text(
                      score.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: color,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, 'Home', true),
          _buildNavItem(Icons.access_time, 'Class', false),
          _buildNavItem(Icons.calendar_today, 'Calendar', false),
          _buildNavItem(Icons.star_border, 'Community', false),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: isActive ? Colors.blue : Colors.grey[400], size: 24),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.blue : Colors.grey[400],
            fontSize: 12,
            fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

class MultiSegmentCircularProgressPainter extends CustomPainter {
  final double sleepProgress;
  final double activityProgress;
  final double readinessProgress;
  final double strokeWidth;

  MultiSegmentCircularProgressPainter({
    required this.sleepProgress,
    required this.activityProgress,
    required this.readinessProgress,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;

    // Background circle
    final backgroundPaint = Paint()
      ..color = Colors.grey[200]!
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, backgroundPaint);

    // Sleep segment (top-left, ~120 degrees)
    final sleepPaint = Paint()
      ..color = Colors.red[400]!
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final sleepSweep = (2 * math.pi * 0.33) * sleepProgress; // 33% of circle
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi + 0.3, // Start angle
      sleepSweep,
      false,
      sleepPaint,
    );

    // Activity segment (top-right, ~120 degrees)
    final activityPaint = Paint()
      ..color = Colors.green[400]!
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final activitySweep = (2 * math.pi * 0.33) * activityProgress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 6, // Start angle
      activitySweep,
      false,
      activityPaint,
    );

    // Readiness segment (bottom, ~120 degrees)
    final readinessPaint = Paint()
      ..color = Colors.blue[400]!
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final readinessSweep = (2 * math.pi * 0.33) * readinessProgress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      math.pi / 2 + 0.3, // Start angle
      readinessSweep,
      false,
      readinessPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class CircularProgressPainter extends CustomPainter {
  final double progress;
  final double strokeWidth;
  final List<Color> colors;

  CircularProgressPainter({
    required this.progress,
    required this.strokeWidth,
    required this.colors,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;

    // Background circle
    final backgroundPaint = Paint()
      ..color = Colors.grey[200]!
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, backgroundPaint);

    // Progress circle
    final progressPaint = Paint()
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    if (colors.length > 1) {
      progressPaint.shader = LinearGradient(
        colors: colors,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromCircle(center: center, radius: radius));
    } else {
      progressPaint.color = colors.first;
    }

    final sweepAngle = 2 * math.pi * progress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 2,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
