

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../main.dart';

// class MyBottomAppBar extends StatefulWidget {
//   const MyBottomAppBar({super.key, });


//   @override
//   State<MyBottomAppBar> createState() => _MyBottomAppBarState();
// }

// class _MyBottomAppBarState extends State<MyBottomAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       notchMargin: 10.0.sp,
//       shape: const CircularNotchedRectangle(),
//       color: Colors.blue[500],
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
//         child: Row(
//           children: [
//             IconButton(
//                 color: MainPage.currentPage == 0 ? Colors.white : Colors.black,
//                 onPressed: () {
//                   setState(() {
//                   MainPage.currentPage = 0;
//                   });
//                 },
//                 icon: Icon(CupertinoIcons.home)),
//             Spacer(),
//             IconButton(
//               color: MainPage.currentPage == 1 ? Colors.white : Colors.black,
//               onPressed: () {
//                 setState(() {
//                   MainPage.currentPage = 1;
//                 });
//               },
//               icon: const Icon(CupertinoIcons.chat_bubble_2_fill),
//             ),
//             Spacer(),
//             IconButton(
//               color: MainPage.currentPage == 2 ? Colors.white : Colors.black,
//               onPressed: () {
//                 setState(() {
//                    MainPage.currentPage = 2;
//                 });
//               },
//               icon: const Icon(CupertinoIcons.person_alt),
//             ),
//             Spacer(),
//             IconButton(
//               color: MainPage.currentPage == 3 ? Colors.white : Colors.black,
//               onPressed: () {
//                 setState(() {
//                   MainPage.currentPage = 3;
//                 });
//               },
//               icon: const Icon(Icons.notification_add_rounded),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
