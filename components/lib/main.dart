/* mateapp snipet para crear la interfaz necesario de una app */
import 'package:flutter/material.dart';
 
import 'package:components/src/pages/home_temp.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false, /* quitar el debug incomodo de la app */
      home: Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: HomePageTemp(), /* importar control+. */
      ),
    );
  }
}