// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_pressure_avg_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BloodPressureAvgObjectImpl _$$BloodPressureAvgObjectImplFromJson(
  Map<String, dynamic> json,
) => _$BloodPressureAvgObjectImpl(
  systolicMmHgInt: (json['systolic_mmHg_int'] as num?)?.toInt(),
  diastolicMmHgInt: (json['diastolic_mmHg_int'] as num?)?.toInt(),
);

Map<String, dynamic> _$$BloodPressureAvgObjectImplToJson(
  _$BloodPressureAvgObjectImpl instance,
) => <String, dynamic>{
  'systolic_mmHg_int': instance.systolicMmHgInt,
  'diastolic_mmHg_int': instance.diastolicMmHgInt,
};
