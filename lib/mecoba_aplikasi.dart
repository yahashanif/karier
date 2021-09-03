import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Apps',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios, color: Colors.black),
          title: Text(
            'Learn Layouting',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Colors.black,
            )
          ],
        ),
        body: Text('Hello World'),
      ),
    );
  }
}
