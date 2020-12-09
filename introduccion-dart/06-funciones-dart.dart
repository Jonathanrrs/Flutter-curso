void main() {
  String mensaje = saludar2(texto: 'hola,', nombre: 'Jonathan');
  print(mensaje);
}

String saludar({String texto,String nombre}) {
//   print('Hello');
  return '$texto $nombre';
}
// Funciones de flecha como js
String saludar2({String texto,String nombre}) => '$texto $nombre';