
import 'package:aprendizaje/Widgets/ViewLit.dart';
import 'package:aprendizaje/Widgets/ViewMat.dart';
import 'package:flutter/material.dart';

class ViewCategories extends StatelessWidget {
  final String category;

  const ViewCategories(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' $category'),
          backgroundColor:  Color.fromARGB(255, 122, 10, 250), 
      ),
       backgroundColor:  Color.fromARGB(241, 221, 229, 255),
      body: ListView(
        children: [
          if (category == 'Literatura')
            // Widgets específicos para la categoría "Literatura"
            const Column(
              children: [
                Text('Libros de Literatura'),
                // Agrega aquí los widgets específicos para Literatura
                ViewLit(),
              ],
            )
          else if (category == 'Adicion y Sustraccion')
            // Widgets específicos para la categoría "Matemáticas"
            const Column(
              children: [
              
                ViewMat(),
                // Agrega aquí los widgets específicos para Matemáticas
              ],
            )
          // Agrega más "else if" para otras categorías según sea necesario
          else
            // Si no coincide con ninguna categoría, puedes mostrar un mensaje predeterminado
            const Center(
              child: Text('No se encontraron elementos para esta categoría.'),
            ),
        ],
      ),
    );
  }
}
