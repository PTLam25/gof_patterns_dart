part of 'logistics_creator.dart';

class SeaLogisticCreator implements LogisticsCreator {
  @override
  Transport createTransport() {
    return Ship();
  }

  @override
  String planDelivery() {
    final transport = createTransport();

    return 'Plan ${transport.deliver()}';
  }
}