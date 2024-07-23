import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState(){
    return null;
  }
}
class _MyAppState {
  
}
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(100.0),
            child: ElevatedButton(onPressed: () {}, child: Text('Add product')),
          ),
          Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/food.webp'),
                Text('Food Paradise')
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
