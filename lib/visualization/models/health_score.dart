import 'package:flutter/material.dart';

class HealthScore {
  final String id;
  final DateTime date;
  final int? overallScore;
  final int? sleepScore;
  final int? activityScore;
  final int? nutritionScore;
  final int? stressScore;
  final DateTime createdAt;

  HealthScore({
    required this.id,
    required this.date,
    this.overallScore,
    this.sleepScore,
    this.activityScore,
    this.nutritionScore,
    this.stressScore,
    required this.createdAt,
  });

  factory HealthScore.fromJson(Map<String, dynamic> json) {
    final scoreData = json['health_score_data'];
    final metadata = scoreData?['metadata'];

    return HealthScore(
      id: json['_id'],
      date: DateTime.parse(metadata?['datetime_string'] ?? json['created_at']),
      overallScore: scoreData?['overall_score_int'],
      sleepScore: scoreData?['sleep_score_int'],
      activityScore: scoreData?['activity_score_int'],
      nutritionScore: scoreData?['nutrition_score_int'],
      stressScore: scoreData?['stress_score_int'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  String get formattedDate {
    return '${date.day}/${date.month}/${date.year}';
  }

  // Get color based on score
  Color getScoreColor(int? score) {
    if (score == null) return Colors.grey;
    if (score >= 80) return Colors.green;
    if (score >= 60) return Colors.orange;
    return Colors.red;
  }
}
