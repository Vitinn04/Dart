import 'dart:mirrors';

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

  //  5 - Métodos e classes

  celular celularDoVictor = celular("Rosa", 3, 0.900, 5.7);
  celular celularDoLucas = celular("Azul", 5, 0.700, 5.9);

  print(celularDoVictor.toString());
  print(celularDoLucas.toString());

  double resultado = celularDoVictor.valorDoCelular(1000);
  print(resultado);

  print(celularDoLucas.valorDoCelular(1000));

  // 6 - Programação orientada a objetos

  Carro Mercedes = Carro('Mercedes');
  Carro Gol = Carro('Gol');

  Mercedes.modelo;
  Gol._segredo;

  // 7 - Herança, Polimorfismo e Abstração

  victor Victor = victor();
  Victor.falar();

  Pagamento pagamento = PagarComBoleto();
  pagamento.pagar();

  pagamento = PagarComPix();
  pagamento.pagar();

}

abstract class Pagamento{
  void pagar();
}

class PagarComBoleto implements Pagamento{

  void pagar(){
    print("Pagando com boleto");
  }

}
class PagarComPix implements Pagamento{
  void pagar(){
    print("Pagando com pix");
  }
}

class pai {
  String falar(){
    return "Corinthians";
  }
}

class victor extends pai{

}

abstract class pessoa {
  
  String comunicar();

}

class pessoaET implements pessoa{

  String comunicar(){
    return "Olá mundo";
  }

}

class pessoaNaoET implements pessoa{

   String comunicar(){
    return "Bom dia";
  }

}

class Carro {
  final String modelo;
  String _segredo = "muito dinheiro";

  int _valor = 1000;

  int get valorDoCarro => _valor;

  void set value(int valor) => _valor = valor;

  Carro(this.modelo);
}

class celular {
  final String cor;
  final int qtdPros;
  final double peso, tamanho;

  celular(this.cor, this.qtdPros, this.peso, this.tamanho);

  @override
  String toString() {
    return "cor $cor, qtdPros $qtdPros, Peso $peso, Tamanho $tamanho";
  }

  double valorDoCelular(double valor) {
    return valor * qtdPros;
  }
}
