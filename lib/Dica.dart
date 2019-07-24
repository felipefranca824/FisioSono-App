class Dica {
  String _entrada;
  String _saida;

  Dica(String entrada, String saida) {
    this._entrada = entrada;
    this._saida = saida;
  }

  set entrada(String entrada) {
    this._entrada = entrada;
  }

  String get entrada {
    return _entrada;
  }

  set saida(String saida) {
    this._saida = saida;
  }

  String get saida {
    return _saida;
  }
}
