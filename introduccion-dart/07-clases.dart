void main() {
// final esa variable nunca va a vambiar de su valor como tal, es parecido a una constante
 final wolverine = new Heroe(poder: 'Regeneración', nombre: 'Logan');
//  print(wolverine.nombre);
//   print(wolverine.poder); 
  print(wolverine);
//   print(wolverine.toString());
}

class Heroe {
  String nombre;
  String poder;
//   constructor
 Heroe({String nombre = 'Sin nombre', String poder}) {
  this.nombre = nombre;
  this.poder = poder;
 }
  
  String toString() {
    return 'nombre: ${this.nombre} - poder: ${this.poder}';
  }
}