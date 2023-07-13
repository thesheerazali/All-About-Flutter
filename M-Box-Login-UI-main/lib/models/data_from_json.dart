import 'package:flutter/material.dart';

class DataFromJson extends StatefulWidget {
  const DataFromJson({super.key});

  @override
  State<DataFromJson> createState() => _DataFromJsonState();
}

class _DataFromJsonState extends State<DataFromJson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data FRom Json "),
      ),
    );
  }
}
