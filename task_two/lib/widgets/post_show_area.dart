import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostsArea extends StatefulWidget {
  const PostsArea({
    super.key,
    required this.index,
    required this.profileNmaes,
    required this.usernmae,
    required this.imageUrl,
  });

  final int index;
  final String profileNmaes;
  final String usernmae;
  final String imageUrl;

  @override
  State<PostsArea> createState() => _PostsAreaState();
}

class _PostsAreaState extends State<PostsArea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          // image: DecorationImage(
          //     image: AssetImage("assets/images/pic${widget.index + 1}.jfif"),
          //     fit: BoxFit.cover),
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(20),
        ),
        height: 350.h,
        width: 370.w,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 28,
                  child: CircleAvatar(
                    radius: 24,
                    backgroundImage:
                        AssetImage("assets/images/pic${widget.index + 1}.jpg"),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.profileNmaes,
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      widget.usernmae,
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Image.network(widget.imageUrl)
          // Image.network(
          //     "https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg"),
        ]),
      ),
    );
  }
}
