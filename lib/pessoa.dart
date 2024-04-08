class Pessoa{
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(this._nome, this._peso, this._altura);

  double get altura => _altura;

  set altura(double value) {
    _altura = value;
  }

  double get peso => _peso;

  set peso(double value) {
    _peso = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }



  @override
  String toString() {
    return 'Pessoa{_nome: $_nome, _peso: $_peso, _altura: $_altura}';
  }
}