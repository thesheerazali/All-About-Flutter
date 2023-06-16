import 'package:flutter/material.dart';

class ShahzebScreen extends StatefulWidget {
  const ShahzebScreen({Key? key}) : super(key: key);

  @override
  State<ShahzebScreen> createState() => _ShahzebScreenState();
}

class _ShahzebScreenState extends State<ShahzebScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: const Color.fromARGB(255, 11, 107, 96),
        title: Row(children: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/shahzeb.jpg'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.0),
            child: Text('Lala Shahzeb'),
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
