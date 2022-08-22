import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/pizza_example/domain/pizza.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/pizza_example/domain/pizza_base/pizza_base.dart';

part 'margarita_pizza_builder.dart';

part 'salami_pizza_builder.dart';

/// Builder interface
abstract class PizzaBuilder {
  void addSauce();

  void addToppings();

  Pizza getResult();

  void prepareBase();

  void reset();
}
