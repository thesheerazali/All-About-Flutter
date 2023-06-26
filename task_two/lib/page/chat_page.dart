import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_two/utils/images.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/chatbackground.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                BlurryContainer(
                  blur: 10,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: const Color.fromRGBO(255, 255, 255, 0.3),
                  child: SizedBox(
                    height: 750.h,
                    width: double.infinity.w,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 6.h, horizontal: 6.w),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(230, 238, 250, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20.h, horizontal: 30.w),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 24.r,
                                    backgroundImage: const AssetImage(
                                        "assets/images/pic1.jpg"),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Benjamin Moores",
                                        style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        "Last seen 11:44 AM",
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(108, 122, 156, 1),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 45.h,
                                    width: 45.w,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            87, 144, 223, 1),
                                        borderRadius:
                                            BorderRadius.circular(40.r)),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.cancel_outlined),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ) // Foreground widget here
            ));
  }
}
