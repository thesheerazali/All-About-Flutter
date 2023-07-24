import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gorilla_film/constants/colors.dart';

import '../Widgets/email_password_textfield.dart';
import '../Widgets/google_facebook_signup_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfffe6d29),
              Color(0xffff9305),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(children: [
            Row(
              children: [
                IconButton(
                    padding: EdgeInsets.only(
                      top: 30.h,
                    ),
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios)),
                Padding(
                  padding: EdgeInsets.only(top: 40.h, left: 90.w),
                  child: Image.asset(
                    "assets/images/blackLogo.png",
                    height: 50,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              "Login To Your Account",
              style: GoogleFonts.lato(
                  fontSize: 26.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.h,
            ),
            EmailPasswordTextField.emailTextField(),
            SizedBox(
              height: 10.h,
            ),
            EmailPasswordTextField.passwordTextField(),
            Padding(
              padding: EdgeInsets.only(left: 150.w),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Your Password?",
                    style: GoogleFonts.lato(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Log in",
                    style: GoogleFonts.lato(
                        fontSize: 14.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Not yet a member?",
                    style: GoogleFonts.lato(
                        fontSize: 14.sp, color: Colors.orange[900])),
                SizedBox(
                  width: 5.w,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.lato(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.apple),
                      Text(
                        "Sign in With Apple",
                        style: GoogleFonts.lato(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
            const GoogleFacebookSignUpButton(),
          ]),
        ),
      ),
    );
  }
}
