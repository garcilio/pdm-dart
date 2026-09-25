import 'dart:async';

import 'exercicio6.dart';

void main() async {
  final localidades = ['Ponta Delgada', 'Angra do Heroísmo', 'Horta'];
  final cronometro = Stopwatch()..start();

  for (final l in localidades) {
    await lerTemperatura(l);
  }
  print ('Em sequência: ${cronometro.elapsedMilliseconds} ms');

  cronometro.reset();
  final temps = await Future.wait(localidades.map(lerTemperatura));
  print ('Em paralelo: ${cronometro.elapsedMilliseconds} ms -> $temps');

  try {
    final t = await lerTemperatura('Flores').timeout(const Duration(milliseconds: 300));
    print ('Flores: $t');
  } on TimeoutException {
    print ('Rede lenta: mostra os dados antigos e tenta mais tarde.');
  }
}