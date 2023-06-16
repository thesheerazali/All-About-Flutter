import 'package:flutter/material.dart';
import 'package:task_one/Widgets/stories.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: Stories(),
              height: 150,
            )
          : Column(),
    );
  }
}
