import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/pizza_example/pizza_builders/pizza_builder.dart';

/// The director knows in what sequence the builder must work in order
/// to get one or another version of the product.
///
/// The director is useful if you have multiple ways of constructing products
/// that differ in the order and presence of construction steps.
/// In this case, you will be able to combine all this logic in one class.
class PizzaDirector {
  void makePizza(PizzaBuilder pizzaBuilder) {
    pizzaBuilder.reset();
    pizzaBuilder.prepareBase();
    pizzaBuilder.addSauce();
    pizzaBuilder.addToppings();
  }
}
