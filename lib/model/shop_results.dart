import 'package:flutter_app_dio_and_json/model/shop_gourmet.dart';
import 'package:json_annotation/json_annotation.dart';


part 'shop_results.g.dart';

@JsonSerializable()
class ShopResults{

  ShopResults(this.shopGourmet);

  @JsonKey(name : "results")
  ShopGourmet shopGourmet;

  factory ShopResults.fromJson(Map<String, dynamic> json) => _$ShopResultsFromJson(json);
  Map<String, dynamic> toJson() => _$ShopResultsToJson(this);

}
