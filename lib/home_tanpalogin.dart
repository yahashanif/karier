import 'package:flutter/material.dart';
import 'package:flutter_mencoba/home_denganlogin.dart';
import 'package:flutter_mencoba/beranda.dart';
import 'package:flutter_mencoba/bookmark.dart';
import 'package:flutter_mencoba/informasi_profil2.dart';
import 'package:flutter_mencoba/lengkapi-profil.dart';
import 'package:flutter_mencoba/profil-login.dart';
import 'package:flutter_mencoba/informasi_profil2.dart';

class HomePage extends StatefulWidget {
  @override
  MyHomePage createState() => new MyHomePage();
}

class MyHomePage extends State<HomePage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new HomeWithLogin(),
    new InformasiProfil2(),
    new InformasiProfil()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: Colors.blue,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.bookmark,
              color: Colors.blue,
            ),
            icon: new Icon(
              Icons.bookmark,
              color: Colors.grey,
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: Colors.blue,
            ),
            icon: new Icon(
              Icons.person,
              color: Colors.grey,
            ),
            title: new Text(''),
          ),
        ],
      ),
    );
  }
}
