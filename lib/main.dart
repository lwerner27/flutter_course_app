import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(MyApp());

// Underscore is a convention for making objects private.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager("Testing Init"),
      ),
    );
  }
}
