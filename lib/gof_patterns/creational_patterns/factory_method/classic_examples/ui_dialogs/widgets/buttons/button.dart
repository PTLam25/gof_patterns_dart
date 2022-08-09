part 'phone_button.dart';

part 'web_button.dart';

part 'windows_button.dart';

/// Base Product
abstract class Button {
  void render();

  void onClick(void Function() callback);
}
