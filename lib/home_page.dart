import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:second_application/quiz.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 240,
          ),
          Opacity(
            opacity: 1.0, // use opacity to PNG files for thbetter colouring
            child: Image.asset(
              'assets/images/logo.png',
              width: 260,
              height: 260,
              alignment: Alignment.center,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'MARVEL EDITION',
            style: GoogleFonts.almendra(
              color: const Color.fromARGB(255, 10, 147, 104),
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 70),
          OutlinedButton.icon(
            onPressed: startQuiz, //add start quix here
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.lightBlueAccent,
              surfaceTintColor: Colors.black,
              shadowColor: Colors.redAccent,
              //disabledBackgroundColor: Colors.black
              //backgroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              size: 60,
            ),
            label: Text(
              ' Go !',
              style: GoogleFonts.vampiroOne(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          /* const Text(
            'Go!',
            style: TextStyle(fontSize: 20),
          ), */
        ],
      ),
    );
  }
}
