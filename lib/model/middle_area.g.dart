// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'middle_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MiddleArea _$MiddleAreaFromJson(Map<String, dynamic> json) {
  return MiddleArea()
    ..apiVersion = json['api_version'] as String
    ..middleAreaName = (json['middle_area'] as List)
        ?.map((e) => e as Map<String, dynamic>)
        ?.toList()
    ..resultsAvailable = json['results_available'] as int
    ..resultsReturned = json['results_returned'] as String
    ..resultsStart = json['results_start'] as int;
}

Map<String, dynamic> _$MiddleAreaToJson(MiddleArea instance) =>
    <String, dynamic>{
      'api_version': instance.apiVersion,
      'middle_area': instance.middleAreaName,
      'results_available': instance.resultsAvailable,
      'results_returned': instance.resultsReturned,
      'results_start': instance.resultsStart,
    };
