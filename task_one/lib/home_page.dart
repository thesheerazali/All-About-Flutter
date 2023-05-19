import 'package:flutter/material.dart';
import 'package:task_one/sec_pge.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "My App";
    return Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 55,
                color: Colors.orange,
              ),
              Container(
                width: 50,
                height: 55,
                color: Colors.orange,
              ),
              Container(
                width: 50,
                height: 55,
                color: Colors.orange,
              ),
              Container(
                width: 50,
                height: 55,
                color: Colors.orange,
              ),
              Container(
                width: 50,
                height: 55,
                color: Colors.orange,
              ),
            ],
          ),
        ));
  }
}
