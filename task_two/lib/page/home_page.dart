import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> storyImages = [
    "assets/images/pic1.jfif"
        "assets/images/pic2.jfif"
        "assets/images/pic3.jfif"
        "assets/images/pic4.jfif"
        "assets/images/pic5.jfif"
        "assets/images/pic6.jfif"
          

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(top: 16.h),
          child: Text(
            "Explore",
            style: TextStyle(
                color: Colors.black,
                fontSize: 23.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.camera_fill,
              color: Colors.black,
              size: 30.sp,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notification_add_rounded,
                color: Colors.black,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                8,
                (index) => Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(8),
                  child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/pic${index + 1}.jfif")),

                  // child: CircleAvatar(
                  //   backgroundImage: AssetImage(storyImages[index]),
                  // ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
