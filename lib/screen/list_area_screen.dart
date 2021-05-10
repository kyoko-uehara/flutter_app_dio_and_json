import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_dio_and_json/http_service.dart';
import 'package:flutter_app_dio_and_json/main.dart';
import 'package:flutter_app_dio_and_json/model/middle_area.dart';
import 'package:flutter_app_dio_and_json/model/middle_area_name.dart';
import 'package:flutter_app_dio_and_json/model/results.dart';
import 'package:flutter_app_dio_and_json/screen/shop_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerWidget{
  @override
  Widget build(BuildContext context, ScopedReader watch){
    final count = watch(counterProvider);
    return Text('$count');

  }

}

class ListAreaScreen extends StatefulWidget {
  @override
  _ListAreaScreenState createState() => _ListAreaScreenState();
}

class _ListAreaScreenState extends State<ListAreaScreen> {
  bool isLoading = false;
  HttpService http;
  Results _results;
  MiddleArea _middleArea;
  List<MiddleAreaName> _middleAreaNameList;

  Future geListMiddleAriaName() async {
    Response response;
    try {
      isLoading = true;
      response = await http.getRequest(
          "middle_area/v1/?key=e70a489f0c432b68&large_area=Z011&format=json");
      isLoading = false;

      if (response.statusCode == 200) {
        setState(() {

          _results = Results.fromJson(jsonDecode(response.data));
          _middleArea = _results.middleArea;
          _middleAreaNameList = _middleArea.middleAreaName;
        });
      } else {
        print("There is some problem status code not 200");
      }
    } on Exception catch (e) {
      isLoading = false;
      print(e);
    }
  }

  @override
  void initState() {
    http = HttpService();
    geListMiddleAriaName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Home(),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : _middleAreaNameList != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    final middleAreaName = _middleAreaNameList[index];

                    return Card(
                      child: ListTile(
                        title: Text(middleAreaName.name),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ShopScreen(),)
                          );
                        },
                      ),
                      //subtitle: Text(middleAreaName.code),
                    );
                  },
                  itemCount: _middleAreaNameList.length,
                )
              : Center(
                  child: Text("No Area Name Object"),
                ),
    );
  }
}
