import 'model/Question.dart';

class DataBaseQuestions {
  static Question question0 = Question();
  static Question question1 = Question();
  static Question question2 = Question();
  static Question question3 = Question();
  static Question question4 = Question();
  static Question question5 = Question();
  static Question question6 = Question();

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

  Question get getQuestion4 {
    return question4;
  }

  Question get getQuestion5 {
    return question5;
  }

  Question get getQuestion6 {
    return question6;
  }

  void q2() {
    String question =
        'Marque a alternativa correta a respeito da importância do sono.';
    List<String> answers = [
      'A) O sono é importante para a preservação do bem estar humano, além de auxiliar no processo de aprendizagem e na cura de doenças, reestabelencendo a homeostase. Além disso, promove o controle dos ritmos biológicos como o sono e a fome.',
      'B) O sono é importante para a memória de curto e longo prazo, mas não influencia no bem estar do indivíduo.',
      'C) A importância do sono está relacionada à construção da memória a curto e longo prazo, ao processo de aprendizagem, localização espacial, criatividade e desempenho de várias funções ao mesmp tempo.',
      'D) A importância do sono está relacionada com a melhora do aprendizado, reconhecimento de palavras, na localização espacial, preservação de funções cognitivas e executivas, além de constribuir na construção da memória de curto e longo prazo.'
    ];
    int correctAnswer = 3;

    question2.setQuestion = question;
    question2.setAnswers = answers;
    question2.setCorrectAnswer = correctAnswer;
  }

  void q4() {
    String question =
        'O sono promove a manutenção do bem-estar e qualidade de vida humana a partir do controle dos ritmos biológicos. Todos os animais precisam dormir um determinado período de tempo, que na espécie humana, varia de 7-8 horas por dia. Tendo em vista isso e o seu conhecimento acerca do sono, marque a alternativa que informa a porcentagem correta que um ser humano dorme durante a sua vida:';
    List<String> answers = [
      'A) 10%',
      'B) 20%',
      'C) 30%',
      'D) 40%',
    ];
    int correctAnswer = 2;

    question4.setQuestion = question;
    question4.setAnswers = answers;
    question4.setCorrectAnswer = correctAnswer;
  }

  void q5() {
    String question =
        'Para que o sono seja efetivo é preciso que, ao longo da noite, ocorram:';
    List<String> answers = [
      'A) entre três e quatro passagens em cada uma das fases do sono.',
      'B) entre quatro e seis passagens em cada uma das fases do sono.',
      'C) entre quatro e seis passagens na fase REM do sono.',
      'D) entre três e quatro passagens na fase NREM do sono.',
    ];
    int correctAnswer = 1;

    question5.setQuestion = question;
    question5.setAnswers = answers;
    question5.setCorrectAnswer = correctAnswer;
  }

  void q3() {
    String question =
        'Quais são os principais hormônios envolvidos no controle do ciclo circadiano do sono?';
    List<String> answers = [
      'A) Adrenalina, cortisol e melatonina.',
      'B) Adrenalina, melatonina e epinefrina.',
      'C) Melatonina e Serotonina.',
      'D) Adrenalina e Melatonina.'
    ];
    int correctAnswer = 0;

    question3.setQuestion = question;
    question3.setAnswers = answers;
    question3.setCorrectAnswer = correctAnswer;
  }

  void q1() {
    String question =
        'Em qual(quais) fase(s) ou estágio(os) do sono ocorre(em) os sonhos?';
    List<String> answers = [
      'A) No primeiro estágio da fase NREM.',
      'B) No terceiro estágio da fase NREM e no último estágio da fase REM.',
      'C) No primeiro e segundo estágio da fase NREM.',
      'D) Na fase REM'
    ];
    int correctAnswer = 3;

    question1.setQuestion = question;
    question1.setAnswers = answers;
    question1.setCorrectAnswer = correctAnswer;
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

  void q6() {
    String question =
        'Para se ter um sono de melhor qualidade, é necessário um conjunto de ações e hábitos que quando postas em prática, são efetivas e indubitáveis para potencializar o correto funcionamento dos mecanismos fisiológicos, tal como o sono. Baseado nisso, marque a alternativa que não indica um hábito benéfico para o sono:';
    List<String> answers = [
      'A) Ter horários regulares para dormir e acordar, mesmo nos finais de semana.',
      'B) Elaboração de uma rotina relaxante antes da hora de dormir . Tal como um bom banho e ouvir música.',
      'C) Evitar ficar na cama quando não está com sono.',
      'D) Usar medicamentos para dormir sem prescrições médicas.',
    ];
    int correctAnswer = 3;

    question6.setQuestion = question;
    question6.setAnswers = answers;
    question6.setCorrectAnswer = correctAnswer;
  }
  

}
