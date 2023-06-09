import 'dart:io';

void main() {
  double n1, n2;

  print("Digite o primeiro numero");
  n1 = double.parse(stdin.readLineSync()!);

  print("Digite o segundo numero");
  n2 = double.parse(stdin.readLineSync()!);

  if (n1 > n2) {
    print("O $n1 é maior que o $n2");
  } else if (n2 > n1) {
    print("O $n1 é maior que o $n1");
  } else {
    print("Os numeros são direntes");
  }
}
