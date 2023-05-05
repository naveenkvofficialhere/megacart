import 'package:flutter/material.dart';
import 'package:mega_cart/themes/darkTheme.dart';
import 'package:mega_cart/themes/lightTheme.dart';
import 'package:mega_cart/view/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme:  Light.themeData(context), //change Light to Dark to get dark view

        home: HomeScreenLight(),
      );
    });
  }
}
