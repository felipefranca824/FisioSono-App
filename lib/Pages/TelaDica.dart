import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/Dica.dart';
import 'package:myapp/PerguntaDica.dart';

class TelaDica extends StatefulWidget {
  @override
  _TelaDicaState createState() => _TelaDicaState();
}

class _TelaDicaState extends State<TelaDica> {
  criarDicas() {}

  _showDialog(BuildContext context, String dica) {
    Widget okButton = FlatButton(
      child: Text('OK'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alerta = AlertDialog(
      title: Text('Melhorar sono'),
      content: Text(dica),
      actions: <Widget>[okButton],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alerta;
        });
  }

  @override
  Widget build(BuildContext context) {
    List<Dica> dicas1 = [
      Dica('Entre 3 e 4 horas', 'Durma mais'),
      Dica('Entre 5 e 8 horas', 'Tempo ideal'),
      Dica('Entre 9 e 12 horas', 'Dormindo demais'),
    ];
    List<Dica> dicas2 = [
      Dica('Sim', 'Muito bem'),
      Dica('Não', 'Deveria'),
      Dica('Às vezes', 'Aumente'),
    ];
    List<Dica> dicas3 = [
      Dica('Sim', 'Sonho bom'),
      Dica('Não', 'Sonhe'),
      Dica('Às vezes', 'Deveria sonhar'),
    ];
    List<Dica> dicas4 = [
      Dica('Sim', 'Fitness'),
      Dica('Não', 'Preguiça'),
      Dica('Às vezes', 'Faça mais'),
    ];

    List<PerguntaDica> perguntaDicas = [
      PerguntaDica('Quantas horas você dorme por noite?', dicas1),
      PerguntaDica(
          'Você costuma tirar cochilos para recuperar o \"sono perdido\"?',
          dicas2),
      PerguntaDica('Você normalmente sonha, quando está dormindo?', dicas3),
      PerguntaDica(
          'Você pratica exercícios físicos e mantém hábitos saudáveis?', dicas4)
    ];

    int index = Random().nextInt(perguntaDicas.length);
    print(index);

    PerguntaDica perguntaUsada = perguntaDicas.elementAt(index);

    print(dicas1.elementAt(0).entrada);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 40, right: 40, top: 60),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 200,
              width: 200,
              child: Text(
                perguntaUsada.pergunta,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(height: 20),
            Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: SizedBox.expand(
                    child: RaisedButton(
                  onPressed: () {
                    _showDialog(
                        context, perguntaUsada.dicas.elementAt(0).saida);
                  },
                  child: Text(
                    perguntaUsada.dicas.elementAt(0).entrada,
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ))),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: SizedBox.expand(
                      child: RaisedButton(
                    onPressed: () {
                      _showDialog(
                          context, perguntaUsada.dicas.elementAt(1).saida);
                    },
                    child: Text(
                      perguntaUsada.dicas.elementAt(1).entrada,
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ))),
            ),
            Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: SizedBox.expand(
                    child: RaisedButton(
                  onPressed: () {
                    _showDialog(
                        context, perguntaUsada.dicas.elementAt(2).saida);
                  },
                  child: Text(
                    perguntaUsada.dicas.elementAt(2).entrada,
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                )))
          ],
        ),
      ),
    );
  }
}
