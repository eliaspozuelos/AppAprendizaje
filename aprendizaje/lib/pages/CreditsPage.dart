import 'package:aprendizaje/pages/HomePage.dart';
import 'package:flutter/material.dart';

class CreditosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Créditos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Proyecto de Antropología y Desarrollo',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Desarrollado por:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '\n-Dánika Donis \n-Elías Pozuelos \n-Yarissa Debroy \n-Jacobo Martinez \n-Pablo Bolaños',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Versión 1.0.0',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print(
                      "Contenedor clickeado. Navegar a otra parte o realizar otras acciones aquí.");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomePage()), // Asegúrate de usar Prueba() en lugar de prueba
                  );
              },
              child: Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}
