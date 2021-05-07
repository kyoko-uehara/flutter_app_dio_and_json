import 'package:flutter_app_dio_and_json/model/shop.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shop_gourmet.g.dart';

@JsonSerializable()
class ShopGourmet{

  @JsonKey(name : "api_version")
  String apiVersion;

  @JsonKey(name : "results_available")
  int resultsAvailable;

  @JsonKey(name : "results_returned")
  String resultsReturned;

  @JsonKey(name : "results_start")
  int  resultsStart;

  @JsonKey(name : "shop")
  List<Shop> shopList;

  ShopGourmet(
      this.apiVersion,
      this.resultsAvailable,
      this.resultsReturned,
      this.resultsStart,
      this.shopList);

  factory ShopGourmet.fromJson(Map<String, dynamic> json) => _$ShopGourmetFromJson(json);
  Map<String, dynamic> toJson() => _$ShopGourmetToJson(this);

}
