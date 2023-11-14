import 'package:aprendizaje/tema1/EjercicioPrimerSubTema.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ContHasta30 extends StatefulWidget {
  const ContHasta30 ({Key? key}) : super(key: key);

  @override
  ContHasta30State createState() => ContHasta30State();
}

class ContHasta30State extends State<ContHasta30>{
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/Contando_hasta_30.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONTENIDO'),
        backgroundColor: Color.fromARGB(255, 122, 10, 250),
      ),
      backgroundColor: Color.fromARGB(241, 221, 229, 255),
      body: SingleChildScrollView(
        
        child: Column(
          children: <Widget>[
            const Card(
              
              elevation: 10,
              margin: EdgeInsets.all(20.0),
              color: Colors.white,// Color rojo (ARGB)
              child: Column(
                children: <Widget>[
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      'Contando hasta 30',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [                          
                          SizedBox(height: 5), // separacion
                          Text(
                            "Contar hasta 30 es como seguir una divertida secuencia de números hasta llegar al número 30. Comenzamos con el número 1, luego seguimos con el 2, después el 3 y así sucesivamente, sumando uno cada vez. ¡Es como subir escalones o contar los juguetes en una colección! Cuando llegas al número 30, ¡has contado un montón! Puedes usar tus dedos, bloques o cualquier cosa para ayudarte a seguir la cuenta. ¡Es genial practicar y divertirse contando hasta el 30!",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),                  
                ],
              ),
            ),
            Column(
              children: [
                const Text(
                  'Video Explicativo',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: FutureBuilder(
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return Column(
                          children: [
                            AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            ),
                            VideoProgressIndicator(_controller,
                                allowScrubbing: true),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.play_arrow),
                                  onPressed: () {
                                    _controller.play();
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.pause),
                                  onPressed: () {
                                    _controller.pause();
                                  },
                                ),
                              ],
                            ),
                          ],
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 10,
                  bottom:
                      20), // Ajusta la cantidad de espacio en la parte superior e inferior
              child: ElevatedButton(
                onPressed: () {
                   print(
                      "Contenedor clickeado. Navegar a otra parte o realizar otras acciones aquí.");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EjercicioPrimerSubTema()), // Asegúrate de usar Prueba() en lugar de prueba
                  );
                  // Agrega la lógica para realizar la prueba aquí.
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
                    'Realizar Prueba',
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