import 'package:second_application/Data/questions.dart';

class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> shuffledAnswers() {
    final shuffledOptions = List.of(answers);
    shuffledOptions.shuffle();
    return shuffledOptions;
  }
}
