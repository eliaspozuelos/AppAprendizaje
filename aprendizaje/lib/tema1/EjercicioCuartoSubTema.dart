import 'package:flutter/material.dart';

class EjercicioCuartoSubTema extends StatefulWidget {
  @override
  EjercicioCuartoSubTemaState createState() => EjercicioCuartoSubTemaState();
}

class EjercicioCuartoSubTemaState extends State<EjercicioCuartoSubTema> {
  int selectedOption1 = 0;
  int selectedOption2 = 0;
  int selectedOption3 = 0;
  int selectedOption4 = 0;
  int selectedOption5 = 0;

  Map<int, int> correctAnswers = {
    1: 2, // Pregunta 1
    2: 5, // Pregunta 2
    3: 2, // Pregunta 3
    4: 2, // Pregunta 4
    5: 3,
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
                    title: Text('Pregunta 1: ¿Cuántas manzanas se muestran en total?'),
                  ),
                  Image.asset(
                    'assets/Ejercicio4-1.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        500, // Ajusta el alto de la imagen según tus necesidades
                  ),
                  // Opcion 1
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption1,
                        title: Text('36'),
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
                        title: Text('37'),
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
                        title: Text('39'),
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
                        title: Text('38'),
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
                    title: Text('Pregunta 2: ¿Cuántas monedas se ven en la pantalla?'),
                  ),
                  Image.asset(
                    'assets/Ejercicio4-2.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        231, // Ajusta el alto de la imagen según tus necesidades
                  ),              
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption2,
                        title: Text('87'),
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
                        title: Text('84'),
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
                        title: Text('86'),
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
                        title: Text('85'),
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
                    title: Text('Pregunta 3: El número de canicas que se muestran es...'),
                  ),
                  Image.asset(
                    'assets/Ejercicio4-3.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        231, // Ajusta el alto de la imagen según tus necesidades
                  ),                  
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption3,
                        title: Text('55'),
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
                        title: Text('56'),
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
                        title: Text('58'),
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
                        title: Text('57'),
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
                    title: Text('Pregunta 4: ¿Cuántas cucharas hay?'),
                  ),
                  Image.asset(
                    'assets/Ejercicio4-4.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        231, // Ajusta el alto de la imagen según tus necesidades
                  ),
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption2,
                        title: Text('67'),
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
                        title: Text('69'),
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
                        title: Text('70'),
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
                        title: Text('68'),
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
                    title: Text('Pregunta 5: ¿Cuál es el total de sacapuntas que se ven en pantalla?'),
                  ),
                  Image.asset(
                    'assets/Ejercicio4-5.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        257, // Ajusta el alto de la imagen según tus necesidades
                  ),
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption5,
                        title: Text('43'),
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
                        title: Text('42'),
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
                        title: Text('44'),
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
                        title: Text('45'),
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