import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/app_bar.dart';

import '../widgets/main_container.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, });



  @override
  Widget build(BuildContext context) {
    //double deviceWidht = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            TopBar(),
            const MainContainer(),
            Padding(
              padding: EdgeInsets.only(top: 110.h, left: 130.w),
              child: const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("assets/images/pic1.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
