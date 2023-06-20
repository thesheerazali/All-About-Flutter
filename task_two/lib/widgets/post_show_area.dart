import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostsArea extends StatefulWidget {
  const PostsArea({super.key, required this.index});

  final int index;

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
          borderRadius: BorderRadius.circular(40),
        ),
        height: 350.h,
        width: 370.w,
        child: Column(children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage("assets/images/pic${widget.index + 1}.jpg"),
              )
            ],
          )
        ]),
      ),
    );
  }
}
