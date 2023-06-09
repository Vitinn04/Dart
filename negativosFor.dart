import 'dart:io';

void main() {
  double vl, num, negativos = 0;

  print("Digite o numero de valores:");
  vl = double.parse(stdin.readLineSync()!);

  for (int i = 1; i <= vl; i++) {
    print("Digite o numero # $i :");
    num = double.parse(stdin.readLineSync()!);

    if (num < 0) {
      negativos++;
    }
  }
  print("Tem $negativos negativos");
}
