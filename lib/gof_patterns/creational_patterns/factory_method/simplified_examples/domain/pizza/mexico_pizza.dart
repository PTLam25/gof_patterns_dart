part of 'pizza.dart';

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
