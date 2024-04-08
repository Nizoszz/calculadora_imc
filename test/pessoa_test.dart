import 'package:calculadora_imc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa', () {
    Pessoa? pessoa1;
    Pessoa? pessoa2;

    setUp(() => {
      pessoa1 = Pessoa('João', 70, 1.75),
      pessoa2 = Pessoa('Maria', 65, 1.70)}
    );
    test('Construtor e getters/setters', () {

      expect(pessoa1?.nome, 'João');
      expect(pessoa1?.peso, 70);
      expect(pessoa1?.altura, 1.75);

      expect(pessoa2?.nome, 'Maria');
      expect(pessoa2?.peso, 65);
      expect(pessoa2?.altura, 1.70);
    });

    test('ToString', () {

      expect(
          pessoa1.toString(), 'Pessoa{_nome: João, _peso: 70.0, _altura: 1.75}');
    });
  });
}