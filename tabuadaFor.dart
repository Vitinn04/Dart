import 'dart:io';

void main() {
  int num;

  print("Digite o numero:");
  num = int.parse(stdin.readLineSync()!);

   for (int i = 1; i <= 10; i++) {
    print(i * num);
  }
}
