import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/classic_examples/logistics/domain/transport.dart';

part 'road_logistics_creator.dart';

part 'sea_logistics_creator.dart';

abstract class LogisticsCreator {
  Transport createTransport();

  String planDelivery();
}
