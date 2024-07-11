//Archivo future_delayed.dart

void main() {
  print("Inicio de programa");

  Future.delayed(Duration(seconds: 2),(){
    return "Hola despues de 2 segundos";
  }).then((resultado){
    print(resultado);
  });

  print("Fin de programa");
}