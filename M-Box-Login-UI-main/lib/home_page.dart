import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roll_dice_app/Widgets/all_widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final String name = "Sheeraz";

  final List<Widget> icons = [
    const Icon(
      CupertinoIcons.car_detailed,
      color: Colors.blue,
    ),
    const Icon(
      CupertinoIcons.creditcard_fill,
      color: Colors.blue,
    ),
    const Icon(
      CupertinoIcons.airplane,
      color: Colors.blue,
    )
  ];
  final List<Widget> title = [
    const Text("Apply For auto Loan"),
    const Text("Apply For credit card"),
    const Text("Apply For plan"),
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
              children: [
                Icon(
                  Icons.home_filled,
                  color: Colors.blue,
                ),
                Icon(Icons.app_blocking, color: Colors.blue)
              ],
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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AllWidgets.topText(name),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: icons.length,
                  itemBuilder: (context, index) {
                    print(context);
                    return AllWidgets.listTile(
                      icons[index],
                      title[index],
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
