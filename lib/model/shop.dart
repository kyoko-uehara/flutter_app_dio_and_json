import 'package:json_annotation/json_annotation.dart';

part 'shop.g.dart';

@JsonSerializable()
class Shop{
  String name;

  @JsonKey(name : "logo_image")
  String logoImage;
  String open;
  String access;
  String address;

  Shop(this.logoImage,
      this.open,
      this.address,
      this.access);

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
  Map<String, dynamic> toJson() => _$ShopToJson(this);

}

