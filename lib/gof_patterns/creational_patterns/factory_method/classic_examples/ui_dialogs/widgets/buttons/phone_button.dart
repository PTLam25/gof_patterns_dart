part of 'button.dart';

class PhoneButton implements Button {
  @override
  void onClick(void Function() callback) {}

  @override
  void render() {
    print('Render Phone rounded button.');
  }
}
