import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/post_show_area.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var storyName = [
    "Sheeraz",
    "Shahzeb",
    "Hassnain",
    "Zain",
    "Sufiyan",
    "Zeeshan"
  ];

  var profileNames = [
    "Sheeraz Ali",
    "Shahzeb Khan",
    "Hassnain Ali",
    "Sayed Zain",
    "M Sufiyan",
    "Zeeshan Ali"
  ];

  var userNames = [
    "@sheeraz76",
    "@Shahzeb13",
    "@Hassnain87",
    "@Zain78",
    "@Sufiyan98",
    "@Zeeshan45"
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
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  6,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue[300],
                          radius: 45,
                          child: CircleAvatar(
                            radius: 41,
                            backgroundImage:
                                AssetImage("assets/images/pic${index + 1}.jpg"),
                          ),
                        ),
                        Text(
                          storyName[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return PostsArea(
                    index: index,
                    profileNmaes: profileNames[index],
                    usernmae: userNames[index],
                    
                  );
                })
          ],
        ),
      ),
    );
  }
}
