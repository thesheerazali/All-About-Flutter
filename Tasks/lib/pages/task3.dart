

import 'package:flutter/material.dart';
import 'package:lgoin_ui/models/api_model.dart';

import 'package:lgoin_ui/models/data_from_api.dart';
import 'package:lgoin_ui/models/data_from_json.dart';

class TaskThree extends StatefulWidget {
  const TaskThree({super.key});

  @override
  State<TaskThree> createState() => _TaskThreeState();
}

class _TaskThreeState extends State<TaskThree> {
  List<PictureFromApi> temperatures = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Api Task"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DataFromApi(),
                    )),
                child: Text("Data From Api"),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataFromJson(),
                    )),
                child: Text("Data From AJsonpi"),
              )
            ],
          ),
        ));
  }
}
