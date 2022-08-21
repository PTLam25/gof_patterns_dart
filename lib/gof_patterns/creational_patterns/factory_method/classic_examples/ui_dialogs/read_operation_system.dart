import 'dart:math';

enum OperationSystemType {
  web,
  windows,
  phone,
}

OperationSystemType readOperationSystemType() {
  final random = Random();
  final randomOSTypeIndex = random.nextInt(OperationSystemType.values.length);

  return OperationSystemType.values[randomOSTypeIndex];
}
