import 'package:calculadora_imc/validar_resultado.dart';

import 'calcular_imc.dart';
import 'package:calculadora_imc/console_utils.dart';


void execute(){
  print('Calculadora de IMC');
  var terminal = ConsoleUtils();
  var pessoa = terminal.lerDadosDoTerminal();
  var validar = ValidarResultado();

  if (pessoa != null){
      var imcCalculator = CalcularIMC();
      var imc = imcCalculator.calcularIMC(pessoa);
      validar.imprimir(imc, pessoa.nome);
  } else {
    print('Não foi possível calcular o IMC.');
  }
}