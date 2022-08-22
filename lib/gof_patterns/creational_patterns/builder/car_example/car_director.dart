import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/builders/car_builder.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/domain/car_engines.dart';

class CarDirector {
  late CarBuilder _builder;

  void setBuilder(CarBuilder builder) {
    _builder = builder;
  }

  void constructSportCar() {
    _builder.reset();
    _builder.setSeats(2);
    _builder.setEngine(CarEngines.sport);
    _builder.setTripComputer(true);
    _builder.setGPS(true);
    _builder.setNitro(true);
  }

  void constructSUVCars() {
    _builder.reset();
    _builder.setSeats(4);
    _builder.setEngine(CarEngines.standard);
    _builder.setTripComputer(false);
    _builder.setGPS(false);
    _builder.setNitro(false);
  }
}
