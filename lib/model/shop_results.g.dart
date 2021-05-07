// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopResults _$ShopResultsFromJson(Map<String, dynamic> json) {
  return ShopResults(
    json['results'] == null
        ? null
        : ShopGourmet.fromJson(json['results'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ShopResultsToJson(ShopResults instance) =>
    <String, dynamic>{
      'results': instance.shopGourmet,
    };
