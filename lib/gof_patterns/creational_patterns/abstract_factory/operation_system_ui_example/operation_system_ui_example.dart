import 'package:gof_patterns_dart/gof_patterns/creational_patterns/abstract_factory/operation_system_ui_example/application.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/abstract_factory/operation_system_ui_example/read_operation_system.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/abstract_factory/operation_system_ui_example/widgets/gui_factory/gui_factory.dart';

/// There are different operation systems (MacOs and Windows)
/// and for each platform the application has different UI components.
void main() {
  final operationSystemType = readOperationSystemType();
  final guiFactory = GuiFactory.factoryMethod(operationSystemType);
  final application = Application(guiFactory);

  application.createUi();
  application.run();
}
