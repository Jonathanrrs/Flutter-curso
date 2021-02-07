/* mateapp snipet para crear la interfaz necesario de una app */
import 'package:components/src/pages/home_page.dart';
import 'package:flutter/material.dart';
 
// import 'package:components/src/pages/home_temp.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false, /* quitar el debug incomodo de la app */
      home: HomePage(), /* se borró porque habian 2 scaffold */
    );
  }
}