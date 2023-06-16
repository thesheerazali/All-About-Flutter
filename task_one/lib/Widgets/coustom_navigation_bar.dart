import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CoustomNavigationBard extends StatelessWidget {
  CoustomNavigationBard(
      {super.key, required this.selectedPageIndex, required this.onTabFuntion});

  final int selectedPageIndex;
  final Function onTabFuntion;

  final items = <Widget>[
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.home),
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.home),
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.home),
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.home),
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.home),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
       
        height: 75,
        items: items,
        index: selectedPageIndex,
        onTap: (index) {
          !onTabFuntion(2);
        });
  }
}
