import 'package:flutter/material.dart';
import 'package:second_application/Data/questions.dart';
import 'package:second_application/home_page.dart';
import 'package:second_application/question_screen.dart';
/* import 'package:second_application/Data/questions.dart'; */
import 'package:second_application/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'Start-Screen';

  List<String> selectedAnswer = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'Question-Screen';
      selectedAnswer = [];
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == question.length) {
      setState(() {
        activeScreen = 'Result-Screen';
        //
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == 'Question-Screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'Result-Screen') {
      screenWidget = ResultScreen(
        switchScreen,
        chosenAnswer: selectedAnswer,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 220, 167, 6),
            Color.fromARGB(246, 251, 223, 12)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: screenWidget,
        ),
      ),
    );
  }
}
