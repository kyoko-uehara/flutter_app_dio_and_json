// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'middle_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MiddleArea _$MiddleAreaFromJson(Map<String, dynamic> json) {
  return MiddleArea(
    json['api_version'] as String,
    (json['middle_area'] as List)
        ?.map((e) => e == null
            ? null
            : MiddleAreaName.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['results_available'] as int,
    json['results_returned'] as String,
    json['results_start'] as int,
  );
}

Map<String, dynamic> _$MiddleAreaToJson(MiddleArea instance) =>
    <String, dynamic>{
      'api_version': instance.apiVersion,
      'middle_area': instance.middleAreaName,
      'results_available': instance.resultsAvailable,
      'results_returned': instance.resultsReturned,
      'results_start': instance.resultsStart,
    };
