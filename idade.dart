import 'dart:io';

void main() {
  int idade;

  print("Digite sua idade:");
  idade = int.parse(stdin.readLineSync()!);

  if (idade > 15 && idade < 18 || idade > 70) {
    print("O voto é opcional");
  } else if (idade > 18 && idade < 70) {
    print("Voto obrigátorio");
  } else {
    print("Não pode votar");
  }
}
