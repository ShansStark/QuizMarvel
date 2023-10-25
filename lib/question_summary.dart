import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:second_application/Data/questions.dart';

class QuestionSummary extends StatelessWidget {
  //
  const QuestionSummary(this.summaryData, {super.key});
  //
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    //color: Colors.blueGrey,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 23, 130, 184)),
                    child: Center(
                      child: Text(
                        ((data['question-index'] as int) + 1).toString(),
                        style: GoogleFonts.taiHeritagePro(
                            fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 28),
                  //Text((data['question-index'] as int?)?.toString() ?? 'N/A'),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          (data['question'] as String),
                          style: GoogleFonts.patrickHandSc(
                              fontSize: 25,
                              color: const Color.fromARGB(255, 5, 36, 190)),
                        ),
                        const SizedBox(height: 5),
                        Text((data['correct_answer'] as String),
                            style: GoogleFonts.gabriela(
                                fontSize: 20,
                                color: const Color.fromARGB(255, 28, 185, 33))),
                        Text((data['chosen_answer'] as String),
                            style: GoogleFonts.gabriela(
                                fontSize: 20,
                                color: const Color.fromARGB(255, 205, 40, 28))),
                        //const SizedBox(height: 10)
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
