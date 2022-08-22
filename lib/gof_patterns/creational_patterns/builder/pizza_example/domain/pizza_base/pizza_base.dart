part 'pizza_base_forms.dart';

part 'pizza_doughs.dart';

class PizzaBase {
  final PizzaBaseForms form;
  final PizzaBaseDoughs dough;

  const PizzaBase({
    required this.form,
    required this.dough,
  });

  @override
  String toString() {
    return 'Pizza base: $form form, $dough dough';
  }
}
