import 'package:gof_patterns_dart/gof_patterns/creational_patterns/abstract_factory/operation_system_ui_example/read_operation_system.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/abstract_factory/operation_system_ui_example/widgets/buttons/button.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/abstract_factory/operation_system_ui_example/widgets/checkboxes/checkbox.dart';

part 'mac_os_gui_factory.dart';

part 'windows_gui_factory.dart';

/// It is Abstract Factory with simplified Factory method which return one of GuiFactory.
/// It is aware of all related abstract product types.
abstract class GuiFactory {
  factory GuiFactory.factoryMethod(OperationSystemType operationSystemType) {
    switch (operationSystemType) {
      case OperationSystemType.macOs:
        return MacOsGuiFactory();
      case OperationSystemType.windows:
        return WindowsGuiFactory();
      default:
        throw ArgumentError(
            'Not supported operation system type: $operationSystemType');
    }
  }

  Button createButton();

  Checkbox createCheckbox();
}
