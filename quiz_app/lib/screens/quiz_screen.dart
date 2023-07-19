import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/queations.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var currentAnswerIndex = 0;

  void answerQueation(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentAnswerIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQueations = questions[currentAnswerIndex];
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          padding: const EdgeInsets.all(40),
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQueations.text,
                style: GoogleFonts.lato(
                    color: Color.fromARGB(255, 184, 132, 243),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              ...currentQueations.getShuffledAnswers().map((answer) {
                return AnswerButton(
                  ansText: answer,
                  ontab: () {
                    answerQueation(answer);
                  },
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
