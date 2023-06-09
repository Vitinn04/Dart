import 'dart:io';

void main() {
  double num, soma = 0, vl, media;
  print("Digite o numero de valores:");
  num = double.parse(stdin.readLineSync()!);

  for (int i = 1; i <= num; i++) {
    print("Digite o numero # $i :");
    vl = double.parse(stdin.readLineSync()!);
    soma += vl;
  }
  media = soma / num;

  print("A média é $media");
}
