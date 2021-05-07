import 'package:flutter_app_dio_and_json/model/middle_area_name.dart';
import 'package:json_annotation/json_annotation.dart';

part 'middle_area.g.dart';

@JsonSerializable()
class MiddleArea{

  @JsonKey(name : "api_version")
  String apiVersion;

  @JsonKey(name : "middle_area")
  List<MiddleAreaName> middleAreaName = [];

  @JsonKey(name : "results_available")
  int resultsAvailable;

  @JsonKey(name : "results_returned")
  String resultsReturned;

  @JsonKey(name : "results_start")
  int  resultsStart;

  MiddleArea(
      this.apiVersion,
      this.middleAreaName,
      this.resultsAvailable,
      this.resultsReturned,
      this.resultsStart);

  factory MiddleArea.fromJson(Map<String, dynamic> json) => _$MiddleAreaFromJson(json);
  Map<String, dynamic> toJson() => _$MiddleAreaToJson(this);

}