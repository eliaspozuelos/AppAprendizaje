import 'package:aprendizaje/Tema2/Prueba1.dart';
//import 'package:aprendizaje/tema2/Prueba4.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ObDiferent extends StatefulWidget {
  const ObDiferent({Key? key}) : super(key: key);

  @override
  _ObDiferentState createState() => _ObDiferentState();
}

class _ObDiferentState extends State<ObDiferent> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/ObjDiferent.mp4');
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
                      'Objetos diferentes, mismas cantidades',
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
                           " significa que tienes dos grupos de cosas, y aunque las cosas en cada grupo se ven diferentes, hay la misma cantidad de cosas en ambos grupos. Imagina que tienes una caja con 3 carritos de juguete y otra caja con 3 muñecas. Aunque los carritos y las muñecas son diferentes, tienes la misma cantidad en cada caja, que es 3.Así que, objetos diferentes, mismas cantidades es como encontrar cosas que son únicas, pero cuando las cuentas, tienen el mismo número en cada grupo. Es una forma de descubrir que aunque los objetos sean distintos, la cantidad es igual en ambos grupos. ¡Es una manera de comparar y descubrir que las cosas pueden ser diferentes pero igual de numerosas",
                           style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                 
                ],
              ),
            ),
            Column(
              children: [
                const Text(
                  'Video Explicación',
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
                 /* Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                          //  Prueba4
                          ()), // Asegúrate de usar Prueba() en lugar de prueba
                  );*/
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

/*import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class IntSumasYRestas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONTENIDO'),
        backgroundColor: Color.fromARGB(255, 122, 10, 250),
      ),
      body: Column(
        children: <Widget>[
          const Card(
            margin: EdgeInsets.all(20.0), // Margen alrededor del card
            child: Column(
              children: <Widget>[
                // Título centrado
                Center(
                  child: Text(
                    'Información',
                    style: TextStyle(
                      
                      fontSize: 20,
                    ),
                  ),
                ),
                // Contenido justificado
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Aquí puedes agregar información relevante. Esto es una prueba de texto que se puede leer claramente.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                // Puedes agregar más contenido aquí, como texto o imágenes.
              ],
            ),
          ),
          // Agregar un video al final del card
          Container(
          margin: EdgeInsets.all(16.0), // Margen alrededor del video
 // child: VideoPlayerWidget(),
          ),
          // Botón "Realizar Prueba"
          ElevatedButton(
            onPressed: () {
              // Agrega la lógica para realizar la prueba aquí.
            },
            child: Text('Realizar Prueba'),
          ),
        ],
      ),
    );
  }
}
class VideoPlayerWidget extends StatefulWidget {
  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Reemplaza 'assets/video.mp4' con la ubicación de tu video.
    _controller = VideoPlayerController.asset('assets/videos/VideoTema2.1.mp4')
      ..initialize().then((_) {
        // Asegúrate de que el widget se actualice cuando el video esté listo.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: VideoPlayer(_controller),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}*/
