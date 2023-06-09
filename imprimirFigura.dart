import 'dart:io';

void main() {
  String texto = "";
  int n;

  print("Digite um numero:");
  n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i < n; i++) {
    texto += "*";
    print(texto);
  }
}
