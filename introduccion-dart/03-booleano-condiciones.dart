
void main() {
  bool activado = true;
  print(activado);
  
//   Se pasa a apagado
  activado = !activado;
  
  if(activado == true) {
    print('Motor está funcionando');
  } else {
    print('Está apagado');
  }
}
