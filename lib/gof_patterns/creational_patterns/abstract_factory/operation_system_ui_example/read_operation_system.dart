import 'dart:math';

enum OperationSystemType {
  macOs,
  windows,
}

OperationSystemType readOperationSystemType() {
  final random = Random();
  final randomOSTypeIndex = random.nextInt(OperationSystemType.values.length);

  return OperationSystemType.values[randomOSTypeIndex];
}
