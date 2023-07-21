import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gorilla_film/screens/starting_screen.dart';

void main() {
  runApp(const GorillaFilms());
}

class GorillaFilms extends StatelessWidget {
  const GorillaFilms({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return const  MaterialApp(
          debugShowCheckedModeBanner: false,
          home: StartScreen(),
        );
      },
    );
  }
}
