import 'package:flutter/material.dart';

class FollowCount extends StatelessWidget {
  const FollowCount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 15, left: 50, right: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                "1k",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Follower",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                "333",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  textAlign: TextAlign.center,
                  "Following",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
