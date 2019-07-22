import 'package:myapp/Dica.dart';

class PerguntaDica {
  String _pergunta;
  List<Dica> _dicas = [];

  PerguntaDica(String pergunta, List<Dica> dicas) {
    this._dicas = dicas;
    this._pergunta = pergunta;
  }

  set pergunta(String pergunta) {
    this._pergunta = pergunta;
  }

  set dicas(List<Dica> dicas) {
    this._dicas = dicas;
  }

  String get pergunta {
    return _pergunta;
  }

  List<Dica> get dicas {
    return _dicas;
  }
}
