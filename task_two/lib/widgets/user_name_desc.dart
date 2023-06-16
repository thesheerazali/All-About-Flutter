import 'package:flutter/material.dart';

class UserNmaeDesc extends StatelessWidget {
  const UserNmaeDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, right: 13),
          child: Text(
            "@Sheeraz76",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "My Name is Sheeraz i love to Code \n      and Develope Amazing App",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.12,
                color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
