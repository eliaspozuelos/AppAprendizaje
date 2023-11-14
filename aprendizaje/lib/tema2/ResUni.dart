import 'package:aprendizaje/Tema2/Prueba1.dart';
import 'package:aprendizaje/tema2/Prueba2.dart';
import 'package:aprendizaje/tema2/Prueba3.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ResUni extends StatefulWidget {
  const ResUni ({Key? key}) : super(key: key);

  @override
  _ResUniState createState() => _ResUniState();
}

class _ResUniState extends State<ResUni> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/ResUniNum.mp4');
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
                      'Resta unidades a un número de dos cifras',
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
                            "La resta de unidades es como quitar objetos de un montón de juguetes. Imagina que tienes un montón de carritos, y quieres saber cuántos carritos quedan después de que das algunos a un amigo. Si tienes 23 carritos y le das 5 carritos a tu amigo, puedes restar 5 de los carritos que tenías. Entonces, 23 (tu montón de carritos) - 5 (los carritos que diste) es igual a 18. Ahora tienes 18 carritos en tu montón.Entonces, la resta de unidades es como quitar algunos objetos (en este caso, carritos) de un grupo más grande y descubrir cuántos objetos te quedan después de dar algunos. ¡Es una forma de contar cuántos objetos te quedan cuando tomas algunos de ellos!",
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Prueba3()), // Asegúrate de usar Prueba() en lugar de prueba
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
