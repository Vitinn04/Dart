import 'dart:io';

void main() {
  double n1, n2, n3, negativo = 0;

  print("Digite o primeiro numero:");
  n1 = double.parse(stdin.readLineSync()!);

  print("Digite o segundo numero:");
  n2 = double.parse(stdin.readLineSync()!);

  print("Digite o terceiro numero:");
  n3 = double.parse(stdin.readLineSync()!);

  if (n1 < 0) {
    negativo++;
  }
  if (n2 < 0) {
    negativo++;
  }
  if (n3 < 0) {
    negativo++;
  }

  print("Tem $negativo negativos");
}
