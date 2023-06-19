import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Explore",
          style: TextStyle(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(30),
          ),
          child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcon.a),)
      ),
    );
  }
}
