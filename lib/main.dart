import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cash_cat/src/presentation/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        duration: 8000,
        splash: Image.asset("asset/images/logo2.png"),
        splashIconSize: 130,

        nextScreen: HomeScreen(),
        backgroundColor: Color(0xFFEAFFFE),
      ),
    );
  }
}
