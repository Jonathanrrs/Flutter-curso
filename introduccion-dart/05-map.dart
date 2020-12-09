void main() {
  String propiedad = 'soltero';
  
  Map<String, dynamic> persona = {
    'nombre': 'Jonathan',
    'edad': 20,
    'soltero': false
  };
  
  print(persona['nombre']);
  print(persona['edad']);
  print(persona[propiedad]);
  
  Map<int, String> personas = {
    1: 'joni',
    2: 'Ramiro',
    9: 'Spiderman'
  };
  
  personas.addAll({4: 'banner'});
  print(personas);
  print(personas[2]);
}