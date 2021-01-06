import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* algo que cubre toda la pantalla, tenemos un navbar, etc */
        appBar: AppBar(
          title: Text('Título'),
          centerTitle: true,
          elevation: 1.5,
        ),
        body: Center(
          child: Text('Hola Mundo'),
        ));
  }
}
