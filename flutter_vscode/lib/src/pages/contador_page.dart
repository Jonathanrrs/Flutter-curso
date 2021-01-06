import 'package:flutter/material.dart';

/* esto es para un statefulwidget */

class ContadorPage extends StatefulWidget {
  /* se necesita sobreescribir */
  @override
  createState() {
    /* necesita retornar una nueva instancia del contadorPageState  */
    // return new _ContadorPageState();
    return _ContadorPageState();
  }
  // createState() => _ContadorPageState(); /* es lo mismo pero en funcion flecha */
}

/* esta clase solo se usa dentro del contadorpage, no puede ser fuera de la misma, por eso mismo se hace la clase privada con _*/
class _ContadorPageState extends State<ContadorPage> {
  /* state ya viene en el material, debe especificar que tipo de widget va a manejar <ContadorPage> */

  /* estas propiedades solo se van a utilizar dentro de la clase tambien se hacen privadas */
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* algo que cubre toda la pantalla, tenemos un navbar, etc */
      appBar: AppBar(
        title: Text('Stateful'),
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
            style: _estiloTexto,
          ),
          Text('$_conteo',
              style:
                  _estiloTexto), /* interpolacion de strings, tambien podria ser conteo.toString() */
        ],
      )
          /* no se puede poner otro child abajo, solo 1 */
          ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        /* para que aparezca un icono, este puede ser cualquier cosa también */
        onPressed: () {
          /* una funcion recibe, es el boton para presionar */
          // print('Hola mundo');
          /* cuando esta variable cambia que se redibuje el statewidget */

          setState(() {
            _conteo = _conteo + 1;
          });
        },
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation
      //     .centerFloat, /* esto es para posicionar el boton abajo en la mitad de la pantalla */
    );
  }
}
