//import 'package:aprendizaje/pages/HomePage.dart';
import 'package:aprendizaje/pages/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  Widget build(BuildContext context){
    return MaterialApp(
      title: "Aprendizaje App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         
        scaffoldBackgroundColor: Color.fromARGB(241, 221, 229, 255), // Corregir el nombre del parámetro
      ),
      routes :{
           // Ruta de la pantalla de bienvenida (Splash Screen)
        "/": (context) => SplashScreen(),
        // Ruta de la pantalla de bienvenida
        //"/": (context) => HomePage(),
      },
    );
  }
}
