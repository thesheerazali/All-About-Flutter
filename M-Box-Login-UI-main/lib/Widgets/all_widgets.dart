import 'package:flutter/material.dart';

class AllWidgets {
  static Widget topText(String name) {
    return Text(
      "Hi $name, How can we help the customer Today?",
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    );
  }

  static Widget listTile(Widget icons, Widget title) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: icons,
        title: title,
        trailing: const Icon(
          Icons.arrow_right_sharp,
          size: 32,
        ),
      ),
    );
  }
}
