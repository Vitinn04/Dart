import 'dart:io';

void main() {
  int valor;
  
  do {
    print("Digite um numero:");
    valor = int.parse(stdin.readLineSync()!);
  } while (valor != 0);
  print("O numero é zero");
}
