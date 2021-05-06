import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_dio_and_json/http_service.dart';
import 'package:flutter_app_dio_and_json/model/middle_area_name.dart';
import 'package:flutter_app_dio_and_json/model/middle_area.dart';
import 'package:flutter_app_dio_and_json/model/results.dart';


class MiddleAriaScreen extends StatefulWidget {
  @override
  _MiddleAriaScreenState createState() => _MiddleAriaScreenState();
}

class _MiddleAriaScreenState extends State<MiddleAriaScreen> {

  HttpService http;

  Results results;
  MiddleArea middleArea;
  MiddleAreaName middleAreaName;

  bool isLoading = false;

  Future getMiddleAriaName() async{

    List<Map<String, dynamic>> nameList = List<Map<String, dynamic>>();

    Response response;
    try{

      isLoading = true;

      response = await http.getRequest("middle_area/v1/?key=e70a489f0c432b68&large_area=Z011&format=json");

      isLoading = false;


      if (response.statusCode == 200){
        setState(() {
          //results = Results.fromJson(response.data);

          //middleAreaResponse = MiddleAreaResponse.fromJson(response.data);
          //middleAreaName = middleArea.middleAreaName;


        });
      }else{
        print("There is some problem status code not 200");
      }
    } on Exception catch (e) {
      isLoading = false;
      print(e);
    }
  }


  @override
  void initState(){
    http = HttpService();

    getMiddleAriaName();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("中エリアマスタ検索API"),
      ),
      body: isLoading
        ? Center(child: CircularProgressIndicator())
        : results != null ? Container(
            width: double.infinity,
            child: Text(results.toString())
            ):Center(child: Text("No Middle Area Object!!!",),
          ),
    );
  }
}
