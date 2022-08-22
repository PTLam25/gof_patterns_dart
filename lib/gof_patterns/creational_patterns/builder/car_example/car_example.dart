import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/builders/car_manuel_builder.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/builders/concrete_car_builder.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/car_example/car_director.dart';

void main() {
  final carDirector = CarDirector();

  final concreteCarBuilder = ConcreteCarBuilder();
  carDirector.setBuilder(concreteCarBuilder);
  carDirector.constructSportCar();
  final sportCar = concreteCarBuilder.getResult();
  final carManuelBuilder = CarManuelBuilder();
  carDirector.setBuilder(carManuelBuilder);
  carDirector.constructSportCar();
  final sportCarManuel = carManuelBuilder.getResult();
  print(sportCar);
  print(sportCarManuel);

  print('---' * 20);
  carDirector.setBuilder(concreteCarBuilder);
  carDirector.constructSUVCars();
  final suvCar = concreteCarBuilder.getResult();
  carDirector.setBuilder(carManuelBuilder);
  carDirector.constructSUVCars();
  final suvCarManuel = carManuelBuilder.getResult();
  print(suvCar);
  print(suvCarManuel);
}
