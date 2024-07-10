import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(questionText: 'Question1', questionAnswer: true),
    Question(questionText: 'Question2', questionAnswer: true),
    Question(questionText: 'Question3', questionAnswer: true),
    Question(questionText: 'Question4', questionAnswer: true),
    Question(questionText: 'Question5', questionAnswer: true),
    Question(questionText: 'Question6', questionAnswer: true),
    Question(questionText: 'Question7', questionAnswer: true),
    Question(questionText: 'Question8', questionAnswer: true),
    Question(questionText: 'Question9', questionAnswer: true),
    Question(questionText: 'Question10', questionAnswer: true),
    Question(questionText: 'Question11', questionAnswer: true),
    Question(questionText: 'Question12', questionAnswer: true),
    Question(questionText: 'Question13', questionAnswer: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
