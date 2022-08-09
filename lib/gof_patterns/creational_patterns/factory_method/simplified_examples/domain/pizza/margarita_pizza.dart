part of 'pizza.dart';

/// Concrete product
class MargaritaPizza extends Pizza {
  final double scalingFactor;

  MargaritaPizza({
    super.name = 'Margarita',
    required super.radius,
    required this.scalingFactor,
  });

  @override
  double calculateCost() {
    return radius * scalingFactor;
  }
}
