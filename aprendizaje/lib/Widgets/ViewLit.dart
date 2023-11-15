import 'package:aprendizaje/tema1/Agrupaciones.dart';
import 'package:aprendizaje/tema1/Centenas.dart';
import 'package:aprendizaje/tema1/ContHasta30.dart';
import 'package:aprendizaje/tema1/Decenas.dart';
import 'package:flutter/material.dart';

class ViewLit extends StatelessWidget {
  const ViewLit({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                    color:  Color.fromARGB(255, 247, 249, 255),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          print(
                              "Contenedor clickeado. Navegar a otra parte o realizar otras acciones aquí.");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ContHasta30()), // Asegúrate de usar Prueba() en lugar de prueba
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/contando.png",
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ),
                      Container(
                        width: 198,
                        child: const Padding(
                          padding: EdgeInsets.only(
                              top:
                                  10), // Agrega espacio vertical de 10 unidades arriba del Column
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Contando hasta 30",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                  textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                  height:
                                      10), // Agrega espacio vertical de 10 unidades entre los textos
                              Text(
                                "Aprendiendo a contar",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //sig card
                Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                    color:  Color.fromARGB(255, 247, 249, 255),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          print(
                              "Contenedor clickeado. Navegar a otra parte o realizar otras acciones aquí.");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Decenas()), // Asegúrate de usar Prueba() en lugar de prueba
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/decenas.png",
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ),
                      Container(
                        width: 198,
                        child: const Padding(
                          padding: EdgeInsets.only(
                              top:
                                  10), // Agrega espacio vertical de 10 unidades arriba del Column
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Decenas",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                  textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                  height:
                                      10), // Agrega espacio vertical de 10 unidades entre los textos
                              Text(
                                "Grupos de 10",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                  textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //sig card
                Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                    color:  Color.fromARGB(255, 247, 249, 255),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          print(
                              "Contenedor clickeado. Navegar a otra parte o realizar otras acciones aquí.");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Centenas()), // Asegúrate de usar Prueba() en lugar de prueba
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/centenas.png",
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ),
                      Container(
                        width: 198,
                        child: const Padding(
                          padding: EdgeInsets.only(
                              top:
                                  10), // Agrega espacio vertical de 10 unidades arriba del Column
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Centenas",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                  height:
                                      10), // Agrega espacio vertical de 10 unidades entre los textos
                              Text(
                                "Grupos de 100",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //sig card
                Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                    color:  Color.fromARGB(255, 247, 249, 255),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          print(
                              "Contenedor clickeado. Navegar a otra parte o realizar otras acciones aquí.");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Agrupaciones()), // Asegúrate de usar Prueba() en lugar de prueba
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/agrupaciones.png",
                            height: 160,
                            width: 160,
                          ),
                        ),
                      ),
                      Container(
                        width: 198,
                        child: const Padding(
                          padding: EdgeInsets.only(
                              top:
                                  10), // Agrega espacio vertical de 10 unidades arriba del Column
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Agrupaciones",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                  height:
                                      10), // Agrega espacio vertical de 10 unidades entre los textos
                              Text(
                                "Diferentes grupos de cosas para contar más fácil",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),              //sig card              
            ],
          )),
    );
  }
}
