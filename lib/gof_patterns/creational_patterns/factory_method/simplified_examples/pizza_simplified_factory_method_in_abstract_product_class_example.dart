import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/simplified_examples/domain/pizza/pizza.dart';

/// If inheritance through the base product class is used for implementations of specific products,
/// then the logic of factory method can be moved to the base class of the product
void main() {
  for (var pizzaType in PizzaType.values) {
    final pizza = Pizza.factoryMethod(pizzaType);

    print('$pizza with cost equals ${pizza.calculateCost()}');
  }
}
