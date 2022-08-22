import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/domain/car_engines.dart';

class CarManuel {
  final int seatsNumber;
  final CarEngines engine;
  final bool isGPSConfigured;
  final bool isTripComputerConfigured;
  final bool isNitroConfigured;

  CarManuel({
    this.seatsNumber = 4,
    this.engine = CarEngines.standard,
    this.isGPSConfigured = false,
    this.isTripComputerConfigured = false,
    this.isNitroConfigured = false,
  });

  @override
  String toString() {
    return '''
    Car Manuel Info:
    Seats number: $seatsNumber,
    Engine: $engine,
    Is GPS configured: $isGPSConfigured,
    Is trip computer configured: $isTripComputerConfigured,
    Is nitro configured: $isNitroConfigured,
    Instructions for car: enjoy!
    ''';
  }

  CarManuel copyWith({
    int? seatsNumber,
    CarEngines? engine,
    bool? isGPSConfigured,
    bool? isTripComputerConfigured,
    bool? isNitroConfigured,
  }) {
    return CarManuel(
      seatsNumber: seatsNumber ?? this.seatsNumber,
      engine: engine ?? this.engine,
      isGPSConfigured: isGPSConfigured ?? this.isGPSConfigured,
      isTripComputerConfigured:
          isTripComputerConfigured ?? this.isTripComputerConfigured,
      isNitroConfigured: isNitroConfigured ?? this.isNitroConfigured,
    );
  }
}
