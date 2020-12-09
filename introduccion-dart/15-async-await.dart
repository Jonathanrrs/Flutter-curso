// future, tarea asincrona
void main() async {
  print('Estamos a punto de pedir datos');
  
  String data = await httpGet('https://api.nasa.com/aliens');
print(data);
print('última línea');
}


Future<String> httpGet(String url) {
//   delayed por un cierto tiempo
  return Future.delayed(new Duration(seconds: 4), () {
    return 'Hola mundo';
  });
}

// no se pueden hacer constructores asincronos