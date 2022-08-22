import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/domain/car_engines.dart';

abstract class CarBuilder {
  void reset();

  void setSeats(int seatsNumber);

  void setEngine(CarEngines engine);

  void setTripComputer(bool isEnabled);

  void setGPS(bool isEnabled);

  void setNitro(bool isEnabled);
}
