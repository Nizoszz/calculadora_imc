import 'dart:io';

import 'package:calculadora_imc/pessoa.dart';

class ConsoleUtils {
  Pessoa? lerDadosDoTerminal(){
    String nome;
    double peso;
    double altura;

    try {
      print('Digite o nome da pessoa: ');
      nome = stdin.readLineSync() ?? "";


      print('Digite o peso (em kg): ');
      peso = double.parse(stdin.readLineSync() ?? "0");
      if (peso <= 0) {
        throw FormatException('O peso deve ser maior que zero.');
      }

      print('Digite a altura (em metros): ');
      altura = double.parse(stdin.readLineSync() ?? "0");
      if (altura <= 0) {
        throw FormatException('A altura deve ser maior que zero.');
      }
    } catch (e) {
      print('Erro ao ler os dados do terminal: $e');
      return null;
    }
    return Pessoa(nome, peso, altura);
  }
}