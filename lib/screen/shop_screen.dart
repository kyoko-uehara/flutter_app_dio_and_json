import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_dio_and_json/http_service.dart';
import 'package:flutter_app_dio_and_json/model/shop.dart';
import 'package:flutter_app_dio_and_json/model/shop_gourmet.dart';
import 'package:flutter_app_dio_and_json/model/shop_results.dart';


class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  HttpService http;
  bool isLoading = false;

  ShopResults _results;
  ShopGourmet _gourmet;
  Shop _shop;
  List<Shop> _shopList;

  Future getShop() async{

    Response response;
    try{

      isLoading = true;

      //①グルメサーチAPI
      String url = "gourmet/v1/?key=e70a489f0c432b68";
      url = url + "&middle_area=Y005";
      url = url + "&format=json";

      response = await http.getRequest(url);

      isLoading = false;
      if (response.statusCode == 200){
        setState(() {
          _results = ShopResults.fromJson(jsonDecode(response.data));
          _gourmet = _results.shopGourmet;
          _shopList = _gourmet.shopList;

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

    getShop();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("グルメサーチAPI"),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : _shopList != null
          ? ListView.builder(
        itemBuilder: (context, index) {
          final shop = _shopList[index];
          return buildCard(shop);
        },
        itemCount: _shopList.length,
      )
          : Center(child : Text("No Shop Object")),
    );
  }

  Card buildCard(Shop _shop) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(_shop.logoImage),
          Container(height: 16,),
          Text(_shop.name,
          style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.bold),),
          Text(_shop.open),
          Text(_shop.access),
          Text(_shop.address),
        ],
      ),
      ),
    );
  }
}
