import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/pizza_example/pizza_builders/pizza_builder.dart';

/// Just call builders' methods in client code
void main() {
  final margaritaPizzaBuilder = MargaritaPizzaBuilder();
  margaritaPizzaBuilder
    ..reset()
    ..prepareBase()
    ..addSauce()
    ..addToppings();
  final margaritaPizza = margaritaPizzaBuilder.getResult();

  final salamiPizzaBuilder = SalamiPizzaBuilder();
  salamiPizzaBuilder
    ..reset()
    ..prepareBase()
    ..addSauce()
    ..addToppings();
  final salamiPizza = salamiPizzaBuilder.getResult();

  print(margaritaPizza);
  print(salamiPizza);
}
