import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/raz.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Sheeraz Zong',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_missed,
                    size: 18,
                    color: Colors.red,
                  ),
                  Text('35 minutes ago',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                color: Color.fromARGB(255, 11, 107, 96),
              ),
            ),

            //Baba Chat

            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/baba.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('BABA',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_received,
                    size: 18,
                    color: Colors.green,
                  ),
                  Text('55 minutes ago',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                color: Color.fromARGB(255, 11, 107, 96),
              ),
            ),

            //Hassnain Chat
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/panda.jpeg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Hassnain',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_received,
                    size: 18,
                    color: Colors.green,
                  ),
                  Text('Today 1:45 PM',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                color: Color.fromARGB(255, 11, 107, 96),
              ),
            ),

            //Zeeshan Chat

            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/zeeshan.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Zeeshan',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_missed,
                    size: 18,
                    color: Colors.red,
                  ),
                  Text('Today 12:03 PM',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                color: Color.fromARGB(255, 11, 107, 96),
              ),
            ),

            //shahzeb Chat
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/shahzeb.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Lala Shahzeb',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_received,
                    size: 18,
                    color: Colors.green,
                  ),
                  Text('Today 10:35 AM',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                color: Color.fromARGB(255, 11, 107, 96),
              ),
            ),

            //Mashhoq Chat

            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/mashooq.jpeg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Mashooq',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_missed,
                    size: 18,
                    color: Colors.red,
                  ),
                  Text('Today 9:40 AM',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                color: Color.fromARGB(255, 11, 107, 96),
              ),
            ),

            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/sufi.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Sufyan',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_received,
                    size: 18,
                    color: Colors.green,
                  ),
                  Text('Yesterday 11:06 PM',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                color: Color.fromARGB(255, 11, 107, 96),
              ),
            ),

            //Zain Chat

            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/zain.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Zain ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_missed,
                    size: 18,
                    color: Colors.red,
                  ),
                  Text('Today 12:03 PM',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                color: Color.fromARGB(255, 11, 107, 96),
              ),
            ),

            //Toqeer Chat

            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/toqi.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Toqeer',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_missed,
                    size: 18,
                    color: Colors.red,
                  ),
                  Text('Today 12:03 PM',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                color: Color.fromARGB(255, 11, 107, 96),
              ),
            ),

            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/zeeshan.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Zeeshan',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_missed,
                    size: 18,
                    color: Colors.red,
                  ),
                  Text('Today 12:03 PM',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                color: Color.fromARGB(255, 11, 107, 96),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
