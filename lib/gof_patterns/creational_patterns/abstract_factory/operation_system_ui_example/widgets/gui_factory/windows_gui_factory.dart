part of 'gui_factory.dart';

/// Concrete Factory 2
class WindowsGuiFactory implements GuiFactory {
  @override
  Button createButton() {
    return WindowsButton();
  }

  @override
  Checkbox createCheckbox() {
    return WindowsCheckbox();
  }
}
