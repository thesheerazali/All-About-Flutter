import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Bubble(
            alignment: Alignment.center,
            color: const Color.fromRGBO(212, 234, 244, 1.0),
            child: const Text('TODAY',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
          ),
          Bubble(
            margin: const BubbleEdges.only(top: 10),
            alignment: Alignment.topRight,
            nip: BubbleNip.rightTop,
            color: const Color.fromRGBO(225, 255, 199, 1.0),
            child: const Text('Hello, World!', textAlign: TextAlign.right),
          ),
          Bubble(
            margin: const BubbleEdges.only(top: 10),
            alignment: Alignment.topLeft,
            nip: BubbleNip.leftTop,
            child: const Text('Hi, developer!'),
          ),
          Bubble(
            margin: const BubbleEdges.only(top: 10),
            alignment: Alignment.topRight,
            nip: BubbleNip.rightBottom,
            color: const Color.fromRGBO(225, 255, 199, 1.0),
            child: const Text('Hello, World!', textAlign: TextAlign.right),
          ),
          Bubble(
            margin: BubbleEdges.only(top: 10),
            alignment: Alignment.topLeft,
            nip: BubbleNip.leftBottom,
            child: Text('Hi, developer!'),
          ),
          Bubble(
            margin: BubbleEdges.only(top: 10),
            alignment: Alignment.center,
            nip: BubbleNip.no,
            color: Color.fromRGBO(212, 234, 244, 1.0),
            child: Text('TOMORROW',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
          ),
        ],
      ),
    );
  }
}
