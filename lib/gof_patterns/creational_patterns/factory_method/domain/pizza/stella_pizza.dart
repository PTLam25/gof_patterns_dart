import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/domain/pizza/pizza.dart';

/// Concrete product
class StellaPizza extends Pizza {
  final int costPerCentimeter = 5;

  StellaPizza({
    super.name = 'Stella',
    required super.radius,
  });

  @override
  double calculateCost() {
    return (radius * 2 * costPerCentimeter).toDouble();
  }
}
