import 'package:flutter/material.dart';

class EjercicioDivRepaso extends StatefulWidget {
  @override
  EjercicioDivRepasoState createState() => EjercicioDivRepasoState();
}

class EjercicioDivRepasoState extends State<EjercicioDivRepaso> {
  int selectedOption1 = 0;
  int selectedOption2 = 0;
  int selectedOption3 = 0;
  int selectedOption4 = 0;
  int selectedOption5 = 0;

  Map<int, int> correctAnswers = {
    1: 2, // Pregunta 1
    2: 3, // Pregunta 2
    3: 3, // Pregunta 3
    4: 4, // Pregunta 4
    5: 2,
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
                    title: Text('Pregunta 1: Indica las partes de la división, según corresponda.'),
                  ),
                  Image.asset(
                    'assets/Ejercicio4-4-1.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        450, // Ajusta el alto de la imagen según tus necesidades
                  ),
                  // Opcion 1
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption1,
                        title: Text('a-cociente, b-dividendo, c-divisor, d-residuo'),
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
                        title: Text('a-cociente, b-divisor, c-dividendo, d-residuo'),
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
                        title: Text('a-residuo, b-cociente, c-divisor, d-dividendo'),
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
                        title: Text('a-divisor, b-dividendo, c-residuo, d-cociente'),
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
                    title: Text('Pregunta 2: Anel planea viajar y ahorró 4300 pesos. Cada boleto de camión cuesta 685. Si utiliza todo el dinero para comprar boletos de camión, ¿cuánto le sobra?'),
                  ),                  
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption2,
                        title: Text('200'),
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
                        title: Text('680'),
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
                        title: Text('190'),
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
                        title: Text('3615'),
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
                    title: Text('Pregunta 3: Realiza la siguiente operación y encuentra el cociente y el residuo.'),
                  ),
                  Image.asset(
                    'assets/Ejercicio4-4-3.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        300, // Ajusta el alto de la imagen según tus necesidades
                  ),
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption3,
                        title: Text('10 y 3'),
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
                        title: Text('10 y 9'),
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
                        title: Text('9 y 3'),
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
                        title: Text('3 y 9'),
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
                    title: Text('Pregunta 4: Si Eva tiene 33 dulces y los quiere dividir entre sus 4 hermanos, ¿cuántos dulces recibe cada uno y cuántos sobran?'),
                  ),                  
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption2,
                        title: Text('8, 2'),
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
                        title: Text('6, 4'),
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
                        title: Text('7, 5'),
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
                        title: Text('8,1'),
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
                    title: Text('Pregunta 5: Selecciona la división que represente correctamente los números de la siguiente comprobación.'),
                  ),
                  Image.asset(
                    'assets/Ejercicio4-4-5.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        303, // Ajusta el alto de la imagen según tus necesidades
                  ),
                  // Opción
                  Column(
                    children: [
                      
                      RadioListTile(
                        
                        value: 1,
                        groupValue: selectedOption5,
                        title: Text('30 libros'),
                        
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
                      Image.asset(
                    'assets/Respuesta4-4-1.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        303, // Ajusta el alto de la imagen según tus necesidades
                  ),                      
                      RadioListTile(
                        value: 2,
                        groupValue: selectedOption5,
                        title: Text('25 libros'),
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
                      Image.asset(
                    'assets/Respuesta4-4-2.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        303, // Ajusta el alto de la imagen según tus necesidades
                  ),
                      RadioListTile(
                        value: 3,
                        groupValue: selectedOption5,
                        title: Text('28 libros'),
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
                      Image.asset(
                    'assets/Respuesta4-4-3.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        303, // Ajusta el alto de la imagen según tus necesidades
                  ),
                      RadioListTile(
                        value: 4,
                        groupValue: selectedOption5,
                        title: Text('20 libros'),
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
                      Image.asset(
                    'assets/Respuesta4-4-4.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        303, // Ajusta el alto de la imagen según tus necesidades
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