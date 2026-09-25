double celsiusParaFahrenheit(double c) => c * 9 / 5 + 32;

String descreve(String cidade, {required double tMax,double? tMin, bool chuva = false, required double t,}) {
  final min = tMin == null ? '' : ', min $tMin';
  return '$cidade: máx $tMax$min${chuva ? ', chuva' : ''}, ${classifica(t: t)}';
}

String classifica ({required double t}) {
  if (t < 15) {
    return 'Frio';
  } else if (t <= 25) {
    return 'Ameno';
  } else {
    return 'Quente';
  }
}

void main() {
  print (celsiusParaFahrenheit(21));
  print (descreve('Angra', tMax: 24, tMin: 21, chuva: false, t: 23));
  print (descreve('Horta', tMax: 22, tMin: 17, chuva: true, t:20));

  final formatar = (double t) => '${t.round()} ºC';
  print (formatar(23));
}