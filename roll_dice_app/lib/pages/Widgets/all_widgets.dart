import 'package:flutter/material.dart';

class AllWidgets {
  

 static Widget topText(String name) {
    return  Text(
      "Hi $name, How can we help the customer Today?",
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    );
  }
}
