// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:lgoin_ui/models/api_model.dart';
// import 'package:http/http.dart' as http;

// class TaskThree extends StatefulWidget {
//   const TaskThree({super.key});

//   @override
//   State<TaskThree> createState() => _TaskThreeState();
// }

// class _TaskThreeState extends State<TaskThree> {
//   List<Temperatures> temperatures = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Api Task"),
//         centerTitle: true,
//       ),
//       body: FutureBuilder(
//           future: getData(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                 itemCount: 3,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     margin: const EdgeInsets.all(16),
//                     padding: const EdgeInsets.all(16),
//                     height: 150,
//                     color: Colors.blueGrey,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Ask Price ${temperatures[index].askPrice}"),
//                         Text("High Price ${temperatures[index].highPrice}"),
//                         Text("Low Price ${temperatures[index].lowPrice}"),
//                       ],
//                     ),
//                   );
//                 },
//               );
//             } else {
//               const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//             return CircularProgressIndicator();
//           }),
//     );
//   }

//   Future<List<Temperatures>> getData() async {
//     final response = await http
//         .get(Uri.parse("https://api.wazirx.com/sapi/v1/tickers/24hr"));
//     var data = jsonDecode(response.body.toString());

//     if (response.statusCode == 200) {
//       for (Map<String, dynamic> index in data) {
//         temperatures.add(Temperatures.fromJson(index));
//       }
//       return temperatures;
//     } else {
//       return temperatures;
//     }
//   }
// }

// main.dart
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // for using json.decode()

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // Hide the debug banner
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//       ),
//       title: 'Kindacode.com',
//       home: const HomePage(),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // The list that contains information about photos
  List _loadedPhotos = [];

  // The function that fetches data from the API
  Future<void> _fetchData() async {
    const apiUrl = 'https://jsonplaceholder.typicode.com/photos';

    final response = await http.get(Uri.parse(apiUrl));
    final data = json.decode(response.body);

    setState(() {
      _loadedPhotos = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kindacode.com'),
        ),
        body: SafeArea(
            child: _loadedPhotos.isEmpty
                ? Center(
                    child: ElevatedButton(
                      onPressed: _fetchData,
                      child: const Text('Load Photos'),
                    ),
                  )
                // The ListView that displays photos
                : ListView.builder(
                    itemCount: _loadedPhotos.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return ListTile(
                        leading: Image.network(
                          _loadedPhotos[index]["thumbnailUrl"],
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        title: Text(_loadedPhotos[index]['title']),
                        subtitle:
                            Text('Photo ID: ${_loadedPhotos[index]["id"]}'),
                      );
                    },
                  )));
  }
}
