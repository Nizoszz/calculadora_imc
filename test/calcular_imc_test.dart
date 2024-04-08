import '../lib/calcular_imc.dart';
import 'package:calculadora_imc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('CalcularIMC', () {
    test('Deve calcular o IMC corretamente', () {
      final calcularIMC = CalcularIMC();

      final pessoa = Pessoa('Teste', 70, 1.75);
      final imcEsperado = 70 / (1.75 * 1.75);

      final resultado = calcularIMC.calcularIMC(pessoa);

      expect(resultado, equals(imcEsperado));
    });
  });
}