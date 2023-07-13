import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lgoin_ui/models/api_model.dart';
import 'package:http/http.dart' as http;

class DataFromApi extends StatefulWidget {
  const DataFromApi({super.key});

  @override
  State<DataFromApi> createState() => _DataFromApiState();
}

class _DataFromApiState extends State<DataFromApi> {
  List<PictureFromApi> temperatures = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Task"),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: temperatures.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(
                      temperatures[index].thumbnailUrl,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    title: Text(temperatures[index].title),
                    subtitle: Text('Photo ID: ${temperatures[index].id}'),
                  );
                },
              );
            } else {
              const Center(
                child: CircularProgressIndicator(),
              );
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }

  Future<List<PictureFromApi>> getData() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        temperatures.add(PictureFromApi.fromJson(index));
      }
      return temperatures;
    } else {
      return temperatures;
    }
  }
}