import 'package:flutter/material.dart';

class EjercicioTercerSubTema extends StatefulWidget {
  @override
  EjercicioTercerSubTemaState createState() => EjercicioTercerSubTemaState();
}

class EjercicioTercerSubTemaState extends State<EjercicioTercerSubTema> {
  int selectedOption1 = 0;
  int selectedOption2 = 0;
  int selectedOption3 = 0;
  int selectedOption4 = 0;
  int selectedOption5 = 0;

  Map<int, int> correctAnswers = {
    1: 1, // Pregunta 1
    2: 4, // Pregunta 2
    3: 3, // Pregunta 3
    4: 1, // Pregunta 4
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
                    title: Text('Pregunta 1: ¿Qué número se forma al sumar 600+70+2?'),
                  ),
                  
                  // Opcion 1
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption1,
                        title: Text('672'),
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
                        title: Text('267'),
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
                        title: Text('726'),
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
                        title: Text('762'),
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
                    title: Text('Pregunta 2: ¿Qué número se forma al sumar 800+20+5?'),
                  ),              
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption2,
                        title: Text('258'),
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
                        title: Text('582'),
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
                        title: Text('285'),
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
                        title: Text('825'),
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
                    title: Text('Pregunta 3: ¿Qué número se forma al sumar 500+40+8?'),
                  ),                  
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption3,
                        title: Text('845'),
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
                        title: Text('485'),
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
                        title: Text('548'),
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
                        title: Text('458'),
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
                    title: Text('Pregunta 4: ¿Qué número se forma al sumar 300+90+9?'),
                  ),
                  
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption2,
                        title: Text('399'),
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
                        title: Text('999'),
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
                        title: Text('939'),
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
                        title: Text('993'),
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
                    title: Text('Pregunta 5: ¿Qué número se forma al sumar 100+10+1?'),
                  ),                  
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption5,
                        title: Text('110'),
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
                        title: Text('101'),
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
                        title: Text('100'),
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
                        title: Text('111'),
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