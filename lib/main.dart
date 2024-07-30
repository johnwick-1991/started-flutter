import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _Products = ['Food Tester'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('EasyList'),
        ),
        body: Column(children: [
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
          Column(
              children: _Products.map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/food.webp'),
                  Text(element),
                ],
              ),
            ),
          ).toList())
        ]),
      ),
    );
  }
}
