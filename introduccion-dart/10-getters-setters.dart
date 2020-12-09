void main() {
  final cuadrado = new Cuadrado();
  cuadrado.lado = 10;
  
  print(cuadrado);
  print('Área: ${cuadrado.area}');
}
class Cuadrado {
//   _ privadas, solo dentro fuera de la clase
  double _lado;
//   double _area;
  
  set lado(double valor) {
    if(valor <= 0) {
      throw('El lado no puede ser menor o igual a 0');
    }
    _lado = valor;
  }
  
//   no lleva parentesis
//   double get area {
//     return _lado*_lado;
//   }
  double get area => _lado * _lado;
  
  toString() => 'Lado: $_lado';
  
}