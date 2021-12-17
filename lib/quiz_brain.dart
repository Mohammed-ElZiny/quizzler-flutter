import 'question.dart';

class QuizBrain {
  int questionNumber = 0;

  List<Question>_questionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Some cats are actually allergic to humans', true),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true)
  ];

  void nextQuestion() {
    if (questionNumber < _questionBank.length-1) {
      questionNumber++;
    }

  }

  String getQuestion() {
    print(_questionBank[questionNumber].answer);
    print(_questionBank.length);
    print(_questionBank.first.answer);
    print(_questionBank[1].answer);
    print(questionNumber);
    return _questionBank[questionNumber].text;
  }

  bool getQuestionAns() {
    return _questionBank[questionNumber].answer;
  }

  bool isFinished() {
    if (questionNumber >=12) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    questionNumber = 0;
  }
}
