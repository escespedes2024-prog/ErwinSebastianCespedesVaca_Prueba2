enum TipoVehiculo {automovil, motocicleta, camioneta}
class Vehiculo {
  final String? _nombre;
  final int _Cantderuedas;
  final double _Peso;
  final double _Velocidadmax;
  final int _anofabric;
  final double _precio;
  final TipoVehiculo _tipo;
  final bool _disponible;

  Vehiculo(
      this._nombre,
      this._Cantderuedas,
      this._Peso,
      this._Velocidadmax,
      this._anofabric,
      this._precio,
      this._tipo,
      this._disponible,
      );

  void imprimir(){
    print("Nombre: $_nombre");
    print("Cantidad de ruedas: $_Cantderuedas");
    print("Peso en Kilogramos: $_Peso");
    print("Velocidad maxima en km/h: $_Velocidadmax");
    print("Año de fabricacion: $_anofabric");
    print("Precio en bolivianos: $_precio");
    print("Tipo de Vehiculo: $_tipo");
    print("Disponible para la venta: $_disponible");
  }
}

class ServicioVehiculo{
  double calcularRelacion(Vehiculo vehiculo){
    return vehiculo._Velocidadmax / vehiculo._Peso;
  }

  bool esModerno(Vehiculo vehiculo){
    return vehiculo._anofabric >= 2020;

  }

  bool esLiviano(Vehiculo vehiculo){
    if(vehiculo._Peso < 1500){
      return true;
    }else{
      return false;
    }
  }
}