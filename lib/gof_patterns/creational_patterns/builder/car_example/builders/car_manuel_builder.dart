import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/builders/car_builder.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/domain/car_engines.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/domain/car_manuel.dart';

class CarManuelBuilder implements CarBuilder {
  CarManuel _carManuel = CarManuel();

  CarManuel getResult() {
    final result = _carManuel;
    reset();

    return result;
  }

  @override
  void reset() {
    _carManuel = CarManuel();
  }

  @override
  void setEngine(CarEngines engine) {
    _carManuel = _carManuel.copyWith(engine: engine);
  }

  @override
  void setGPS(bool isEnabled) {
    _carManuel = _carManuel.copyWith(isGPSConfigured: isEnabled);
  }

  @override
  void setNitro(bool isEnabled) {
    _carManuel = _carManuel.copyWith(isNitroConfigured: isEnabled);
  }

  @override
  void setSeats(int seatsNumber) {
    _carManuel = _carManuel.copyWith(seatsNumber: seatsNumber);
  }

  @override
  void setTripComputer(bool isEnabled) {
    _carManuel = _carManuel.copyWith(isTripComputerConfigured: isEnabled);
  }
}
