import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lgoin_ui/models/json_model.dart';


class DataFromJson extends StatefulWidget {
  const DataFromJson({super.key});

  @override
  State<DataFromJson> createState() => _DataFromJsonState();
}

class _DataFromJsonState extends State<DataFromJson> {
  List<JsonData> pictureData = [];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Data FRom Json "),
        ),
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: pictureData.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.network(
                        pictureData[index].thumbnailUrl,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      title: Text(pictureData[index].title),
                      subtitle: Text('Photo ID: ${pictureData[index].id}'),
                    );
                  },
                );
              } else {
                const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return const Center(child: CircularProgressIndicator());
            }));
  }

  Future<List<JsonData>> getData() async {
    final String response = await rootBundle.loadString('assets/pictures.json');
    final data = await json.decode(response);

    for (Map<String, dynamic> index in data) {
      pictureData.add(JsonData.fromJson(index));
    }
    return pictureData;
  }
}
