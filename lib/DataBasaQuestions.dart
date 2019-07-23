import 'model/Question.dart';

class DataBaseQuestions {
  static Question question0 = Question();
  static Question question1 = Question();
  static Question question2 = Question();
  static Question question3 = Question();

  Question get getQuestion0 {
    return question0;
  }
    Question get getQuestion1 {
    return question1;
  }
    Question get getQuestion2 {
    return question2;
  }
    Question get getQuestion3 {
    return question3;
  }

  void q0() {
    String question =
        'O sono é dividido em duas fases distintas, sendo essas chamadas de REM e NREM. A cerca das fases do sono, marque a alternativa que indica o significado correto das siglas citadas acima, respectivamente:';
    List<String> answers = [
      'A) Movimentos oculares moderados e Sem movimentos oculares  moderados',
      'B) Movimentos oculares rápidos e Sem Movimentos Oculares Rápidos',
      'C) Movimentos oculares espaçados e Sem Movimentos oculares espaçados',
      'D) Movimentos das pálpebras e Sem Movimentos das pálpebras'
    ];
    int correctAnswer = 1;

    question0.setQuestion = question;
    question0.setAnswers = answers;
    question0.setCorrectAnswer = correctAnswer;
  }

  void q1() {
    String question =
        'Em qual(quais) fase(s) ou estágio(os) do sono ocorre(em) os sonhos?';
    List<String> answers = [
      'A) No primeiro estágio da fase NREM.',
      'B) No terceiro estágio da fase NREM e no último estágio da fase REM.',
      'C) No primeiro e segundo estágio da fase NREM. ',
      'D) Na fase REM'
    ];
    int correctAnswer = 3;

    question1.setQuestion = question;
    question1.setAnswers = answers;
    question1.setCorrectAnswer = correctAnswer;
  }
}
