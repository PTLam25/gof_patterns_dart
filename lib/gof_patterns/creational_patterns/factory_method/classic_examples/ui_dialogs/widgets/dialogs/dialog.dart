import 'package:gof_patterns_dart/gof_patterns/creational_patterns/factory_method/classic_examples/ui_dialogs/widgets/buttons/button.dart';

part 'phone_dialog.dart';

part 'web_dialog.dart';

part 'windows_dialog.dart';

abstract class Dialog {
  void _closeDialog() {
    print('close Dialog');
  }

  Button createButton();

  void render() {
    print('Render dialog.');
    final button = createButton();

    button.onClick(_closeDialog);
    button.render();
  }
}
