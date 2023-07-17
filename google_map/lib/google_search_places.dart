import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class GoogleSearchPlaces extends StatefulWidget {
  const GoogleSearchPlaces({super.key});

  @override
  State<GoogleSearchPlaces> createState() => _GoogleSearchPlacesState();
}

class _GoogleSearchPlacesState extends State<GoogleSearchPlaces> {
  final TextEditingController _controller = TextEditingController();

  var uvid = const Uuid();

  String? _sessionToken;

  List<dynamic> _places = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      onChanged();
    });
  }

  void onChanged() {
    if (_sessionToken == null) {
      setState(() {
        _sessionToken = uvid.v4();
      });
    }

    getSugestions(_controller.text);
  }

  void getSugestions(String input) async {
    String kPLACES_API_KEY = "AIzaSyB0-X70PeO1P4ofM9vdRSOTjJlOUSjO48g";
    String baseURL =
        "https://maps.googleapis.com/maps/api/place/autocomplete/json";
    String request =
        '$baseURL?input=$input&key=$kPLACES_API_KEY&sessiontoken=$_sessionToken';

    var responce = await http.get(Uri.parse(request));
    print(responce.body.toString());
    if (responce.statusCode == 200) {
      _places = jsonDecode(responce.body.toString())["predictions"];
    } else {
      throw Exception("faild to load");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search A Place"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: "Search Place",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//gjhgdctkututygcg