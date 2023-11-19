import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:aprendizaje/pages/HomePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/splash.gif"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        nextScreen: HomePage(),
      //  splashTransition: SplashTransition.sizeTransition,
        backgroundColor: Color.fromARGB(255, 128, 4, 236),
      ),
    );
  }
}
