import 'dart:async';

Stream<double> leituras() async* {
  for (var i = 0; i < 5; i++) {
    await future.delayed(const Duration(milliseconds: 400));
    yield 18 + i * 0.5;
  }
}

Stream<DateTime> relogio() =>
  Stream.periodic(const Duration(seconds: 1, (_) => DateTime.now()));

void main() async {
  await for (final t in leituras()) {
    print ('Leitura: $t ºC');
  }

  final subscricao = relogio().listen (
    (agora) => print ('${agora.hour}:${agora.minute}:${agora.second}')
  )
}