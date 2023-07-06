import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image(
                  height: 50,
                  width: 50,
                  image: AssetImage("images/logo.png"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
