import 'package:json_annotation/json_annotation.dart';

import 'middle_area.dart';

part 'results.g.dart';

@JsonSerializable()
class Results{

  Results(this.middleArea);

  @JsonKey(name : "results")
  MiddleArea middleArea;

  factory Results.fromJson(Map<String, dynamic> json) => _$ResultsFromJson(json);
  Map<String, dynamic> toJson() => _$ResultsToJson(this);

}