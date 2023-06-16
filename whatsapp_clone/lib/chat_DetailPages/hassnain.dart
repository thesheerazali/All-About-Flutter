import 'package:flutter/material.dart';

class HassnainScreen extends StatefulWidget {
  const HassnainScreen({Key? key}) : super(key: key);

  @override
  State<HassnainScreen> createState() => _HassnainScreenState();
}

class _HassnainScreenState extends State<HassnainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: const Color.fromARGB(255, 11, 107, 96),
        title: Row(children: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/panda.jpeg'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.0),
            child: Text('Hassnain'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: Icon(Icons.video_call),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(Icons.call),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Icon(Icons.more_vert),
          ),
        ]),
      ),
    );
  }
}
