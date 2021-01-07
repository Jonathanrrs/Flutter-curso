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
      floatingActionButton: _crearBotones()
      // floatingActionButtonLocation: FloatingActionButtonLocation
      //     .centerFloat, /* esto es para posicionar el boton abajo en la mitad de la pantalla */
    );
  }

  Widget _crearBotones() { /* esto regresa un widget */
    return Row(
      mainAxisAlignment: MainAxisAlignment.end, /* estos botones se ubican al final a la derecha inferior */
      children: <Widget> [
        SizedBox(width: 30.0),
        FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero)),
        /* expanded estira el widget que tenga en su interior, es obligatorio el child */
        Expanded(child: SizedBox()), /* es un double, es el ancho del widget */
        FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove)),
        SizedBox(width: 5.0),
        /* sin parentesis _agregar, porque se necesita que se ejecute cuando se toque el boton y no cuando se crea */
        FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add))
      ]
    );
    
    
    // FloatingActionButton(onPressed: null, child: Icon(Icons.add_alarm));
  }

  void _agregar() {
  /* el settate solo existe en los statefulwidget */
    setState(() {
    _conteo++;
    });
  }
  /* tarea */
  void _reset() {
    setState(() {
      _conteo = 0;
    });
  }

  void _sustraer() {
    setState(() {
      _conteo = _conteo - 1;
    });
  }
}
