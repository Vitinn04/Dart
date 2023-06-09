import 'dart:io';

void main() {
  double num, soma = 0;
  for (int i = 1; i < 6; i++) {
    print("Digite o numero:");
    num = double.parse(stdin.readLineSync()!);

    soma = soma + num;
  }
  print("A resultado da som é $soma");
}
