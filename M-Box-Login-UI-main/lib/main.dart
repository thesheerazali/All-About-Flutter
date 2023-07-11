import 'package:flutter/material.dart';
import 'package:lgoin_ui/pages/task2.dart';

//import 'pages/task1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskTwo(),
    );
  }
}
