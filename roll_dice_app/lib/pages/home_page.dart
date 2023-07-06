import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
        leading: const Icon(
          Icons.home_filled,
          size: 30,
        ),
        title: const Text(
          "My App",
          style: TextStyle(fontSize: 24),
        ),
      )),
    );
  }
}
