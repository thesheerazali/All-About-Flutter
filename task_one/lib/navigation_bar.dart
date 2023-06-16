import 'package:flutter/material.dart';
import 'package:task_one/pages/add_post.dart';
import 'package:task_one/pages/chat_page.dart';
import 'package:task_one/pages/home_page.dart';
import 'package:task_one/pages/notification_page.dart';
import 'package:task_one/pages/profile_page.dart';

import 'Widgets/coustom_navigation_bar.dart';

class NavigationBarContainer extends StatefulWidget {
  const NavigationBarContainer({super.key});

  @override
  State<NavigationBarContainer> createState() => _NavigationBarContainerState();
}

class _NavigationBarContainerState extends State<NavigationBarContainer> {
   int selectedPageIndex = 0;
  void iconTabed(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  static const List<Widget> appPages = [
    HomePage(),
    ChatPage(),
    AddPost(),
    ProfilePage(),
    NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: appPages[selectedPageIndex],
      ),
      bottomNavigationBar: CoustomNavigationBard(
          selectedPageIndex: selectedPageIndex, onTabFuntion: iconTabed),
    );
  }
}
