import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailPasswordTextField {
  static Widget emailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(
          fontSize: 16.sp,
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.black.withOpacity(0.4),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  static Widget passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.remove_red_eye,
          color: Color.fromARGB(255, 235, 198, 198),
        ),
        hintText: "Password",
        hintStyle: TextStyle(
          fontSize: 16.sp,
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.black.withOpacity(0.4),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }
}
