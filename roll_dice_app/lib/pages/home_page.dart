import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roll_dice_app/pages/Widgets/all_widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final String name = "Sheeraz";

  final List<Widget> icons = [
    const Icon(
      CupertinoIcons.car_detailed,
      color: Colors.blue,
    ),
    const Icon(
      CupertinoIcons.home,
      color: Colors.blue,
    ),
    const Icon(
      CupertinoIcons.airplane,
      color: Colors.blue,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomAppBar(
            padding: EdgeInsets.symmetric(horizontal: 80),
            height: 50,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.home_filled), Icon(Icons.app_blocking)],
            )),
        appBar: AppBar(
          leading: const Icon(
            Icons.home_filled,
            size: 30,
          ),
          title: const Text(
            "My App",
            style: TextStyle(fontSize: 24),
          ),
          actions: const [
            DrawerButton(),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AllWidgets.topText(name),
              Expanded(
                child: ListView.builder(
                  // shrinkWrap: true,
                  itemCount: icons.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        leading: icons[index],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
