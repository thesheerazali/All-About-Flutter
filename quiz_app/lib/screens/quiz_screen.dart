import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button.dart';

import '../data/queations.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var currentAnswerIndex = 0;

  void answerQueation() {
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
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              ...currentQueations.getShuffledAnswers().map((answer) {
                return AnswerButton(
                  ansText: answer,
                  ontab: answerQueation,
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
