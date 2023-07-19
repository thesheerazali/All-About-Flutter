import 'package:flutter/material.dart';

class QueationIdentifier extends StatelessWidget {
  const QueationIdentifier(
      {super.key, required this.queationIndex, required this.isCorrect});

  final int queationIndex;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isCorrect
            ? const Color.fromARGB(255, 153, 196, 228)
            : Color.fromARGB(255, 236, 132, 167),
      ),
      child: Center(
        child: Text(
          queationIndex.toString(),
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
