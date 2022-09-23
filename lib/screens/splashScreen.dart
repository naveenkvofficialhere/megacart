import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mega_cart/screens/login_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));

    // () => checkIfLoggedIn(context));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: const Color(0xFF4C98AD),
      body: Center(
        child: Container(
          height: 150,
          child: Image.asset(
            "assets/cart.png",
            // fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// checkIfLoggedIn(BuildContext context) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   bool checkValue = prefs.containsKey('is_loggedIn');
//   if (checkValue && prefs.getBool('is_loggedIn')!) {
//     return Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => OutsideDoor()));
//   } else {
//     return Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => MobileNumber()));
//   }
// }
