import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:aprendizaje/pages/HomePage.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    
    // Puedes personalizar el contenido de tu pantalla de bienvenida aquí
  return MaterialApp(
    debugShowCheckedModeBanner:  false,
    home: AnimatedSplashScreen(
        splash: Image.asset("assets/3.png"),
        nextScreen: HomePage(),
        splashTransition: SplashTransition.sizeTransition,
        backgroundColor: Color.fromARGB(255, 128, 4, 236),
    ),
  );
  }
}
