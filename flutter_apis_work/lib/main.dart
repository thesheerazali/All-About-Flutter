import 'package:flutter/material.dart';

import 'getexamples/example_one_using_model_class.dart';
import 'getexamples/example_one_without_model_class.dart';

void main() {
  runApp( const ApiWork());
}

class ApiWork extends StatelessWidget {
  const ApiWork({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home: ExampleOneWithoutModelClass(),
    );
  }
}
