import 'package:flutter/material.dart';
import 'package:flutter_mencoba/login.dart';

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 90,
              child: DrawerHeader(
                child: Text(
                  'Menu',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              title: Text('Login disini'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
            ListTile(
              title: Text('Kebijakan'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Pengaturan'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Update Aplikasi'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
