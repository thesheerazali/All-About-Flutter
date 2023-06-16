import 'package:flutter/material.dart';

import 'main_Screens/call_page.dart';
import 'main_Screens/status_page.dart';
import 'main_Screens/home_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WhatsApp(),
  ));
}

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> topTabs = <Tab>[
    const Tab(icon: Icon(Icons.camera_alt)),
    const Tab(text: 'CHAT'),
    const Tab(
      text: 'STATUS',
    ),
    const Tab(
      text: 'Call',
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 107, 96),
        title: const Text('WhatsApp'),
        actions: [
          IconButton(
              onPressed: () {
                print('sheeraz');
              },
              icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.greenAccent,
            tabs: topTabs),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Text('okkkk'),
          HomePageScreen(),
          StatusPage(),
          CallScreen(),
        ],
      ),
      floatingActionButton: _getFAB(),
    );
  }

  _getFAB() {
    if (_tabController.index == 1) {
      return FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 11, 107, 96),
        child: Icon(Icons.message, color: Colors.white),
        onPressed: () => print('Chat Box Button Clicked'),
      );
    }

    if (_tabController.index == 2) {
      return FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 11, 107, 96),
        child: const Icon(Icons.camera_alt, color: Colors.white),
        onPressed: () => print('Camera Button Clicked'),
      );
    }

    if (_tabController.index == 3) {
      return FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 11, 107, 96),
        child: const Icon(Icons.call, color: Colors.white),
        onPressed: () => print('Call Button Clicked'),
      );
    }
  }
}
