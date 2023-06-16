import 'package:flutter/material.dart';
import 'package:task_one/pages/add_post.dart';
import 'package:task_one/pages/chat_page.dart';
import 'package:task_one/pages/home_page.dart';
import 'package:task_one/pages/notification_page.dart';
import 'package:task_one/pages/profile_page.dart';

class NavigationBarContainer extends StatefulWidget {
  const NavigationBarContainer({super.key});

  @override
  State<NavigationBarContainer> createState() => _NavigationBarContainerState();
}

class _NavigationBarContainerState extends State<NavigationBarContainer> {
  final int _selectedPageIndex = 0;

  static const List<Widget> _appPages = [
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
        child: _appPages[_selectedPageIndex],
      ),
      bottomNavigationBar: ConstumBottomNavigationBar(),
    );
  }
}
