import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/domain/pizza/pizza.dart';

/// Concrete product
class MexicoPizza extends Pizza {
  final double cost;

  MexicoPizza({
    super.name = 'Mexico',
    required super.radius,
    required this.cost,
  });

  @override
  double calculateCost() {
    return cost;
  }
}
