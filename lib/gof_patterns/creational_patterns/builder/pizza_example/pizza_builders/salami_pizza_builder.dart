part of 'pizza_builder.dart';

/// Concrete builder 2
class SalamiPizzaBuilder implements PizzaBuilder {
  static const Pizza _initialPizza = Pizza(
    name: 'Salami',
    price: 8.0,
    cookingTimeInMinutes: 20,
  );

  Pizza _pizza = _initialPizza;

  SalamiPizzaBuilder() {
    _pizza = _initialPizza;
  }

  @override
  void addSauce() {
    _pizza = _pizza.copyWith(
      sauce: PizzaSauces.barbeque,
    );
  }

  @override
  void addToppings() {
    _pizza = _pizza.copyWith(
      toppings: <PizzaToppings>[
        PizzaToppings.salami,
        PizzaToppings.mushrooms,
        PizzaToppings.shrimps,
      ],
    );
  }

  @override
  Pizza getResult() {
    return _pizza;
  }

  @override
  void prepareBase() {
    _pizza = _pizza.copyWith(
      base: const PizzaBase(
        form: PizzaBaseForms.square,
        dough: PizzaBaseDoughs.corn,
      ),
    );
  }

  @override
  void reset() {
    _pizza = _initialPizza;
  }
}
