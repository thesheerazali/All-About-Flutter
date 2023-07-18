import 'package:flutter/material.dart';

import 'custom_marker_info_window.dart';
import 'custom_marker_screen.dart';
import 'google_search_places.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomMarkerInfoWindowScreen(),
    );
  }
}
