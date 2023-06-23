import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_two/page/profile_page.dart';

import '../utils/coustomIcons.dart';

class PostsArea extends StatefulWidget {
  PostsArea({
    super.key,
    required this.index,
    required this.profileNmaes,
    required this.usernmae,
  });

  final int index;
  final String profileNmaes;
  final String usernmae;

  final postImages = [
    "https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg",
    "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg",
    "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg",
    "https://cdn.pixabay.com/photo/2018/08/23/07/35/thunderstorm-3625405_1280.jpg",
  ];

  // static List users = <String>[
  //   const ProfilePage(),
  // ];

  @override
  State<PostsArea> createState() => _PostsAreaState();
}

class _PostsAreaState extends State<PostsArea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          // image: DecorationImage(
          //     image: AssetImage("assets/images/pic${widget.index + 1}.jfif"),
          //     fit: BoxFit.cover),
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(40),
        ),
        //  height: 350.h,
        padding: EdgeInsets.only(bottom: 10.h),
        width: 370.w,

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 28.r,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(
                            "assets/images/pic${widget.index + 1}.jpg"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.profileNmaes,
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          widget.usernmae,
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.r),
                    child: Image.network(
                      widget.postImages[widget.index],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 60.h,
                      decoration: BoxDecoration(
                          color: const Color(0x4D000000),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40.r),
                              bottomRight: Radius.circular(40.r))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21.w),
                        child: Row(

                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      MyCostumIcons.chat,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      MyCostumIcons.huge2,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    "122",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 82.w,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  MyCostumIcons.send,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  MyCostumIcons.huge1,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
