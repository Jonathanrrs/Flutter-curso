import 'package:flutter/material.dart';

import 'package:flutter_vscode/src/pages/home_page.dart';

/* este un widget */
class MyApp extends StatelessWidget {
  /* necesita un metodo build */
  /* sobreescribir un  metodo */
  @override
  Widget build(context) {
    /* debe retornar un widget a fuerza */
    return MaterialApp(
      home: Center(
        child: HomePage(),
      ),
    );
  }
}
