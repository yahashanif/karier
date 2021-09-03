import 'package:flutter/material.dart';
import 'package:flutter_mencoba/home_tanpalogin.dart';
import 'package:flutter_mencoba/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Jogja Karir',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(body: SplashScreen()),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new HomePage(),
        });
  }
}
