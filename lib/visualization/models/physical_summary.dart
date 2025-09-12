class PhysicalSummary {
  final String id;
  final DateTime date;
  final int? steps;
  final double? distanceMeters;
  final int? caloriesExpenditure;
  final int? caloriesActive;
  final int? caloriesBasalMetabolic;
  final int? activeSeconds;
  final int? restSeconds;
  final DateTime createdAt;

  PhysicalSummary({
    required this.id,
    required this.date,
    this.steps,
    this.distanceMeters,
    this.caloriesExpenditure,
    this.caloriesActive,
    this.caloriesBasalMetabolic,
    this.activeSeconds,
    this.restSeconds,
    required this.createdAt,
  });

  factory PhysicalSummary.fromJson(Map<String, dynamic> json) {
    final physicalData =
        json['physical_health']?['summary']?['physical_summary'];
    final distance = physicalData?['distance'];
    final calories = physicalData?['calories'];
    final activity = physicalData?['activity'];
    final metadata = physicalData?['metadata'];

    return PhysicalSummary(
      id: json['_id'],
      date: DateTime.parse(metadata?['datetime_string'] ?? json['created_at']),
      steps: distance?['steps_int'],
      distanceMeters: distance?['walked_distance_meters_float']?.toDouble(),
      caloriesExpenditure: calories?['calories_expenditure_kcal_float']
          ?.toInt(),
      caloriesActive: calories?['calories_net_active_kcal_float']?.toInt(),
      caloriesBasalMetabolic:
          calories?['calories_basal_metabolic_rate_kcal_float']?.toInt(),
      activeSeconds: activity?['active_seconds_int'],
      restSeconds: activity?['rest_seconds_int'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  String get formattedDate {
    return '${date.day}/${date.month}/${date.year}';
  }

  double get distanceKm => (distanceMeters ?? 0) / 1000;

  String get formattedDistance {
    if (distanceKm < 1) {
      return '${(distanceMeters ?? 0).toStringAsFixed(0)}m';
    }
    return '${distanceKm.toStringAsFixed(1)}km';
  }

  int get totalCalories => (caloriesExpenditure ?? 0) + (caloriesActive ?? 0);
}
