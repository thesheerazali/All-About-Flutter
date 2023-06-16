import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 30,
            ),
          ),
        ),
        Spacer(),
        Text("UserName")
      ],
    );
  }
}
