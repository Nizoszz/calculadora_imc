import 'package:calculadora_imc/pessoa.dart';

class CalcularIMC{
  double calcularIMC(Pessoa pessoa){
    return pessoa.peso / (pessoa.altura * pessoa.altura);
  }
}