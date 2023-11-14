import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  final Function(String) onCategorySelected;

  CategoriesWidget({required this.onCategorySelected});

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  String selectedCategory = ''; // Para rastrear la categoría seleccionada

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 15,
        ),
        child: Row(
          children: [
            buildCategoryButton('Numeros', Color.fromARGB(255, 122, 10, 250)),
            buildCategoryButton('Adicion y Sustraccion',  Color.fromARGB(255, 122, 10, 250)),
            buildCategoryButton('Otros', Color.fromARGB(255, 122, 10, 250)),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryButton(String category, Color color) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {
          widget.onCategorySelected(category);
          setState(() {
            selectedCategory = category; // Actualiza la categoría seleccionada
          });
        },
        child: Column(
          children: [
            Container(
              width: 150,
              height: 50,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: selectedCategory == category ? color : Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  category,
                  style: TextStyle(
                    color: selectedCategory == category ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
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
