import 'package:flutter/material.dart';

import '../Widgets/explore.dart';
import '../Widgets/main_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: MainBody(),
       
    );
  }

  appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: const Text(
        "Explore",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
      ),
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12, top: 10),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Image.asset(
            "assets/images/camera.png",
            scale: 2,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15, top: 10),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              "assets/images/bell.png",
            ),
          ),
        ),
      ],
    );
  }
}
