import 'dart:io';

void main() {
  double lado1, lado2, lado3;

  print("Digite o primeiro lado: ");
  lado1 = double.parse(stdin.readLineSync()!);

  print("Digite o segundo lado: ");
  lado2 = double.parse(stdin.readLineSync()!);

  print("Digite o terceiro lado: ");
  lado3 = double.parse(stdin.readLineSync()!);

  if (lado1 == lado2 && lado1 == lado3) {
    print("É um triagulo equilatero");
  } else {
    print("Não é um triangulo equilatero");
  }
}
