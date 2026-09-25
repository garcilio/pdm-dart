enum TipoTempo {sol, nublado, chuva, trovoada}

class Previsao {
  final String cidade;
  final DateTime dia;
  final double tMin;
  final double tMax;
  final TipoTempo tipo;
  
  const Previsao({
    required this.cidade,
    required this.dia,
    required this.tMin,
    required this.tMax,
    this.tipo = TipoTempo.sol,
  });
  
  double get amplitude => tMax - tMin;
  bool get chove => tipo == TipoTempo.chuva || tipo == TipoTempo.trovoada;
  
  Previsao copyWith({double? tMin, double? tMax, TipoTempo? tipo}) => Previsao(
    cidade: cidade,
    dia: dia,
    tMin: tMin ?? this.tMin,
    tMax: tMax ?? this.tMax,
    tipo: tipo ?? this.tipo,
  );
  
  @override
  String toString() => '$cidade ${dia.day}/${dia.month}: $tMin-$tMax ºC, ${tipo.name}';
}

void main() {
  final hoje = Previsao(cidade: 'Ponta Delgada', dia: DateTime(2026, 9, 22), tMin: 17, tMax: 23);
  print(hoje);
  print(hoje.amplitude);
  final amanha = hoje.copyWith(tMax: 25, tipo: TipoTempo.chuva);
  print ('$amanha, chove: ${amanha.chove}');
}