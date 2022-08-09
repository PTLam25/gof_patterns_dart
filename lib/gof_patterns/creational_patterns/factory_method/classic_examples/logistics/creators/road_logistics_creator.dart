part of 'logistics_creator.dart';

class RoadLogisticCreator implements LogisticsCreator {
  @override
  Transport createTransport() {
    return Truck();
  }

  @override
  String planDelivery() {
    final transport = createTransport();

    return 'Plan ${transport.deliver()}';
  }
}
