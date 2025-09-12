// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_pressure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BloodPressureImpl _$$BloodPressureImplFromJson(Map<String, dynamic> json) =>
    _$BloodPressureImpl(
      bloodPressureAvgObject: json['blood_pressure_avg_object'] == null
          ? null
          : BloodPressureAvgObject.fromJson(
              json['blood_pressure_avg_object'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$BloodPressureImplToJson(_$BloodPressureImpl instance) =>
    <String, dynamic>{
      'blood_pressure_avg_object': instance.bloodPressureAvgObject,
    };
