import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String newName = "Nombre de User"; // Inicializa con el nombre existente
  String newEmail = "elias@gmail.com"; // Inicializa con el correo existente

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar Perfil"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nuevo Nombre'),
              onChanged: (value) {
                setState(() {
                  newName = value;
                });
              },
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: 'Nuevo Correo'),
              onChanged: (value) {
                setState(() {
                  newEmail = value;
                });
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              // En el onPressed del ElevatedButton en ProfilePage
              onPressed: () {
                // Guardar la información del perfil
  
                // Regresar a la página anterior con los datos actualizados
                Navigator.pop(
                    context, {'newName': newName, 'newEmail': newEmail});
              },

              child: Text("Guardar"),
            ),
          ],
        ),
      ),
    );
  }
  
}

