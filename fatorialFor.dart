import 'dart:io';

void main() {
  int num, ft;

  print("Digiteo numero: ");
  num = int.parse(stdin.readLineSync()!);
  ft = num;

  for (int i = 1; i < num; i++) {
    ft *= i;
  }
  print("O fatorial de $num  é $ft");
}
