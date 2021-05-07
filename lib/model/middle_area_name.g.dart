// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'middle_area_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MiddleAreaName _$MiddleAreaNameFromJson(Map<String, dynamic> json) {
  return MiddleAreaName(
    json['code'] as String,
    json['large_area'] as Map<String, dynamic>,
    json['large_service_area'] as Map<String, dynamic>,
    json['name'] as String,
    json['service_area'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$MiddleAreaNameToJson(MiddleAreaName instance) =>
    <String, dynamic>{
      'code': instance.code,
      'large_area': instance.largeArea,
      'large_service_area': instance.largeServiceArea,
      'name': instance.name,
      'service_area': instance.serviceArea,
    };
