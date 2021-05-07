// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return Shop(
    json['logo_image'] as String,
    json['open'] as String,
    json['address'] as String,
    json['access'] as String,
  )..name = json['name'] as String;
}

Map<String, dynamic> _$ShopToJson(Shop instance) => <String, dynamic>{
      'name': instance.name,
      'logo_image': instance.logoImage,
      'open': instance.open,
      'access': instance.access,
      'address': instance.address,
    };
