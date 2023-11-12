import 'package:flutter/material.dart';

class Prueba extends StatefulWidget {
  @override
  _PruebaState createState() => _PruebaState();
}

class _PruebaState extends State<Prueba> {
  int selectedOption1 = 0;
  int selectedOption2 = 0;
  int selectedOption3 = 0;
  int selectedOption4 = 0;

  Map<int, int> correctAnswers = {
    1: 1, // Pregunta 1
    2: 2, // Pregunta 2
    3: 1, // Pregunta 3
    4: 1, // Pregunta 4
  };

  Map<int, String> feedbackMessages = {
    1: '', // Inicialmente vacío
    2: '', // Inicialmente vacío
    3: '', // Inicialmente vacío
    4: '', // Inicialmente vacío
  };

  bool answersVerified = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prueba tus conocimientos"),
        backgroundColor:  Color.fromARGB(255, 122, 10, 250), // Cambia el color de la AppBar
      ),
      backgroundColor:  Color.fromARGB(241, 221, 229, 255),// Cambia el fondo de la pantalla

      // Comienza la prueba donde están las preguntas
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              elevation: 15, // Agregar sombreado
              color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color de fondo de la Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Pregunta 1: ¿Cuál es la capital de Francia?'),
                  ),
                  // Opcion 1
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption1,
                        title: Text('París'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption1 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption1 == 1 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      // Opcion 2
                      RadioListTile(
                        value: 2,
                        groupValue: selectedOption1,
                        title: Text('Esta no es '),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption1 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption1 == 1 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      // Comienza opción 3
                      RadioListTile(
                        value: 3,
                        groupValue: selectedOption1,
                        title: Text('Esta tampoco'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption1 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption1 == 1 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      if (feedbackMessages[1] != '')
                        Text(
                          feedbackMessages[1]!,
                          style: TextStyle(
                            color: feedbackMessages[1] == 'Correcto'
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            // Comienza Pregunta 2
            Card(
               elevation: 15, // Agregar sombreado
              color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color de fondo de la Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Pregunta 2: ¿Cuál es la capital de España?'),
                  ),
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption2,
                        title: Text('No es'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption2 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption2 == 2 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      RadioListTile(
                        value: 2,
                        groupValue: selectedOption2,
                        title: Text('Madrid'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption2 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption2 == 2 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      RadioListTile(
                        value: 3,
                        groupValue: selectedOption2,
                        title: Text('Nel'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption2 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption2 == 2 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      if (feedbackMessages[2] != '')
                        Text(
                          feedbackMessages[2]!,
                          style: TextStyle(
                            color: feedbackMessages[2] == 'Correcto'
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            // Repite el mismo patrón para las preguntas restantes

            ElevatedButton(
              onPressed: () {
                if (!answersVerified) {
                  int correctCount = 0;

                  if (selectedOption1 == correctAnswers[1]) {
                    feedbackMessages[1] = 'Correcto';
                    correctCount++;
                  } else {
                    feedbackMessages[1] = 'Incorrecto';
                  }

                  if (selectedOption2 == correctAnswers[2]) {
                    feedbackMessages[2] = 'Correcto';
                    correctCount++;
                  } else {
                    feedbackMessages[2] = 'Incorrecto';
                  }

                  // Añade las validaciones para las otras preguntas aquí

                  setState(() {
                    answersVerified = true;
                  });
                }
              },
              child: Text('Verificar'),
            ),
          ],
        ),
      ),
    );
  }
}
