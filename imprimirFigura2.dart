import 'dart:io';

void main() {
  String texto = "";
  String texto1 = texto;
  int n;

  print("Digite um numero:");
  n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i < n; i++) {
    texto += "*";
    print(texto);
  }
  for (int i = n; i > 1; i--) {
    texto1 = "*";
    print(texto1);
  }
}
