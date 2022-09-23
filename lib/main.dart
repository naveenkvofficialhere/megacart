import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mega_cart/cart/cart_provider.dart';
import 'package:mega_cart/cart/product_list.dart';
import 'package:mega_cart/controllers/cart_controller.dart';
import 'package:mega_cart/controllers/product_controller.dart';
import 'package:mega_cart/screens/splashScreen.dart';
import 'package:provider/provider.dart';

import '/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'controllers/appController.dart';
import 'controllers/payments_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SplashScreen(),
          // ProductListScreen(),
        );
      }),
    );
  }
}
