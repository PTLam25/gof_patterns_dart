import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/domain/car_engines.dart';

class Car {
  final int seatsNumber;
  final CarEngines engine;
  final bool isGPSConfigured;
  final bool isTripComputerConfigured;
  final bool isNitroConfigured;

  Car({
    this.seatsNumber = 4,
    this.engine = CarEngines.standard,
    this.isGPSConfigured = false,
    this.isTripComputerConfigured = false,
    this.isNitroConfigured = false,
  });

  @override
  String toString() {
    return '''
    Car info:
    Seats number: $seatsNumber,
    Engine: $engine,
    Is GPS configured: $isGPSConfigured,
    Is trip computer configured: $isTripComputerConfigured,
    Is nitro configured: $isNitroConfigured,
    ''';
  }

  Car copyWith({
    int? seatsNumber,
    CarEngines? engine,
    bool? isGPSConfigured,
    bool? isTripComputerConfigured,
    bool? isNitroConfigured,
  }) {
    return Car(
      seatsNumber: seatsNumber ?? this.seatsNumber,
      engine: engine ?? this.engine,
      isGPSConfigured: isGPSConfigured ?? this.isGPSConfigured,
      isTripComputerConfigured:
          isTripComputerConfigured ?? this.isTripComputerConfigured,
      isNitroConfigured: isNitroConfigured ?? this.isNitroConfigured,
    );
  }
}
