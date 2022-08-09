part of 'pizza.dart';

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
