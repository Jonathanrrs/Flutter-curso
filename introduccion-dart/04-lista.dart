void main() {
  List<int> numeros = [1,2,3,4,5];
  print(numeros);
  numeros.add(6);
  print(numeros);
  
//   Tamaño fijo
  List masNumeros = List(10);
  print(masNumeros);
  //   masNumeros.add(1); no es correcto, porque es un tamaño fijo
  masNumeros[0] = 1;
  print(masNumeros);
}