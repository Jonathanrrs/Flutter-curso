import 'package:flutter/material.dart'; /* imporm */

class HomePageTemp extends StatelessWidget { /* stateless snipet */
  /* crear una propiedad con final porque se está dentro de un statelesswidget */

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView( /* para crear listview */
       children: _crearItems()
      ), 
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>(); /* retornar una lista de widgets */

    for (String opt in opciones) {
      
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget) /* cuando el ciclo termine se mostrará en el list */
        ..add(Divider());
      /* el .. es una forma en cascada para agregar otros elementos */

      /* lista.add(Divider()); esta es otra forma */
    }
    return lista; /* retornamos la lista con los números */
  }

  // List<Widget> __crearItemsCorta() {

  // }
  
}