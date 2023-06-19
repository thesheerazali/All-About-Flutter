import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'buttons.dart';

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
          color: Colors.blue[50],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Column(
          children: [
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
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "@Sheeraz76",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15.14.sp,
                  letterSpacing: 0.9),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: Text(
                  "My name is Sheeraz. I love to Code and travelling all around the world.",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.14.sp,
                      letterSpacing: 0.9),
                ),
              ),
            ),
            // SizedBox(
            //   height: 10.h,
            // ),

            const Buttons(), // follow and message button

            SizedBox(
              height: 20.h,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 110.w),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "All",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    "Photos",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    "Videos",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14.h,
            ),

            Expanded(
              child: Container(
                height: 345.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.r),
                        topRight: Radius.circular(50.r))),
                child: const Padding(
                  padding: EdgeInsets.only(top: 10, right: 16, left: 16),
                  child: MasonryCoustom(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MasonryCoustom extends StatelessWidget {
  const MasonryCoustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemCount: 6,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: (context, index) => ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          "assets/images/pic${index + 1}.jfif",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
