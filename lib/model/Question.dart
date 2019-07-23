class Question {
  String _question;
  List<String> _answers = [];
  int _correctAnswer;

  set setQuestion(String question) {
    this._question = question;
  }

  String get getQuestion {
    return _question;
  }

  set setAnswers(List<String> answer) {
    this._answers = answer;
  }

  List<String> get getAnswers {
    return _answers;
  }

  set setCorrectAnswer(int correctAnswer) {
    this._correctAnswer = correctAnswer;
  }

  int get getCorrectAnswer {
    return _correctAnswer;
  }
}
