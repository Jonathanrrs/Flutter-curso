import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // TextStyle estiloTexto = new TextStyle(fontSize: 25); /* esto lo marca como inmutable, caracteristica de statelesswidget */
  final estiloTexto = new TextStyle(
      fontSize:
          25); /* esto lo marca como inmutable, caracteristica de statelesswidget */

  // int conteo = 0; /* tampoco se pueder al ser inmutable */

  final conteo = 10;

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
          Text('$conteo',
              style:
                  estiloTexto), /* interpolacion de strings, tambien podria ser conteo.toString() */
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
          /* no se puede así, es por eso que debemos utilizar ya un statefullwidget, para poder controlar el estado */
          // conteo = conteo + 1;
        },
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation
      //     .centerFloat, /* esto es para posicionar el boton abajo en la mitad de la pantalla */
    );
  }
}
