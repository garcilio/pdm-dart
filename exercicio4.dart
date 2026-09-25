void main () {
  final List<String> cidades = ['Ponta Delgada', 'Angra do Heroísmo', 'Horta'];
  final Map<String, double> temperaturas = {
    'Ponta Delgada': 21.0,
    'Angra do Heroísmo': 20.5,
    'Horta': 19.0,
  };
  final Set<String> ilhas = {'São Miguel', 'Terceira', 'Faial', 'Terceira'};

  cidades.add('Vila do Porto');
  print(cidades.length);
  print(ilhas.length);
  print(ilhas.contains('Pico'));
  print(temperaturas['Horta']);

  for (final c in cidades) {
    print('$c -> ${temperaturas[c] ?? 'sem dados'}');
  }

  final quentes = temperaturas.entries
    .where((e) => e.value >= 20)
    .map((e) => e.key)
    .toList();
  print (quentes);

  final soma = temperaturas.values.reduce((a,b) => a+b);
  print ((soma/temperaturas.length).toStringAsFixed(1));

  final tudo = [
    ...cidades,
    if (ilhas.length > 3) 'Lajes',
    for (final i in ilhas) 'Ilha $i',
  ];
  print(tudo.length);
}