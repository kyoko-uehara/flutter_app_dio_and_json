// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_gourmet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopGourmet _$ShopGourmetFromJson(Map<String, dynamic> json) {
  return ShopGourmet(
    json['api_version'] as String,
    json['results_available'] as int,
    json['results_returned'] as String,
    json['results_start'] as int,
    (json['shop'] as List)
        ?.map(
            (e) => e == null ? null : Shop.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ShopGourmetToJson(ShopGourmet instance) =>
    <String, dynamic>{
      'api_version': instance.apiVersion,
      'results_available': instance.resultsAvailable,
      'results_returned': instance.resultsReturned,
      'results_start': instance.resultsStart,
      'shop': instance.shopList,
    };
