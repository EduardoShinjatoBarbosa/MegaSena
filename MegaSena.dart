import 'dart:math';
import 'dart:collection';

void main() {
  final random = Random();
  
  // Mapa para armazenar os jogos: Chave é a quantidade de números, Valor é o conjunto de números
  Map<int, Set<int>> volantesMegaSena = {};

  // Gerando apostas de 6 até 15 números
  for (int quantidade = 6; quantity <= 15; quantity++) {
    
    // SplayTreeSet mantém os elementos únicos e ordenados automaticamente
    Set<int> jogo = SplayTreeSet<int>();

    while (jogo.length < quantidade) {
      // Gera números de 1 a 60
      int numero = random.nextInt(60) + 1;
      jogo.add(numero);
    }

    volantesMegaSena[quantidade] = jogo;
  }

  // Exibição dos resultados
  print('--- VOLANTES GERADOS (MEGA-SENA) ---');
  
  volantesMegaSena.forEach((quantidade, numeros) {
    print('Aposta de $quantidade números: ${numeros.join(" - ")}');
  });
}