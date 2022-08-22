import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/builders/car_builder.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/domain/car.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/domain/car_engines.dart';

class ConcreteCarBuilder implements CarBuilder {
  Car _car = Car();

  Car getResult() {
    final result = _car;
    reset();

    return result;
  }

  @override
  void reset() {
    _car = Car();
  }

  @override
  void setEngine(CarEngines engine) {
    _car = _car.copyWith(engine: engine);
  }

  @override
  void setGPS(bool isEnabled) {
    _car = _car.copyWith(isGPSConfigured: isEnabled);
  }

  @override
  void setNitro(bool isEnabled) {
    _car = _car.copyWith(isNitroConfigured: isEnabled);
  }

  @override
  void setSeats(int seatsNumber) {
    _car = _car.copyWith(seatsNumber: seatsNumber);
  }

  @override
  void setTripComputer(bool isEnabled) {
    _car = _car.copyWith(isTripComputerConfigured: isEnabled);
  }
}
