import 'dart:math';

import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/classic_examples/ui_dialogs/widgets/dialogs/dialog.dart';

enum OSType {
  web,
  windows,
  phone,
}

OSType readOSType() {
  final random = Random();
  final randomOSTypeIndex = random.nextInt(OSType.values.length);

  return OSType.values[randomOSTypeIndex];
}

class Application {
  late final Dialog dialog;

  void initialize() {
    final osType = readOSType();

    switch (osType) {
      case OSType.web:
        dialog = WebDialog();
        break;
      case OSType.windows:
        dialog = WindowsDialog();
        break;
      case OSType.phone:
        dialog = PhoneDialog();
        break;
      default:
        throw UnsupportedError('Not support OS type $osType');
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
