import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  // Final means that data will never change.
  // It may be replaced but it will never change.
  final List<String> products;

  // Constructor Fucntion in Dart
  Products({this.products = const []}); // This is a constructor with a named property and default value of and empty List.

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(element),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
