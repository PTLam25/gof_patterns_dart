import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/pizza_example/pizza_builders/pizza_builder.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/pizza_example/pizza_director.dart';

void main() {
  // The director receives a specific builder object from the client (application).
  // The application itself knows which builder to use in order to get a certain product.
  final pizzaDirector = PizzaDirector();

  final margaritaPizzaBuilder = MargaritaPizzaBuilder();
  pizzaDirector.makePizza(margaritaPizzaBuilder);
  // The finished product is returned by the builder,
  // since the director most often does not know and
  // does not depend on specific classes of builders and products.
  final margaritaPizza = margaritaPizzaBuilder.getResult();

  final salamiPizzaBuilder = SalamiPizzaBuilder();
  pizzaDirector.makePizza(salamiPizzaBuilder);
  final salamiPizza = salamiPizzaBuilder.getResult();

  print(margaritaPizza);
  print(salamiPizza);
}
