import 'dart:io';

void campeonato() {
  int numeroRodada = 1;
  int placarUsuario = 0;
  int placarComputador = 0;

  while (numeroRodada <= 3) {
    print('\n** Rodada $numeroRodada **\n');

    int resultadoPartida = partida();

    if (resultadoPartida == 1) {
      placarUsuario++;
    } else if (resultadoPartida == -1) {
      placarComputador++;
    }

    numeroRodada += 1;
  }

  print('\nPlacar: Você $placarUsuario X $placarComputador Computador');
}

int partida() {
  int n = 0;
  int m = 0;

  while (n <= 0) {
    stdout.write('Quantas peças? ');
    try {
      n = int.parse(stdin.readLineSync()!);

      if (n <= 0) {
        print('Número inválido. Insira um valor positivo para a quantidade de peças.');
      }
    } catch (e) {
      print('Entrada inválida. Reinicie o jogo e insira um valor numérico válido.');
      return 0;
    }
  }

  while (m <= 0) {
    stdout.write('Limite de peças por jogada? ');
    try {
      m = int.parse(stdin.readLineSync()!);

      if (m <= 0) {
        print('Número inválido. Insira um valor positivo para o limite de peças por jogada.');
      }
    } catch (e) {
      print('Entrada inválida. Reinicie o jogo e insira um valor numérico válido.');
      return 0;
    }
  }

  bool vezDoPC = false;

  if (n % (m + 1) == 0) {
    print('\nVocê começa!');
  } else {
    print('\nComputador começa!');
    vezDoPC = true;
  }

  while (n > 0) {
    if (vezDoPC) {
      int computadorRemove = computadorEscolheJogada(n, m);
      n -= computadorRemove;

      if (computadorRemove == 1) {
        print('\nO computador tirou uma peça');
      } else {
        print('\nO computador tirou $computadorRemove peças');
      }

      vezDoPC = false;
    } else {
      int jogadorRemove = usuarioEscolheJogada(n, m);
      n -= jogadorRemove;

      if (jogadorRemove == 1) {
        print('\nVocê tirou uma peça');
      } else {
        print('\nVocê tirou $jogadorRemove peças');
      }

      vezDoPC = true;
    }

    if (n == 1) {
      print('Agora resta apenas uma peça no tabuleiro.\n');
    } else if (n != 0) {
      print('Agora restam $n peças no tabuleiro.\n');
    }
  }

  if (vezDoPC) {
    print('Fim do jogo! Você ganhou!');
    return 1;
  } else {
    print('Fim do jogo! O computador ganhou!');
    return -1;
  }
}

int computadorEscolheJogada(int n, int m) {
  int jogada = 1;

  while (jogada <= m) {
    if ((n - jogada) % (m + 1) == 0) {
      return jogada;
    }
    jogada++;
  }

  return m;
}

int usuarioEscolheJogada(int n, int m) {
  int jogada = 0;

  while (jogada <= 0 || jogada > m) {
    stdout.write('Sua vez! Quantas peças você vai tirar? ');
    try {
      jogada = int.parse(stdin.readLineSync()!);

      if (jogada <= 0 || jogada > m) {
        print('Jogada inválida. Escolha um valor entre 1 e $m.');
      }
    } catch (e) {
      print('Entrada inválida. Insira um valor numérico válido.');
    }
  }

  return jogada;
}

void main() {
  print("====================================");
  print(' | Bem-vindo ao jogo do NIM! | ');
  campeonato();
}