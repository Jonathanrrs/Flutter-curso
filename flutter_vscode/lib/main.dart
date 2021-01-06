/* importar para el runApp */
import 'package:flutter/material.dart';

void main() {
  /* para correr la app */
  runApp(new MyApp()); /* espera un widget */
}

/* este un widget */
class MyApp extends StatelessWidget {
  /* necesita un metodo build */
  /* sobreescribir un  metodo */
  @override
  Widget build(context) {
    /* debe retornar un widget a fuerza */
    return MaterialApp(
      home: Center(
        child: Text('Hola mundo'),
      ),
    );
  }
}