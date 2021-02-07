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
      //  children: _crearItems()
        children: __crearItemsCorta()
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

  List<Widget> __crearItemsCorta() {
    return opciones.map((item)  {
      return Column( /* control + . para envolverlo en una columna y agregar el divider */
        children: <Widget>[
          ListTile(
            title: Text(item+ '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.account_balance_wallet), /* este icono se pone en la parte izquierda al principio */
            trailing: Icon(Icons.keyboard_arrow_right), /* este icono se pone al final de la parte derecha */
            onTap: () {}, /* es un método */
          ),
          Divider()
        ],
      );

    }).toList(); /* esto es para convertirlo a una lista porque antes widgets era un iterable*/
   
  }


  
  
}