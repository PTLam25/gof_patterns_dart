import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/classic_examples/logistics/creators/logistics_creator.dart';

enum DeliveryType {
  road,
  sea,
}

void deliverProduct(DeliveryType deliveryType) {
  final logistics = deliveryType == DeliveryType.road
      ? RoadLogisticCreator()
      : SeaLogisticCreator();

  print(logistics.planDelivery());
}

void main() {
  print('App: User chose truck delivery.');
  deliverProduct(DeliveryType.road);
  print('\n');

  print('App: User chose sea delivery.');
  deliverProduct(DeliveryType.sea);
  print('\n');
}
