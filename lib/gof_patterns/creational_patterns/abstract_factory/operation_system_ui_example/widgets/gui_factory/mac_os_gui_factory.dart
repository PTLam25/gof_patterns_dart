part of 'gui_factory.dart';

/// Concrete Factory 1
class MacOsGuiFactory implements GuiFactory {
  @override
  Button createButton() {
    return MacOsButton();
  }

  @override
  Checkbox createCheckbox() {
    return MacOsCheckbox();
  }
}