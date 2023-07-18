import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Queationsssss",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(
                height: 50,
              ),
              AnswerButton(ansText: "Answer 1", ontab: () {}),
              AnswerButton(ansText: "Answer 2", ontab: () {}),
              AnswerButton(ansText: "Answer 3", ontab: () {}),
              AnswerButton(ansText: "Answer 4", ontab: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
