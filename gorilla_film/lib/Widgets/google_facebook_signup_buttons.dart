import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gorilla_film/screens/login_screen.dart';

import '../screens/signup_screen.dart';

class GoogleFacebookSignUpButton extends StatelessWidget {
  const GoogleFacebookSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              )),
          child: Container(
            height: 50.h,
            width: 155.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/icons/google.png"))),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUpScreen(),
              )),
          child: Container(
            height: 50.h,
            width: 155.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/icons/facebook.png"))),
          ),
        ),
      ],
    );
  }
}
