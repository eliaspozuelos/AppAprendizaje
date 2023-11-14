import 'package:aprendizaje/Tema2/IntSumasYRestas.dart';
import 'package:aprendizaje/tema2/ApliSumYRes.dart';
import 'package:aprendizaje/tema2/ObDiferent.dart';
import 'package:aprendizaje/tema2/ResUni.dart';
import 'package:flutter/material.dart';

class ViewMat extends StatelessWidget {
  const ViewMat({super.key});

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
                    color: Color.fromARGB(255, 247, 249, 255),
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
                                    IntSumasYRestas()), // Asegúrate de usar Prueba() en lugar de prueba
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/SumasYRestas.png",
                            height: 140,
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
                                "Introduccion a las sumas y restas",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign
                                    .center, // Centra el texto horizontalmente
                              ),
                              SizedBox(
                                  height:
                                      10), // Agrega espacio vertical de 10 unidades entre los textos
                              Text(
                                "Introduccion al mundo de las sumas y restas",
                                style: TextStyle(
                                  fontSize: 18,
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
                    color: Color.fromARGB(255, 247, 249, 255),
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
                                    ApliSumYRes()), // Asegúrate de usar Prueba() en lugar de prueba
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/ApliSumaYResta.png",
                            height: 120,
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
                                "Aplicando las Sumas Y Restas",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign
                                    .center, // Centra el texto horizontalmente
                              ),
                              SizedBox(
                                  height:
                                      10), // Agrega espacio vertical de 10 unidades entre los textos
                              Text(
                                "Aplicando sumas y restas para mejor desarrollo de ellas",
                                style: TextStyle(
                                  fontSize: 18,
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
                    color: Color.fromARGB(255, 247, 249, 255),
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
                                    ResUni()), // Asegúrate de usar Prueba() en lugar de prueba
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/RestaDosCifras.png",
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
                                "Resta unidades a un numero de dos cifras",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign
                                    .center, // Centra el texto horizontalmente
                              ),
                              SizedBox(
                                  height:
                                      10), // Agrega espacio vertical de 10 unidades entre los textos
                              Text(
                                "Desarrola tus habilidades de resta",
                                style: TextStyle(
                                  fontSize: 19,
                                ),
                                textAlign: TextAlign
                                    .center, // Centra el texto horizontalmente
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
                    color: Color.fromARGB(255, 247, 249, 255),
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
                                    ObDiferent()), // Asegúrate de usar Prueba() en lugar de prueba
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/CantidadObjetos.png",
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
                                "Objetos diferentes, mismas cantidades",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign
                                    .center, // Centra el texto horizontalmente
                              ),
                              SizedBox(
                                  height:
                                      10), // Agrega espacio vertical de 10 unidades entre los textos
                              Text(
                                "Desarrolla tus capacidades de matematicas ",
                                style: TextStyle(
                                  fontSize: 18,
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
            ],
          )),
    );
  }
}
