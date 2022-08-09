part of 'dialog.dart';

class PhoneDialog extends Dialog {
  @override
  Button createButton() {
    return PhoneButton();
  }
}
