part 'margarita_pizza.dart';

part 'mexico_pizza.dart';

part 'pizza_type.dart';

part 'stella_pizza.dart';

/// Base product
abstract class Pizza {
  final String name;
  final int radius;

  Pizza({required this.name, required this.radius});

  factory Pizza.factory(PizzaType pizzaType) {
    switch (pizzaType) {
      case PizzaType.margarita:
        return MargaritaPizza(
          radius: 15,
          scalingFactor: 3.1,
        );
      case PizzaType.stella:
        return StellaPizza(
          radius: 25,
        );
      case PizzaType.mexico:
        return MexicoPizza(
          radius: 50,
          cost: 13.4,
        );
      default:
        throw ArgumentError();
    }
  }

  double calculateCost();

  @override
  String toString() {
    return 'Pizza $name has radius $radius cm';
  }
}
