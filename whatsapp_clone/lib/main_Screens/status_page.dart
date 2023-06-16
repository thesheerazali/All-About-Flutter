import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          ListTile(
            leading: CircleAvatar(
                backgroundImage: const AssetImage('assets/images/raz.jpg'),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: const Icon(
                    Icons.add_circle,
                    color: Colors.teal,
                    size: 20,
                  ),
                )),
            title: const Text('My status',
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text('Tab to add status update'),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 280),
            child: Text(
              'Recent Update',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/panda.jpeg'),
            ),
            title:
                Text('Hassnain', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('23 minutes ago'),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/zain.jpg'),
            ),
            title: Text('Zain', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Today 11:26 AM'),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/shahzeb.jpg'),
            ),
            title: Text('Lala Shahzeb',
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Today 1:26 PM'),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/sufi.jpg'),
            ),
            title:
                Text('Sufyan', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Today 2:35 PM'),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/baba.jpg'),
            ),
            title: Text('BABA', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Today 3:58 AM'),
          ),
        ]),
      )),
    );
  }
}
