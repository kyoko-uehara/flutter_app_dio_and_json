import 'package:flutter/material.dart';
import 'package:flutter_app_dio_and_json/screen/list_area_screen.dart';
import 'screen/shop_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ListAreaScreen(),
    );
  }
}
