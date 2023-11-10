import 'package:flutter/material.dart';

class PreviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 35,
          horizontal: 5,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: 
                
                  Container(
                    width: 200,
                    height: 200,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(
                          0xFFE5EAFC), // Cambia el color de fondo a #E5EAFC
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 49, 48, 48).withOpacity(0.6),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                   child:Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child:  Column(children: [
                      Container(child: Image.asset(
                        "assets/3.png",
                        height: 150,
                        ),
                      ),
                      Text("SUMAS", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),)


                    ],),
                    ) ,
                  ),
                
              
              
            ),
           Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: 
                
                  Container(
                    width: 200,
                    height: 200,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(
                          0xFFE5EAFC), // Cambia el color de fondo a #E5EAFC
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 49, 48, 48).withOpacity(0.6),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                   child:Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child:  Column(children: [
                      Container(child: Image.asset(
                        "assets/4.png",
                        height: 150,
                        ),
                      ),
                      Text("SUMAS", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),)


                    ],),
                    ) ,
                  ),
                
              
              
            ),
               Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: 
                
                  Container(
                    width: 200,
                    height: 200,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color( 0xFFE5EAFC), // Cambia el color de fondo a #E5EAFC
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 49, 48, 48).withOpacity(0.6),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                   child:Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child:  Column(children: [
                      Container(child: Image.asset(
                        "assets/5.png",
                        height: 150,
                        ),
                      ),
                      Text("SUMAS", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),)


                    ],),
                    ) ,
                  ),
                
              
              
            ),
          ],
        ),
      ),
    );
  }
}
