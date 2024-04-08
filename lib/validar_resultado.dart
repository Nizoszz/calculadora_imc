class ValidarResultado {
  void imprimir(double imc, String nome){

    final classificacoes = {
      16: 'Magreza Grave',
      17: 'Magreza Moderada',
      18.5: 'Magreza Leve',
      25: 'Saudável',
      30: 'Sobrepeso',
      35: 'Obesidade Grau I',
      40: 'Obesidade Grau II (severa)',
      double.infinity: 'Obesidade Grau III (mórbida)',
    };

    final classificacao = classificacoes.entries
        .firstWhere((entry) => imc <= entry.key, orElse: () => classificacoes.entries.last)
        .value;

    print('$nome seu IMC indica $classificacao.');
    }
}