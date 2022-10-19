import 'dart:ui';

import 'package:flutter/material.dart';

class Light {
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      // UI
      // brightness: Brightness.dark,
      primaryColor: Color(0xff000000),
      // accentColor: Color(0xff000000),
      backgroundColor: Color(0xffFFFFFF),
      scaffoldBackgroundColor: Color(0xffF7F7F7),

      //text style
      textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(
            fontSize: 16.0,
            color: Color(0xff000000),
          ), //
          bodyText1: TextStyle(fontSize: 14, color: Color(0xff000000))),
    );
  }
}
