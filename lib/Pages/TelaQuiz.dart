import 'package:flutter/material.dart';
import 'package:myapp/model/Question.dart';
import '../DataBasaQuestions.dart';
import 'package:flushbar/flushbar.dart';

DataBaseQuestions dataBase = DataBaseQuestions();
List<Question> questions = [dataBase.getQuestion0, dataBase.getQuestion1];

int _index = 0;

final TextStyle styleQuestion = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);
final TextStyle styleAnswers = TextStyle(fontSize: 18.0);
int optionSelected = -1;
int currentQuestion = 0;
String textBtnConfirm = "Confirmar";
bool changeScreenQuestion = false;

class TelaQuiz extends StatefulWidget {
  @override
  _TelaQuizState createState() => _TelaQuizState();
}

class _TelaQuizState extends State<TelaQuiz> {
  @override
  void initState() {
    super.initState();
    dataBase.q0();
    dataBase.q1();
  }

  Widget _buildBntOption(String menssage, int option) {
    return Container(
      margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: SizedBox.expand(
        child: RaisedButton(
          color: optionSelected == option && optionSelected != -1
              ? Colors.green
              : Colors.white,
          highlightColor: Colors.transparent,
          onPressed: () {
            setState(() {
              optionSelected = option;
            });
          },
          child: Text(menssage, style: styleAnswers),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
      ),
    );
  }

  Widget _getBntConfirm() {
    return Container(
      margin: EdgeInsets.only(top: 50.0, bottom: 10.0),
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: SizedBox.expand(
        child: RaisedButton(
          color: Colors.green,
          highlightColor: Colors.transparent,
          onPressed: optionSelected == -1 ? null : verifyAnswer,
          child: Text(
            textBtnConfirm,
            style: TextStyle(fontSize: 25, color: Colors.black87),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
      ),
    );
  }

  void verifyAnswer() {
    setState(() {
      if (!changeScreenQuestion) {
        if (questions[_index].getCorrectAnswer == optionSelected) {
          Flushbar(
            messageText: Text(
              'Acertou :)',
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
            icon: Icon(Icons.done),
            backgroundColor: Colors.green,
            flushbarPosition: FlushbarPosition.TOP,
            margin: EdgeInsets.all(10.0),
            borderRadius: 8,
            duration: Duration(seconds: 3),
          )..show(context);
        } else {
          Flushbar(
            messageText: Text(
              'Errou :\'( ',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            icon: Icon(
              Icons.clear,
              color: Colors.white,
            ),
            backgroundColor: Colors.red,
            flushbarPosition: FlushbarPosition.TOP,
            margin: EdgeInsets.all(10.0),
            borderRadius: 8,
            duration: Duration(seconds: 3),
          )..show(context);
        }
        changeScreenQuestion = true;
      } else {
        _index++;
        changeScreenQuestion = false;
        optionSelected = -1;
      }
      textBtnConfirm = 'Próxima';
    });
  }

  Widget pageQuiz() {
    if (_index >= questions.length)
      return Text('finalizou');
    else
      return SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20.0),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  questions[_index].getQuestion,
                  style: styleQuestion,
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                width: 350,
                child: Column(
                  children: <Widget>[
                    _buildBntOption(questions[_index].getAnswers[0], 0),
                    _buildBntOption(questions[_index].getAnswers[1], 1),
                    _buildBntOption(questions[_index].getAnswers[2], 2),
                    _buildBntOption(questions[_index].getAnswers[3], 3),
                    _getBntConfirm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    if (changeScreenQuestion == false) {
      textBtnConfirm = 'Confirmar';
    }
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.replay,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                _index = 0;
                changeScreenQuestion = false;
                optionSelected = -1;
              });
            },
          ),
        ],
        title: Text(
          'Quiz',
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
      body: pageQuiz(),
    );
  }
}

/*

  Widget pageQuiz() {
    switch (_index) {
      case 0:
        question = dataBase.getQuestion0;
        break;
      case 1:
        question = dataBase.getQuestion1;
        break;
        default:

        break;
    }
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                question.getQuestion,
                style: styleQuestion,
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              width: 350,
              child: Column(
                children: <Widget>[
                  _buildBntOption(question.getAnswers[0], 0),
                  _buildBntOption(question.getAnswers[1], 1),
                  _buildBntOption(question.getAnswers[2], 2),
                  _buildBntOption(question.getAnswers[3], 3),
                  // _getBntConfirm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
*/
