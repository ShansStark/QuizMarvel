import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_application/Data/questions.dart';
import 'package:second_application/question_summary.dart';
import 'package:second_application/home_page.dart';

class ResultScreen extends StatelessWidget {
  //
  const ResultScreen(this.startQuiz, {super.key, required this.chosenAnswer});
  final void Function() startQuiz;
  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add(
        {
          'question-index': i,
          'question': question[i].text,
          'correct_answer': question[i].answers[0],
          'chosen_answer': chosenAnswer[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    //
    final summaryData = getSummaryData();
    final numTotQuestions = question.length;
    final numCrtQuestions = summaryData.where((element) {
      return element['chosen_answer'] == element['correct_answer'];
    }).length;

    return SizedBox(
      width: double.maxFinite,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/result.png',
                width: 200,
                height: 200,
              ),
              Text(
                '$numCrtQuestions out of $numTotQuestions',
                style: GoogleFonts.racingSansOne(fontSize: 30),
              ),
              const SizedBox(height: 10),
              QuestionSummary(summaryData),
              const SizedBox(
                height: 30,
              ),
              //const Text('Chosen and Correct Answer'),
              //const SizedBox(height: 10),
              OutlinedButton.icon(
                onPressed: startQuiz, //add start quix here
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 170, 64, 180),
                  surfaceTintColor: Colors.black,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shadowColor: Colors.redAccent,
                  //disabledBackgroundColor: Colors.black
                  //backgroundColor: Colors.white,
                ),
                icon: const Icon(
                  Icons.restart_alt_rounded,
                  size: 40,
                ),
                label: Text(
                  ' Restart Quiz !',
                  style: GoogleFonts.vampiroOne(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
