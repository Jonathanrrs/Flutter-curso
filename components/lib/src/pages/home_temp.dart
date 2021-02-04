import 'package:flutter/material.dart'; /* imporm */

class HomePageTemp extends StatelessWidget { /* stateless snipet */
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView( /* para crear listview */
        children: <Widget>[
          /* se puede mostrar en la lista cualquier widget */
          ListTile( /* estos son un tipo de listas */
            title: Text('ListTile Title'),
          ),
          Divider(), /* es para crear una linea espaceadora */
          ListTile(
            title: Text('ListTile Title'),
          ),
          Divider(),
          ListTile(
            title: Text('ListTile Title'),
          )
        ],
      ), 
    );
  }
}