part of 'button.dart';

class WebButton implements Button {
  @override
  void onClick(void Function() callback) {}

  @override
  void render() {
    print('Render Web squared button.');
  }
}
