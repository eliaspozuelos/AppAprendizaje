import 'package:flutter/material.dart';

class Prueba2 extends StatefulWidget {
  @override
  _Prueba2State createState() => _Prueba2State();
}

class _Prueba2State extends State<Prueba2> {
  int selectedOption1 = 0;
  int selectedOption2 = 0;
  int selectedOption3 = 0;
  int selectedOption4 = 0;

  Map<int, int> correctAnswers = {
    1: 1, // Pregunta 1
    2: 2, // Pregunta 2
    3: 2, // Pregunta 3
    4: 3, // Pregunta 4
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
        backgroundColor:
            Color.fromARGB(255, 122, 10, 250), // Cambia el color de la AppBar
      ),
      backgroundColor:
          Color.fromARGB(241, 221, 229, 255), // Cambia el fondo de la pantalla

      // Comienza la prueba donde están las preguntas
      body: SingleChildScrollView(
        
        child: Column(
          
          children: <Widget>[
            
            
             SizedBox(height: 15),
            Card(
              
              
              elevation: 1, // Agregar sombreado
                
             // color: const Color.fromARGB( 255, 255, 255, 255), // Cambia el color de fondo de la Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              
              child: Column(
                
                children: [
                    SizedBox(height: 15),
                  ListTile(
                    title: Text('Al iniciar la fiesta había 6 amigos. Al finalizar había un total de 10. ¿Cuántos niños llegaron después?'),
                  ),
                  Image.asset(
                    'assets/Ejer2-1.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        120, // Ajusta el alto de la imagen según tus necesidades
                  ),
                  // Opcion 1
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption1,
                        title: Text('4'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption1 = value!;
                            });
                          }
                        },
                        activeColor: selectedOption1 == 1 && answersVerified
                            ? Colors.green
                            : Colors.red,
                      ),
                      // Opcion 2
                      RadioListTile(
                        value: 2,
                        groupValue: selectedOption1,
                        title: Text('5'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption1 = value!;
                            });
                          }
                        },
                        activeColor: selectedOption1 == 1 && answersVerified
                            ? Colors.green
                            : Colors.red,
                      ),
                      // Comienza opción 3
                      RadioListTile(
                        value: 3,
                        groupValue: selectedOption1,
                        title: Text('3'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption1 = value!;
                            });
                          }
                        },
                        activeColor: selectedOption1 == 1 && answersVerified
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
             SizedBox(height: 10),
            Card(
              elevation: 15, // Agregar sombreado
              color: const Color.fromARGB(
                  255, 255, 255, 255), // Cambia el color de fondo de la Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                   SizedBox(height: 10),
                  const ListTile(
                    title: Text('¿Cuántos dulces tenías antes de que Juan te obsequiara 4, si ahora tienes 12 dulces?'),
                  ),
                  
                    Image.asset(
                    'assets/Ejer2-2.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        100, // Ajusta el alto de la imagen según tus necesidades
                  ),
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption2,
                        title: Text('6'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption2 = value!;
                            });
                          }
                        },
                        activeColor: selectedOption2 == 2 && answersVerified
                            ? Colors.green
                            : Colors.red,
                      ),
                      RadioListTile(
                        value: 2,
                        groupValue: selectedOption2,
                        title: Text('8'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption2 = value!;
                            });
                          }
                        },
                        activeColor: selectedOption2 == 2 && answersVerified
                            ? Colors.green
                            : Colors.red,
                      ),
                      RadioListTile(
                        value: 3,
                        groupValue: selectedOption2,
                        title: Text('10'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption2 = value!;
                            });
                          }
                        },
                        activeColor: selectedOption2 == 2 && answersVerified
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
            //comienza pregunta 3
             SizedBox(height: 10),
             Card(
              elevation: 15, // Agregar sombreado
              color: const Color.fromARGB(
                  255, 255, 255, 255), // Cambia el color de fondo de la Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              
              child: Column(
                
                children: [
                   SizedBox(height: 10),
                  const ListTile(
                    title: Text('Si ya plantaste 3 árboles y aún te falta plantar 4, ¿cuántos árboles tenías en total para plantar?'),
                  ),
                    Image.asset(
                    'assets/Ejer2-3.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        350, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        100, // Ajusta el alto de la imagen según tus necesidades
                  ),
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption3,
                        title: Text('12'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption3 = value!;
                            });
                          }
                        },
                        activeColor: selectedOption3 == 2 && answersVerified
                            ? Colors.green
                            : Colors.red,
                      ),
                      RadioListTile(
                        value: 2,
                        groupValue: selectedOption3,
                        title: Text('7'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption3 = value!;
                            });
                          }
                        },
                        activeColor: selectedOption3 == 2 && answersVerified
                            ? Colors.green
                            : Colors.red,
                      ),
                      RadioListTile(
                        value: 3,
                        groupValue: selectedOption3,
                        title: Text('9'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption3 = value!;
                            });
                          }
                        },
                        activeColor: selectedOption3 == 2 && answersVerified
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
            //comieza pregunta 4
             SizedBox(height: 10),
             Card(
              elevation: 15, // Agregar sombreado
              color: const Color.fromARGB(
                  255, 255, 255, 255), // Cambia el color de fondo de la Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              
              child: Column(
                
                children: [
                   SizedBox(height: 10),
                  const ListTile(
                    title: Text('Tienes 8 estrellas y ganas 3 más. ¿Cuántas estrellas tienes ahora?'),
                  ),
                    Image.asset(
                    'assets/Ejer2-4.jpg', // Reemplaza con la ruta de tu imagen
                    width:
                        400, // Ajusta el ancho de la imagen según tus necesidades
                    height:
                        150, // Ajusta el alto de la imagen según tus necesidades
                  ),
                  // Opción
                  Column(
                    children: [
                      RadioListTile(
                        value: 1,
                        groupValue: selectedOption4,
                        title: Text('3'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption4 = value!;
                            });
                          }
                        },
                        activeColor: selectedOption4== 3 && answersVerified
                            ? Colors.green
                            : Colors.red,
                      ),
                      RadioListTile(
                        value: 2,
                        groupValue: selectedOption4,
                        title: Text('10'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption4= value!;
                            });
                          }
                        },
                        activeColor: selectedOption4 == 3 && answersVerified
                            ? Colors.green
                            : Colors.red,
                      ),
                      RadioListTile(
                        value: 3,
                        groupValue: selectedOption4,
                        title: Text('11'),
                        onChanged: (value) {
                          if (!answersVerified) {
                            setState(() {
                              selectedOption4 = value!;
                            });
                          }
                        },
                        activeColor: selectedOption4 == 3 && answersVerified
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
            
            // Repite el mismo patrón para las preguntas restantes
          Container(
              margin: const EdgeInsets.only(
                  top: 10,
                  bottom:
                      20),

            child: ElevatedButton(
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
                    
                  if (selectedOption3 == correctAnswers[2]) {
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


                  // Añade las validaciones para las otras preguntas aquí

                  setState(() {
                    answersVerified = true;
                  });
                }
              },
               style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(
                      255, 122, 10, 250), // Cambia el color de fondo del botón
                  onPrimary:
                      Colors.white, // Cambia el color del texto del botón
                  elevation: 5, // Cambia la elevación del botón
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Añade esquinas redondeadas al botón
                  
                  ),
                  
                ),
                
                 child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: const Text(
                    'Verificar Respuestas',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
