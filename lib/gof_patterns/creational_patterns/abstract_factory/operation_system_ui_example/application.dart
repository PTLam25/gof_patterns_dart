import 'package:gof_patterns_dart/gof_patterns/creational_patterns/abstract_factory/operation_system_ui_example/widgets/buttons/button.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/abstract_factory/operation_system_ui_example/widgets/checkboxes/checkbox.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/abstract_factory/operation_system_ui_example/widgets/gui_factory/gui_factory.dart';

class Application {
  final GuiFactory _guiFactory;

  late final Button _button;
  late final Checkbox _checkbox;

  Application(this._guiFactory);

  void createUi() {
    _button = _guiFactory.createButton();
    _checkbox = _guiFactory.createCheckbox();
  }

  void run() {
    _button.render();
    _checkbox.render();
  }
}
