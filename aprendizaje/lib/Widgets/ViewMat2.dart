import 'package:aprendizaje/tema3/Division.dart';
import 'package:aprendizaje/tema3/Multiplicacion.dart';
import 'package:aprendizaje/tema3/RepasoDivision.dart';
import 'package:aprendizaje/tema3/Trucos_Multiplicacion.dart';
import 'package:flutter/material.dart';

class ViewMat2 extends StatelessWidget {
  const ViewMat2({super.key});

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
                                    Multiplicacion()), // Asegúrate de usar Prueba() en lugar de prueba
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
                                "Multiplicacion",
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
                                "Formas mas faciles de sumar",
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
                                    TrucosMultiplicacion()), // Asegúrate de usar Prueba() en lugar de prueba
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
                                "Trucos para multiplicar",
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
                                "Descomposiciones de numeros",
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
                                    Division()), // Asegúrate de usar Prueba() en lugar de prueba
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
                                "Division",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                  height:
                                      10), // Agrega espacio vertical de 10 unidades entre los textos
                              Text(
                                "Distribuir en partes iguales",
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
                                    RepasoDivision()), // Asegúrate de usar Prueba() en lugar de prueba
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
                                "Repaso de divisiones",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                  height:
                                      10), // Agrega espacio vertical de 10 unidades entre los textos
                              Text(
                                "Partes de una división",
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