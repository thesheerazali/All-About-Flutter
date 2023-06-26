import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_two/page/chat_page.dart';
import 'package:task_two/page/home_page.dart';
import 'package:task_two/page/notification_page.dart';
import 'package:task_two/page/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        home: HomePage(),
      ),
      designSize: const Size(393.68, 851.97),
    );
  }
}

class MainPage extends StatefulWidget {
  //static var currentPage;

  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static int currentPage = 0;
  List pages = [
    const HomePage(),
    const ChatPage(),
    const ProfilePage(),
    const NotificationPage(),
  ];

  final iconList = <IconData>[
    Icons.home_filled,
    CupertinoIcons.chat_bubble_2_fill,
    CupertinoIcons.person_alt,
    Icons.notification_add_rounded
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Color(0x99FFFFFF),
      resizeToAvoidBottomInset: false,
      floatingActionButton: Container(
        height: 68.h,
        width: 68.w,
        child: FloatingActionButton(
          backgroundColor: Color(0x99FFFFFF),
          onPressed: () {},
          child: Image.asset("assets/images/plus.png"),
        ),
      ),

      // Here's the new attribute:

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeColor: Colors.white,
        iconSize: 30,
        backgroundColor: Color.fromRGBO(87, 144, 223, 0.6),

        activeIndex: currentPage,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,

        height: 70,
        onTap: (index) => setState(() => currentPage = index),
        //other params
      ),
      body: pages[currentPage],
    );
  }

  Widget myBottomAppBar() {
    return BottomAppBar(
      notchMargin: 10.0.sp,
      shape: const CircularNotchedRectangle(),
      color: Colors.blue[500],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Row(
          children: [
            IconButton(
                color: currentPage == 0 ? Colors.white : Colors.black,
                onPressed: () {
                  setState(() {
                    currentPage = 0;
                  });
                },
                icon: Icon(CupertinoIcons.home)),
            Spacer(),
            IconButton(
              color: currentPage == 1 ? Colors.white : Colors.black,
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
              icon: const Icon(CupertinoIcons.chat_bubble_2_fill),
            ),
            Spacer(),
            IconButton(
              color: currentPage == 2 ? Colors.white : Colors.black,
              onPressed: () {
                setState(() {
                  currentPage = 2;
                });
              },
              icon: const Icon(CupertinoIcons.person_alt),
            ),
            Spacer(),
            IconButton(
              color: currentPage == 3 ? Colors.white : Colors.black,
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
              icon: const Icon(Icons.notification_add_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
