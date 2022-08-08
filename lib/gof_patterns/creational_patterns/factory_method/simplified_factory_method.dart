import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/domain/pizza/margarita_pizza.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/domain/pizza/mexico_pizza.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/domain/pizza/pizza.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/domain/pizza/pizza_type.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/domain/pizza/stella_pizza.dart';
import 'package:gof_patterns_dart/gof_patterns/gof_pattern.dart';

/// Without the creator abstract class and multi concrete creators.
/// Just having one class which create concrete product depends on enum argument.
class SimplifiedFactoryMethod extends GoFPattern {
  static Pizza factoryMethod(PizzaType pizzaType) {
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

  @override
  void runExample() {
    for (var pizzaType in PizzaType.values) {
      final pizza = SimplifiedFactoryMethod.factoryMethod(pizzaType);

      print('$pizza with cost equals ${pizza.calculateCost()}');
    }
  }
}
