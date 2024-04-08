import 'calcular_imc.dart';
import 'package:calculadora_imc/console_utils.dart';


void execute(){
  print('Calculadora de IMC');
  var terminal = ConsoleUtils();
  var pessoa = terminal.lerDadosDoTerminal();

  if (pessoa != null){
      var imcCalculator = CalcularIMC();
      var imc = imcCalculator.calcularIMC(pessoa);
      terminal.imprimirResultado(imc, pessoa.nome);
  } else {
    print('Não foi possível calcular o IMC.');
  }
}