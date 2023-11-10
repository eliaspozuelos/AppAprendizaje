import 'package:aprendizaje/Widgets/AppBarWidget.dart';
import 'package:aprendizaje/Widgets/CategoriesWidget.dart';
import 'package:aprendizaje/Widgets/DrawerWidget.dart';
import 'package:aprendizaje/Widgets/PreviewWidget.dart';
import 'package:aprendizaje/Widgets/PreviewWidget2.dart';
import 'package:aprendizaje/pages/ViewCategories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  
  
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = '';

  void handleCategorySelection(String category) {
    setState(() {
      selectedCategory = category;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xF1DDE5FF),
      
      body: ListView(
        children: [
          
          // App bar widget
          AppBarWidget(),

          // Buscador
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.black38,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "¿Qué deseas buscar?",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Espacio debajo del buscador
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: Container(
                decoration: BoxDecoration(
                  
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF9C2CF3), // Color #9C2CF3
                      Color(0xFF3A49F9), // Color #3A49F9
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Row(
                  children: [
                    // Centra el widget de texto vertical y horizontalmente
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20), // Separación del borde izquierdo
                          child: Text(
                            'App de Aprendizaje',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white, // Color del texto
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Coloca la imagen local a la derecha
                    Expanded(
                      child: Image.asset(
                        'assets/niñoimg.png', // Ruta de la imagen local
                        height: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Inicio de Categorías
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Categorías",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          CategoriesWidget(onCategorySelected: handleCategorySelection),
          // Fin de Categorías
          // Inicio de acuerdo a la categoría
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Alinea la flecha a la derecha
              children: [
                Text(
                  "Categoría: $selectedCategory",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                  GestureDetector(
  onTap: () {
    // Realiza una navegación al tocar la flecha
    
    if (selectedCategory == 'Literatura') {
      // Navega a la página de Literatura (reemplaza 'NombreDeTuPagina' con el nombre de tu página)
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ViewCategories('Literatura')),
      );
    }else if(selectedCategory == 'Matematicas'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ViewCategories('Matematicas')),
      );
    }
  },
  child: Row(
    children: [
      Icon(
        Icons.arrow_forward, // Icono de flecha hacia la derecha
        color: Colors.black, // Color del icono
      ),
      SizedBox(width: 10), // Espacio entre el icono y el texto
    ],
  ),
)
              ],
            ),
          ),

          //PreviewWidget(),
          // Contenido principal de HomePage

          // Contenido principal de acuerdo a la categoría
          AnimatedSwitcher(
            duration:
                const Duration(milliseconds: 500), // Duración de la transición
            child: selectedCategory.isEmpty
                ? PreviewWidget2() // Widget inicial (cuando no se ha seleccionado una categoría)
                : Column(
                    key: ValueKey<String>(
                        selectedCategory), // Key para identificar la transición
                    children: [
                      // Widgets relacionados con la categoría
                      if (selectedCategory == 'Literatura')
                        PreviewWidget2(), 
                      if (selectedCategory == 'Matematicas')
                      PreviewWidget(),
                    ],
                  ),
          ),

          //   ),
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}