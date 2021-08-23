import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  //just so that we can prevent the app from crashing when there
  // are no more ques available
  //Adding an _ makes the List private and thus protects
  // the answers from being modified by anyone(encapsulation)
  List<Question> _qNa = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
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
        true),
  ];

  void nextQues() {
    if (_questionNumber < _qNa.length - 1) {
      _questionNumber++;
    }
  }

  int quesLength() {
    return _qNa.length;
  }

  void resetQno() {
    _questionNumber = 0;
  }

  String getQuesText() {
    return _qNa[_questionNumber].quesText;
  }

  bool getQuesAns() {
    return _qNa[_questionNumber].quesAns;
  }
}
