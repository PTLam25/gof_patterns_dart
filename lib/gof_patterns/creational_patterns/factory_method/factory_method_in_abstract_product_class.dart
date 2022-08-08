import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/domain/pizza/pizza.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/domain/pizza/pizza_type.dart';
import 'package:gof_patterns_dart/gof_patterns/gof_pattern.dart';

/// If inheritance through the base product class is used for implementations of specific products,
/// then the factory method can be transferred to the base class of the product
class FactoryMethodInAbstractProductClass extends GoFPattern {
  @override
  void runExample() {
    for (var pizzaType in PizzaType.values) {
      final pizza = Pizza.factory(pizzaType);

      print('$pizza with cost equals ${pizza.calculateCost()}');
    }
  }
}
