part of 'pizza_builder.dart';

/// Concrete builder 1
class MargaritaPizzaBuilder implements PizzaBuilder {
  static const Pizza _initialPizza = Pizza(
    name: 'Margarita',
    price: 6.0,
  );

  late Pizza _pizza;

  MargaritaPizzaBuilder() {
    _pizza = _initialPizza;
  }

  @override
  void addSauce() {
    _pizza = _pizza.copyWith(
      sauce: PizzaSauces.tomato,
    );
  }

  @override
  void addToppings() {
    _pizza = _pizza.copyWith(
      toppings: <PizzaToppings>[
        PizzaToppings.bacon,
        PizzaToppings.mozzarella,
        PizzaToppings.mushrooms,
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
        form: PizzaBaseForms.circle,
        dough: PizzaBaseDoughs.wheat,
      ),
    );
  }

  @override
  void reset() {
    _pizza = _initialPizza;
  }
}
