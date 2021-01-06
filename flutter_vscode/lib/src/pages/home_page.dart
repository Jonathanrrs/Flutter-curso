import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // TextStyle estiloTexto = new TextStyle(fontSize: 25); /* esto lo marca como inmutable, caracteristica de statelesswidget */
  final estiloTexto = new TextStyle(
      fontSize:
          25); /* esto lo marca como inmutable, caracteristica de statelesswidget */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* algo que cubre toda la pantalla, tenemos un navbar, etc */
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        /* para poner varios elemenetos se necesita en columna */
        mainAxisAlignment: MainAxisAlignment.center,
        /* esto lo centran con el mainAxisAligment puedes centrarlo de varias maneras */
        children: <Widget>[
          Text(
            'Número de taps:',
            style: estiloTexto,
          ),
          Text('0', style: estiloTexto),
        ],
      )
          /* no se puede poner otro child abajo, solo 1 */
          ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        /* para que aparezca un icono, este puede ser cualquier cosa también */
        onPressed: () {
          /* una funcion recibe, es el boton para presionar */
          print('Hola mundo');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerFloat, /* esto es para posicionar el boton abajo en la mitad de la pantalla */
    );
  }
}
