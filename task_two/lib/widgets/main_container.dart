import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 193.h),
      child: Container(
        height: 656.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 58.w, vertical: 9.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "1k",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 15.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Follower",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.12.sp,
                          letterSpacing: 0.5.sp),
                    ),
                  ],
                ),
                // const CircleAvatar(
                //   radius: 100,
                //   backgroundColor: Colors.white,
                //   child: CircleAvatar(
                //     radius: 90,
                //     backgroundImage: AssetImage("assets/images/sheeraz3.jpg"),
                //   ),
                // ),

                Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "333",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 15.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Following",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.12.sp,
                        letterSpacing: 0.5.sp,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
