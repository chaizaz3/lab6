import 'Questions.dart';

class QuizBrain {
  // ignore: non_constant_identifier_names
  //ecan
  int _QuestionNumber = 0;
  //
  final List<Questions> _questionBank = [
    Questions('MS-Word is an example of Application Software', true),
    Questions('Ctrl, Shift and Alt are called function keys.', false),
    Questions('A computer cannot "boot" if it does not have the OS', true),
    Questions(
        'Formatting is the process of dividing the disk into tracks and sectors',
        true),
    Questions('Junk e-mail is also called Spool', false),
    Questions('By default, your documents print in potrait mode', true),
    Questions(
        'Microsoft Office is an example of a Horizontal Market Software', true),
    Questions('Wellington Trophy is related to Hockey', false),
    Questions('Refree is a person which controls a football match', true),
    Questions('Santosh Trophy is associated with Golf', false),
  ];

  //ignore:
  void nextQuestions() {
    if (_QuestionNumber < _questionBank.length - 1) {
      _QuestionNumber++;
    }
  }

  // ignore: non_constant_identifier_names
  String GetQuestions() {
    return _questionBank[_QuestionNumber].Question;
  }

  // ignore: non_constant_identifier_names
  bool CorrectAnswer() {
    return _questionBank[_QuestionNumber].Answer;
  }

  bool isFinished() {
    if (_QuestionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _QuestionNumber = 0;
  }
}
