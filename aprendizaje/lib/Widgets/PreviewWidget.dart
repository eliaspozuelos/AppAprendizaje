import 'package:aprendizaje/pages/prueba.dart';
import 'package:flutter/material.dart';

class PreviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 35,
          horizontal: 5,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  print(
                      "Contenedor clickeado. Navegar a otra parte o realizar otras acciones aquí.");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Prueba()), // Asegúrate de usar Prueba() en lugar de prueba
                  );
                },
                child: Container(
                  width: 200,
                  height: 240,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color:
                        Color(0xFFE5EAFC), // Cambia el color de fondo a #E5EAFC
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 49, 48, 48).withOpacity(0.6),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/SumasYRestas.png",
                            height: 150,
                          ),
                        ),
                        const Text(
                        "Introduccion a las sumas y restas",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign:
                            TextAlign.center, // Centra el texto horizontalmente
                      ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: 200,
                height: 240,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color:
                      Color(0xFFE5EAFC), // Cambia el color de fondo a #E5EAFC
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 49, 48, 48).withOpacity(0.6),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/ApliSumaYResta.png",
                          height: 150,
                        ),
                      ),
                     const Text(
                        "Aplicando la suma y la resta",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign:
                            TextAlign.center, // Centra el texto horizontalmente
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: 200,
                height: 240,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color:
                      Color(0xFFE5EAFC), // Cambia el color de fondo a #E5EAFC
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 49, 48, 48).withOpacity(0.6),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/RestaDosCifras.png",
                          height: 150,
                        ),
                      ),
                      const Text(
                        "Resta unidades a un numero de dos cifras",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign:
                            TextAlign.center, // Centra el texto horizontalmente
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
