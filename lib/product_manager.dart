import "package:flutter/material.dart";
import "./products.dart";

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _Products = ['Food Tester'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                _Products.add('Advanced Food Tester');
              });
            },
            child: Text('Add product')),
      ),
      Products(_Products),
    ]);
  }
}
