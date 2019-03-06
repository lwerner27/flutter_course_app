import "package:flutter/material.dart";

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = "Sweets Tester"}); // This is a named property with a default value.

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super
        .initState(); // It is recommended to move this to the beginning of the initState method.
    _products.add(widget
        .startingProduct); // There is no need to use setState in initState as it runs before build.
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).accentColor,
            onPressed: () {
              setState(() {
                _products.add("Advanced Food Tester");
              });
            },
            child: Text("Add Product"),
          ),
        ),
        Products(products: _products),
      ],
    );
  }
}
