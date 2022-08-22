import 'package:gof_patterns_dart/gof_patterns/creational_patterns/builder/pizza_example/domain/pizza_base/pizza_base.dart';

part 'pizza_sauces.dart';
part 'pizza_toppings.dart';

/// Product class
class Pizza {
  final String name;
  final PizzaBase base;
  final PizzaSauces sauce;
  final List<PizzaToppings> toppings;
  final int cookingTimeInMinutes;
  final double price;

  const Pizza({
    required this.name,
    required this.price,
    this.cookingTimeInMinutes = 10,
    this.base = const PizzaBase(
      form: PizzaBaseForms.circle,
      dough: PizzaBaseDoughs.wheat,
    ),
    this.sauce = PizzaSauces.barbeque,
    this.toppings = const <PizzaToppings>[
      PizzaToppings.bacon,
      PizzaToppings.mozzarella,
    ],
  });

  @override
  String toString() {
    return '''
    Pizza name: $name,
    Price: $price dollars,
    Cooking time: $cookingTimeInMinutes minutes,
    Base: $base,
    Sauce: $sauce,
    Toppings: ${toppings.join(', ')},
    ''';
  }

  Pizza copyWith({
    String? name,
    double? price,
    int? cookingTimeInMinutes,
    PizzaBase? base,
    PizzaSauces? sauce,
    List<PizzaToppings>? toppings,
  }) {
    return Pizza(
      name: name ?? this.name,
      price: price ?? this.price,
      cookingTimeInMinutes: cookingTimeInMinutes ?? this.cookingTimeInMinutes,
      base: base ?? this.base,
      sauce: sauce ?? this.sauce,
      toppings: toppings ?? this.toppings,
    );
  }
}
