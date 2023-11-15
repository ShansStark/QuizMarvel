import 'package:flutter/material.dart';
import 'package:second_application/answer_button.dart';
import 'package:second_application/Data/questions.dart';
/* import 'package:second_application/home_page.dart';
import 'package:second_application/quiz.dart'; */
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  //
  var questionIndex = 0;

  void answerClicked(String selectedanswer) {
    widget.onSelectAnswer(selectedanswer);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = question[questionIndex];
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.aclonica(
                    fontSize: 25,
                    //fontWeight: FontWeight.bold,
                    color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 70,
              ),
              ...currentQuestion.shuffledAnswers().map((ans) {
                return AnswerButton(
                    answerText: ans,
                    onTap: () {
                      answerClicked(ans);
                    });
              }),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
