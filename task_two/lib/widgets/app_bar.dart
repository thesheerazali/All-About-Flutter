import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class TopBar extends StatefulWidget {
 const TopBar({super.key, });

 

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(32.sp),
              ),
              child: Icon(Icons.arrow_back, size: 35),
            ),
          ),
          Container(
            height: 50.h,
            width: 50.w,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(32.sp),
            ),
            child: Icon(Icons.email, size: 30),
          )
        ],
      ),
    );
  }
}
