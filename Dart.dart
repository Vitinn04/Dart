void main() {
  // 1 - Introdução a variaveis

  String variaveisNome = "Victor Henrique";
  print(variaveisNome);

  int valorVariavel = 10;
  print(valorVariavel);

  bool verdadeiro = true;
  print(verdadeiro);

  List<String> listaDeValores = ["Victor", "Henrique", "Cavalcante", "Batista"];
  print('${listaDeValores[0]} - ${listaDeValores[3]}');

  double ab = 2.5;
  print(ab);

  // 2 - Introdução a null-safety

  String? nome;
  nome = "ABC";
  print(nome);
  nome = null;

  late String sobrenome;
  sobrenome = "Jorge";
  print(sobrenome);
  //sobrenome = null;

  // 3 - If e Switch

  bool seguirfrente = true;

  if (seguirfrente) {
    print("Andar");
  } else {
    print("Parar");
  }
  
  if (10 > 5) {
    print("10 é maior que 5");
  }

  int valor20 = 5;
  switch (valor20) {
    case 0:
      print("Zero");
      break;
    case 1:
      print("Um");
      break;
    case 2:
      print("Dois");
      break;
    default:
      print("Padrão");
  }

  // 4 - Estrutura de repetição

  for (int i = 1; i <= 10; i++) {
    print(i * 2);
  }
  int contador = 10;
  while (contador != 1) {
    contador = contador - 1;
    print('loop -> $contador');
  }

  //  5 - 
}
