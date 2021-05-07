import 'package:json_annotation/json_annotation.dart';

// {
// "results": {
//       "api_version": "1.20",
//       "middle_area": [{
//       "code": "Y005",
//       "large_area": {"code": "Z011","name": "東京"},
//       "large_service_area": {"code": "SS10","name": "関東"},
//       "name": "銀座・有楽町・新橋・築地・月島",
//       "service_area": {"code": "SA11","name": "東京"}
// }, {....}
// }}
part 'middle_area_name.g.dart';


@JsonSerializable()

class MiddleAreaName{
  @JsonKey(name : "code")
  String code;

  @JsonKey(name : "large_area")
  Map<String, dynamic> largeArea;

  @JsonKey(name : "large_service_area")
  Map<String, dynamic> largeServiceArea;

  @JsonKey(name : "name")
  String name;

  @JsonKey(name : "service_area")
  Map<String, dynamic> serviceArea;

  MiddleAreaName(this.code, this.largeArea, this.largeServiceArea, this.name, this.serviceArea);

  factory MiddleAreaName.fromJson(Map<String, dynamic> json) => _$MiddleAreaNameFromJson(json);
  Map<String, dynamic> toJson() => _$MiddleAreaNameToJson(this);



}