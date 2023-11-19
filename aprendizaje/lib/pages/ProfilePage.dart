import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String newName = "Nombre de Usuario";
  String newEmail = "elias@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar Perfil"),
        backgroundColor: Color(0xFF9C2CF3),
      ),
      backgroundColor: Color.fromARGB(241, 221, 229, 255),
      body: Center(
        child: Card(
          elevation: 15,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF9C2CF3)),
                  ),
                  onPressed: () {
                    Navigator.pop(
                      context,
                      {'newName': newName, 'newEmail': newEmail},
                    );
                  },
                  child: Text("Guardar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


