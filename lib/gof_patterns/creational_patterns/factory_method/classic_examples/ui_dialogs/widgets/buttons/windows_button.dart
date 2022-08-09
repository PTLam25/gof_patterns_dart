part of 'button.dart';

class WindowsButton implements Button {
  @override
  void onClick(void Function() callback) {}

  @override
  void render() {
    print('Render Windows circle button.');
  }
}
