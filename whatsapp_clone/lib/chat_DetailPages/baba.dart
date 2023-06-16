import 'package:flutter/material.dart';


import '../messagepage/baba_messagePage.dart';

class BabaScreen extends StatefulWidget {
  const BabaScreen({Key? key}) : super(key: key);

  @override
  State<BabaScreen> createState() => _BabaScreenState();
}

class _BabaScreenState extends State<BabaScreen> {
  TextEditingController first = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [
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
          ],
          titleSpacing: 0.0,
          backgroundColor: const Color.fromARGB(255, 11, 107, 96),
          title: Row(children: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/baba.jpg'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.0),
              child: Text('BABA          '),
            ),
          ]),
        ),
        body: Column(
          children: [
            const Expanded(child: MessagePage()),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      maxLines: 5,
                      minLines: 1,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        hintText: 'Type a message',
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
