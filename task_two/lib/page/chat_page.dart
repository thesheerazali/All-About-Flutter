import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(230, 238, 250, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.r))),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 26.h, horizontal: 28.w),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 24.r,
                                    backgroundImage: const AssetImage(
                                        "assets/images/pic1.jpg"),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sheeraz Ali",
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
                                  SizedBox(
                                    width: 70.w,
                                  ),
                                  Container(
                                    height: 45.h,
                                    width: 45.w,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            87, 144, 223, 1),
                                        borderRadius:
                                            BorderRadius.circular(40.r)),
                                    child: Image.asset(
                                      "assets/images/cancelIcon.png",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14.w, vertical: 12.h),
                              child: Divider(
                                color: const Color.fromRGBO(0, 0, 0, 0.5),
                                height: 1.h,
                              ),
                            ),

                            const SizedBox(
                              height: 300,
                            ),

                            Expanded(
                              //  flex: 2,
                              child: Column(
                                children: [
                                  BubbleNormal(
                                    text: 'Kaha Ho?',
                                    isSender: false,
                                    color: Colors.white,
                                    tail: true,
                                    textStyle: TextStyle(
                                      fontSize: 17.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  BubbleNormal(
                                    text: 'Main Aw Raha hoooon',
                                    isSender: false,
                                    color: Colors.white,
                                    tail: true,
                                    textStyle: TextStyle(
                                      fontSize: 17.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  BubbleNormal(
                                    text: 'haawww Theeek haii ajao',
                                    isSender: true,
                                    color: Color.fromRGBO(87, 144, 223, 1),
                                    tail: true,
                                    textStyle: TextStyle(
                                      fontSize: 17.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  BubbleNormal(
                                    text: 'Commingggg',
                                    isSender: false,
                                    color: Colors.white,
                                    tail: true,
                                    textStyle: TextStyle(
                                      fontSize: 17.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 80.h),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12.w,
                                    ),
                                    child: Wrap(
                                      children: [
                                        Container(
                                          height: 45.h,
                                          width: 45.w,
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  87, 144, 223, 1),
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: Icon(
                                            Icons.camera_alt,
                                            size: 25.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Container(
                                              height: 45.h,
                                              width: 280.w,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30)),
                                                  hintText: 'Text Here',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 45.h,
                                              width: 45.w,
                                              decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(
                                                      87, 144, 223, 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40)),
                                              child: Icon(
                                                Icons.send,
                                                size: 25.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                            // Stack(

                            //   children: [
                            //     Container(
                            //       height: 50.h,
                            //       width: 200.w,
                            //       decoration: const BoxDecoration(
                            //         color: Colors.white,
                            //         borderRadius: BorderRadius.only(
                            //           topLeft: Radius.circular(40),
                            //           topRight: Radius.circular(40),
                            //           bottomRight: Radius.circular(40),
                            //         ),
                            //       ),
                            //     )
                            //   ],
                            // )
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
