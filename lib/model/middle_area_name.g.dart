// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'middle_area_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MiddleAreaName _$MiddleAreaNameFromJson(Map<String, dynamic> json) {
  return MiddleAreaName()
    ..code = json['code'] as String
    ..largeArea = json['large_area']
    ..largeServiceArea = json['large_service_area']
    ..name = json['name'] as String
    ..serviceArea = json['service_area'];
}

Map<String, dynamic> _$MiddleAreaNameToJson(MiddleAreaName instance) =>
    <String, dynamic>{
      'code': instance.code,
      'large_area': instance.largeArea,
      'large_service_area': instance.largeServiceArea,
      'name': instance.name,
      'service_area': instance.serviceArea,
    };
