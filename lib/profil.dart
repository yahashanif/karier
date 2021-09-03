import 'package:flutter/material.dart';
import 'package:flutter_mencoba/kebijakan.dart';
import 'package:flutter_mencoba/register.dart';
import 'package:flutter_mencoba/search.dart';
import 'package:flutter_mencoba/login.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage1()));
            },
          ),
        ],
      ),
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
        child: Drawer(
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Kebijakan()));
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
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 200, height: 200, child: Image.asset("images/maaf.png")),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Text(
              "Yah, Kami belum kenal sama kamu. Kamu harus Log In/Register dulu supaya bisa menggunakan fitur ini.",
              style: TextStyle(
                color: Colors.black38,
                fontSize: 23,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                width: double.infinity,
                child: Text(
                  'Register di sini',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
