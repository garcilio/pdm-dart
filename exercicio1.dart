void main () {
  var cidade = 'Ponta Delgada';
  int dia = 21;
  double temperatura = 21.5;
  bool chove = false;
  final ilha = 'São Miguel';
  const maxDias = 5;
  double tMin = 17.0;
  double tMax = 23.0;
  var amplitude = tMax - tMin;

  print ('Neste momento, o clima em $cidade na ilha de $ilha está: $temperatura ºC, chuva: $chove');
  print ('Dia ${dia + 1} de $maxDias');
  print ('Amplitude: ${amplitude.toStringAsFixed(1)}ºC');
}