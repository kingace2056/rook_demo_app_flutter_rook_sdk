class BodySummary {
  final String id;
  final DateTime date;
  final double? weight;
  final double? bodyFat;
  final double? muscleMass;
  final int? heartRateResting;
  final int? systolicBP;
  final int? diastolicBP;
  final DateTime createdAt;

  BodySummary({
    required this.id,
    required this.date,
    this.weight,
    this.bodyFat,
    this.muscleMass,
    this.heartRateResting,
    this.systolicBP,
    this.diastolicBP,
    required this.createdAt,
  });

  factory BodySummary.fromJson(Map<String, dynamic> json) {
    final bodyData = json['body_health']?['summary']?['body_summary'];
    final weight = bodyData?['weight'];
    final bodyFat = bodyData?['body_fat'];
    final muscle = bodyData?['muscle_mass'];
    final heartRate = bodyData?['heart_rate'];
    final bloodPressure = bodyData?['blood_pressure'];
    final metadata = bodyData?['metadata'];

    return BodySummary(
      id: json['_id'],
      date: DateTime.parse(metadata?['datetime_string'] ?? json['created_at']),
      weight: weight?['weight_avg_kg_float']?.toDouble(),
      bodyFat: bodyFat?['body_fat_avg_percentage_float']?.toDouble(),
      muscleMass: muscle?['muscle_mass_avg_kg_float']?.toDouble(),
      heartRateResting: heartRate?['hr_resting_avg_bpm_int'],
      systolicBP:
          bloodPressure?['blood_pressure_avg_object']?['systolic_mmHg_int'],
      diastolicBP:
          bloodPressure?['blood_pressure_avg_object']?['diastolic_mmHg_int'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  String get formattedDate {
    return '${date.day}/${date.month}/${date.year}';
  }

  String get formattedWeight {
    return weight != null ? '${weight!.toStringAsFixed(1)} kg' : 'N/A';
  }

  String get formattedBodyFat {
    return bodyFat != null ? '${bodyFat!.toStringAsFixed(1)}%' : 'N/A';
  }

  String get formattedBloodPressure {
    if (systolicBP != null && diastolicBP != null) {
      return '$systolicBP/$diastolicBP mmHg';
    }
    return 'N/A';
  }
}
