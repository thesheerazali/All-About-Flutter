import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://miro.medium.com/v2/resize:fit:4800/0*P3j1utNledbZ-wxm"),
            fit: BoxFit.cover),
      ),
      //child: // Foreground widget here
    ));
  }
}
