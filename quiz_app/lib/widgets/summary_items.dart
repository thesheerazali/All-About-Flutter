import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/widgets/queation_identifier.dart';

class SummaryItems extends StatelessWidget {
  const SummaryItems({super.key, required this.itemData});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrect = itemData["correct_answer"] == itemData["user_answer"];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QueationIdentifier(
            isCorrect: isCorrect,
            queationIndex: (itemData["question_index"] as int) + 1),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData["question"] as String,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 218, 200, 240),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  itemData["user_answer"] as String,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 236, 132, 167),
                  ),
                ),
                Text(
                  itemData["correct_answer"] as String,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 153, 196, 228),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
