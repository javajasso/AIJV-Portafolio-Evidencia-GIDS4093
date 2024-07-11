import 'vehiculo.dart';

//subclase vehiculo
class Auto extends Vehiculo {
  //atributos propios

  String modelo;

  //Crear constructor
  Auto(super.marca, super.anio, this.modelo);
}