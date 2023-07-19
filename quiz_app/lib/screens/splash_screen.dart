import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(
    this.startQuiz, {
    super.key,
  });

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Learn Flutter With Fun Way!",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
