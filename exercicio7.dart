class ApiException implements Exception {
  const ApiException(this.codigo, this.mensagem);
  final int codigo;
  final String mensagem;
  @override
  String toString() => 'ApiException($codigo): $mensagem';
}

Future <double> lerTemperatura(String localidade) async {
  await Future.delayed(const Duration(milliseconds: 500));
  if (localidade == 'Atlântida') throw const ApiException(404, 'localidade desconhecida');
  return 21.0;
}

void main() async {
  for (final l in ['Horta', 'Atlântida']) {
    try {
      print ('$l : ${await lerTemperatura(l)} ºC');
    } on ApiException catch (e) {
      print ('A API recusou: ${e.mensagem} (${e.codigo})');
    } finally {
      print ('--- pedido "$l" terminado');
    }
  }
}