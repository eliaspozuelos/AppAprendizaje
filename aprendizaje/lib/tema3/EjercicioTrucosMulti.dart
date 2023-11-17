import 'package:flutter/material.dart';

class EjercicioTrucosMulti extends StatefulWidget {
  @override
  EjercicioTrucosMultiState createState() => EjercicioTrucosMultiState();
}

class EjercicioTrucosMultiState extends State<EjercicioTrucosMulti> {
  int selectedOption1 = 0;
  int selectedOption2 = 0;
  int selectedOption3 = 0;
  int selectedOption4 = 0;
  int selectedOption5 = 0;

  Map<int, int> correctAnswers = {
    1: 4, // Pregunta 1
    2: 3, // Pregunta 2
    3: 2, // Pregunta 3
    4: 3, // Pregunta 4
    5: 4,
  };

  Map<int, String> feedbackMessages = {
    1: '', // Inicialmente vacío
    2: '', // Inicialmente vacío
    3: '', // Inicialmente vacío
    4: '', // Inicialmente vacío
    5: '',
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
                    title: Text('Pregunta 1: Los capítulos de una serie educativa duran 35 minutos cada uno. Si la temporada tiene 15 capítulos, ¿cuántos minutos dura en total toda la temporada?'),
                  ),                  
                  // Opcion 1
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption1,
                        title: Text('350'),
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
                        title: Text('150'),
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
                        title: Text('315'),
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
                      RadioListTile(
                        value: 4,
                        groupValue: selectedOption1,
                        title: Text('525'),
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
                    title: Text('Pregunta 2: En una papelería venden cuadernos profesionales en 12 dolares. Si Julieta compró 5 cuadernos y su hermano 3, ¿cuánto gastaron en total?'),
                  ),                  
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption2,
                        title: Text('60 dolares'),
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
                        title: Text('36 dolares'),
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
                        title: Text('96 dolares'),
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
                        value: 4,
                        groupValue: selectedOption2,
                        title: Text('86 dolares'),
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
            Card(
               elevation: 15, // Agregar sombreado
              color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color de fondo de la Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Pregunta 3: Durante todo el mes de diciembre, Erika ahorró 15 dolares diarios. Si el mes, tiene 31 días, ¿cuánto dinero ahorró Erika?'),
                  ),                  
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption3,
                        title: Text('310 dolares'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption3 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption3 == 3 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      RadioListTile(
                        value: 2,
                        groupValue: selectedOption3,
                        title: Text('465 dolares'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption3 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption3 == 3 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      RadioListTile(
                        value: 3,
                        groupValue: selectedOption3,
                        title: Text('450 dolares'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption3 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption3 == 3 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      RadioListTile(
                        value: 4,
                        groupValue: selectedOption3,
                        title: Text('155 dolares'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption3 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption3 == 3 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      if (feedbackMessages[3] != '')
                        Text(
                          feedbackMessages[3]!,
                          style: TextStyle(
                            color: feedbackMessages[3] == 'Correcto'
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
               elevation: 15, // Agregar sombreado
              color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color de fondo de la Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Pregunta 4: En la recaudería de la señora Luisa, Roberto compró tres docenas de huevos. Si cada uno de los huevos cuesta 2 dolares, ¿cuánto gastó Roberto?'),
                  ),                  
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption2,
                        title: Text('12 dolares'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption4 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption4 == 4 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      RadioListTile(
                        value: 2,
                        groupValue: selectedOption4,
                        title: Text('24 dolares'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption4 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption4 == 4 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      RadioListTile(
                        value: 3,
                        groupValue: selectedOption4,
                        title: Text('72 dolares'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption4 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption4 == 4 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      RadioListTile(
                        value: 4,
                        groupValue: selectedOption4,
                        title: Text('36 dolares'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption4 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption4 == 4 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      if (feedbackMessages[4] != '')
                        Text(
                          feedbackMessages[4]!,
                          style: TextStyle(
                            color: feedbackMessages[4] == 'Correcto'
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
               elevation: 15, // Agregar sombreado
              color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color de fondo de la Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Pregunta 5: Si una hora tiene 60 minutos, ¿cuántos minutos son medio día?'),
                  ),                  
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption5,
                        title: Text('600'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption5 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption5 == 5 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      RadioListTile(
                        value: 2,
                        groupValue: selectedOption5,
                        title: Text('120'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption5 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption5 == 5 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      RadioListTile(
                        value: 3,
                        groupValue: selectedOption5,
                        title: Text('360'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption5 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption5 == 5 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      RadioListTile(
                        value: 4,
                        groupValue: selectedOption5,
                        title: Text('720'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption5 = value!;
                            });
                          }
                        },
                        activeColor:
                            selectedOption5 == 5 && answersVerified
                                ? Colors.green
                                : Colors.red,
                      ),
                      if (feedbackMessages[5] != '')
                        Text(
                          feedbackMessages[5]!,
                          style: TextStyle(
                            color: feedbackMessages[5] == 'Correcto'
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
                  if (selectedOption3 == correctAnswers[3]) {
                    feedbackMessages[3] = 'Correcto';
                    correctCount++;
                  } else {
                    feedbackMessages[3] = 'Incorrecto';
                  }
                  if (selectedOption4 == correctAnswers[4]) {
                    feedbackMessages[4] = 'Correcto';
                    correctCount++;
                  } else {
                    feedbackMessages[4] = 'Incorrecto';
                  }
                  if (selectedOption5 == correctAnswers[5]) {
                    feedbackMessages[5] = 'Correcto';
                    correctCount++;
                  } else {
                    feedbackMessages[5] = 'Incorrecto';
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