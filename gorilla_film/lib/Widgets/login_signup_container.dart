import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gorilla_film/screens/login_screen.dart';

import '../screens/signup_screen.dart';

class LoginSignUpContainer extends StatelessWidget {
  const LoginSignUpContainer({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 600.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),)),
            child: Container(
              height: 50.h,
              width: 120.w,
              decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => const SignUpScreen(),)),
            child: Container(
              height: 50.h,
              width: 120.w,
              decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
