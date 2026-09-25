void main () {
  String nome = 'Horta';
  String? alcunha;
  int? humidade = 80;

  print (alcunha ?? 'sem alcunha');
  print (alcunha?.length);
  alcunha = 'Cidade do Mar';
  print (alcunha.length);

  print ('Humidade: ${humidade == null ? 'n/d' : '$humidade%'}');

  late String descricao;
  descricao = '$nome, $alcunha';
  print (descricao);
}