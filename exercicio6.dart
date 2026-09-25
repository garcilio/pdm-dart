import 'dart:math';

Future<double> lerTemperatura(String localidade) async {
  await Future.delayed(const Duration(seconds: 1));
  return 15 + Random().nextInt(10) + Random().nextDouble();
}

void main() async {
  print ('A pedir Ponta Delgada...');
  final t = await lerTemperatura('Ponta Delgada');
  print ('Ponta Delgada: ${t.toStringAsFixed(1)} ºC');

  final futuro = lerTemperatura('Horta');
  print ('Já pedi Horta e continuei');
  futuro.then((t) => print ('Horta: ${t.toStringAsFixed(1)} ºC'));
  print ('Fim do main (a Horta chega depois)');
}