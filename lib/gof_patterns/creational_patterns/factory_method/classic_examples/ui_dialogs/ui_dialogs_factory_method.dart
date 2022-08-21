import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/classic_examples/ui_dialogs/read_operation_system.dart';
import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/classic_examples/ui_dialogs/widgets/dialogs/dialog.dart';

class Application {
  late final Dialog dialog;

  void initialize() {
    final operationSystemType = readOperationSystemType();

    switch (operationSystemType) {
      case OperationSystemType.web:
        dialog = WebDialog();
        break;
      case OperationSystemType.windows:
        dialog = WindowsDialog();
        break;
      case OperationSystemType.phone:
        dialog = PhoneDialog();
        break;
      default:
        throw UnsupportedError('Not support OS type $operationSystemType');
    }
  }

  void run() {
    initialize();

    dialog.render();
  }
}

void main() {
  print('Run application.\n');
  final application = Application();

  application.run();
}
