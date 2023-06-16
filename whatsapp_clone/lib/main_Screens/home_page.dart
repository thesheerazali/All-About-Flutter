import 'package:flutter/material.dart';


import '../chat_DetailPages/baba.dart';
import '../chat_DetailPages/hassnain.dart';
import '../chat_DetailPages/mashooq.dart';
import '../chat_DetailPages/shahzeb.dart';
import '../chat_DetailPages/sheeraz.dart';
import '../chat_DetailPages/sufi.dart';
import '../chat_DetailPages/zeeshan.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
            
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SheerazScreen(),
                    ));
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/raz.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Sheeraz Zong',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Where Are You'),
              trailing: Text('3:40am'),
            ),
            //Baba Chat

            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BabaScreen(),
                    ));
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/baba.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('BABA',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Theek aw'),
              trailing: Text('1:55 pm'),
            ),
            //Hassnain Chat
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HassnainScreen(),
                    ));
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/panda.jpeg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Hassnain',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Jianiiii'),
              trailing: Text('5:34 pm'),
            ),

            //Zeeshan Chat

            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ZeshanScreen(),
                    ));
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/zeeshan.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Zeeshan',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('kathy Aheen'),
              trailing: Text('8:21 pm'),
            ),

            //shahzeb Chat

            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShahzebScreen(),
                    ));
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/shahzeb.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Lala Shahzeb',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('ma achain THo'),
              trailing: Text('5:45 pm'),
            ),

            //Mashhoq Chat

            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MashooqScreen(),
                    ));
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/mashooq.jpeg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Mashooq',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Hawal dy Daa'),
              trailing: Text('7:27 pm'),
            ),

            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SufiyanScreen(),
                    ));
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/sufi.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Sufyan',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Hyyy'),
              trailing: Text('6:58 pm'),
            ),

            //Zain Chat

            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HassnainScreen(),
                    ));
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/zain.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Zain ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('oky'),
              trailing: Text('10:45 pm'),
            ),

            //Toqeer Chat

            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HassnainScreen(),
                    ));
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/toqi.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Toqeer',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Univerty Endai?'),
              trailing: Text('12:41 pm'),
            ),

            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HassnainScreen(),
                    ));
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/zeeshan.jpg'),
                backgroundColor: Colors.green,
              ),
              title: const Text('Zeeshan',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('kathy Aheen'),
              trailing: Text('8:21 pm'),
            ),
          ],
        ),
      )),
    );
  }
}
