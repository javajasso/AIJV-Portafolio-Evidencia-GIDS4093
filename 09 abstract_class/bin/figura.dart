abstract class Figura {
  //metodo sin cuerpo
  double calcularArea();
}

class circulo extends Figura{
  double radio;

  circulo(this.radio);

  @override
  double calcularArea(){
    //Pi * radio * radio
    return 3.14 * radio * radio;
  }
}

class rectangulo extends Figura {
  double ancho;
  double alto;

  rectangulo(this.ancho, this.alto);
  @override
  double calcularArea(){
    //base * altura
    return ancho * alto;
  }
}

void main(){

  var c = circulo(15);
  var r = rectangulo(3, 5);
  print('Area del circulo: ${c.calcularArea()}');
  print('Area del rectangulo: ${r.calcularArea()}');

}