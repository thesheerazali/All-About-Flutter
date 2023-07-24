import 'package:flutter/material.dart';

import 'getexamples/complex_api_data.dart';
import 'getexamples/example_one_without_model_class.dart';

void main() {
  runApp(const ApiWork());
}

class ApiWork extends StatelessWidget {
  const ApiWork({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ComplexApiData(),
    );
  }
}
