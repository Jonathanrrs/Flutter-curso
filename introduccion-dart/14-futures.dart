// future, tarea asincrona
void main() {
  print('Estamos a punto de pedir datos');
  
  httpGet('https://api.nasa.com/aliens').then((data) {
    print(data);
    
  });
  
  print('última línea');
}
Future<String> httpGet(String url) {
//   delayed por un cierto tiempo
  return Future.delayed(new Duration(seconds: 4), () {
    return 'Hola mundo';
  });
}