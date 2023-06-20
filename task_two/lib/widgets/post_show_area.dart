import 'package:flutter/material.dart';

class PostsArea extends StatefulWidget {
  const PostsArea({super.key});

  @override
  State<PostsArea> createState() => _PostsAreaState();
}

class _PostsAreaState extends State<PostsArea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 300,
        width: 100,
        child: Image.asset("aasets/images/pic.jfif"),
      ),
    );
  }
}
