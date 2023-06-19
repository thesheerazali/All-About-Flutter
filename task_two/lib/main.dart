import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_two/page/home_page.dart';
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
        home: MyHomePage(),
      ),
      designSize: const Size(393.68, 851.97),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {},
      ),

      // Here's the new attribute:

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
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
      ),
      body: HomePage(),
    );
  }
}
