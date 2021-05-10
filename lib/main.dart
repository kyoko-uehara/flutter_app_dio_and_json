import 'package:flutter/material.dart';
import 'package:flutter_app_dio_and_json/screen/list_area_screen.dart';
import 'screen/shop_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

final helloWorldProvider = Provider((ref) => 'Hello world');
// ignore: top_level_function_literal_block
final counterProvider = StateNotifierProvider((ref){
  return Counter();
});

class Counter extends StateNotifier<int> {
  Counter(): super(0);
  void increment() => state++;
}

void main() {
  runApp(
      ProviderScope(child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child){
        final helloworld = watch(helloWorldProvider);

        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.red,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: ListAreaScreen(),
          // Scaffold(
          //   body: Center(
          //     child: Text(helloworld),
          //   ),
          // ),
        );
      },
    );
  }
}
