import 'package:flutter/material.dart';
import 'splash.dart';
import 'introductory.dart';
import 'dashboard.dart';
import 'profile_screen.dart';
import 'cart.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        'introductory': (context) => Introduction(),
        'dashboard': (context) => Dashboard(),
        'profile_screen': (context) => Profile(),
        'cart': (context) => Cart(),
      },
    );
  }
}


