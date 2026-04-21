import 'Vehiculo.dart';
class SistemaVehiculos {
  final List<Vehiculo> _vehiculo =[];
  final ServicioVehiculo _servicio = ServicioVehiculo();

  void agregarVehiculo(Vehiculo vehiculo){
    _vehiculo.add(vehiculo);
  }

  void mostrarVehiculos() {
    for (var v in _vehiculo) {
      v.imprimir();

      print("velocidad / peso ${_servicio.calcularRelacion(v)}");
      print("Es moderno: ${_servicio.esModerno(v)}");
      print("es liviano: ${_servicio.esLiviano(v)}");
    }
  }
  void contarvehiculomoderno(){
    int I = 0;
    for (var v in _vehiculo){
      if(_servicio.esModerno(v)){
        I++;
      }
    }
    print("Cantidad de Vehiculos modernos: $I");
  }
  void promedioPrecios(){
    double suma = 0;
    for(var v in _vehiculo){
      suma += v._precio;
    }
    double promedio = suma /_vehiculo.length;
    print("Promedio de precios : $promedio");
  }
}