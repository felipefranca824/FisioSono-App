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
        Navigator.pop(context, false);
      },
    );

    AlertDialog alerta = AlertDialog(
      title: Text('Dica para você:'),
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
      Dica('Entre 3 e 4 horas',
          ' Esse tempo não é suficiente para completar os ciclos do sono, logo, haverá descontrole dos ritmos biológico. Durma mais!'),
      Dica('Entre 5 e 8 horas',
          'Tempo ideal para que você complete os ciclos do sono e execute melhor as atividades diárias. Matenha esse padrão! '),
      Dica('Entre 9 e 12 horas',
          'Dormir demais pode causar descontrole dos ritmos biológicos e indisposição durante o dia. Durma menos! É ideal dormir em média 7-8 horas.'),
    ];
    List<Dica> dicas2 = [
      Dica('Sim',
          'A pessoa não consegue recuperar o que perdeu, embora tenha a sensação que sim. O organismo humano não reage à custa de matemáticas, mesmo que as horas de sono somadas correspondam ao total recomendado. Portanto, o ciclo de sono deve processar-se naturalmente e sem grandes atropelos.'),
      Dica('Não',
          'Continue assim! Tirar cochilos durante o dia pode atrapalhar o ritmo circadiano do sono.'),
      Dica('Às vezes',
          'Isso pode atrapalhar o seu ritmo circadiano, diminua a frequência com que isso acontece.'),
    ];
    List<Dica> dicas3 = [
      Dica('Sim',
          'Sonhar é o sinal que você conseguiu atingir todas as fases do sono e chegou à fase final, REM. O que significa que sua memória foi despertada e sua musculatura está relaxada o suficiente, ou seja, você dormiu bem. Continue assim!'),
      Dica('Não',
          'Isso indica que você não atingiu a fase REM, última fase do sono, e sua memória não foi despertada. Você precisa dormir mais!'),
      Dica('Às vezes',
          'Tente dormir mais, pois isso vai fazer com que você atinja a fase REM, aumentando a qualidade do seu sono.'),
    ];
    List<Dica> dicas4 = [
      Dica('Sim',
          'Muito bem! A prática de exercícios melhora a qualidade do sono, além de combater problemas de saúde decorrente do sedentarismo, como problemas circulatório e obesidade. A prática de exercícios deve ser moderada, mas constante, para que não sejam desgastados os músculos e articulações e para que o sono não seja superficial em virtude do excesso de adrenalina liberada. Por isso, a atividade física não é indicada próximo ao horário de dormir.'),
      Dica('Não',
          'A prática de exercícios melhora a qualidade do sono, além de combater problemas de saúde decorrente do sedentarismo, como problemas circulatório e obesidade. A prática de exercícios deve ser moderada, mas constante, para que não sejam desgastados os músculos e articulações e para que o sono não seja superficial em virtude do excesso de adrenalina liberada. Por isso, a atividade física não é indicada próximo ao horário de dormir.'),
      Dica('Às vezes',
          'A prática de exercícios melhora a qualidade do sono, além de combater problemas de saúde decorrente do sedentarismo, como problemas circulatório e obesidade. A prática de exercícios deve ser moderada, mas constante, para que não sejam desgastados os músculos e articulações e para que o sono não seja superficial em virtude do excesso de adrenalina liberada. Por isso, a atividade física não é indicada próximo ao horário de dormir.'),
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
        title: Text(
          'Dicas',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
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
