import 'dart:io';

void main() {
  double soma, n1, n2, n3;
  print("Digite o primeiro número: ");
  n1 = double.parse(stdin.readLineSync()!);

  print("Digite o segundo número: ");
  n2 = double.parse(stdin.readLineSync()!);

  print("Digite o terceiro número: ");
  n3 = double.parse(stdin.readLineSync()!);

  soma = n1 + n2 + n3;

  print("A soma é $soma");
}