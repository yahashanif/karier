import 'package:flutter/material.dart';

class ResetPassword4 extends StatefulWidget {
  @override
  _ResetPassword4 createState() => _ResetPassword4();
}

class _ResetPassword4 extends State<ResetPassword4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                  image: AssetImage("images/check.png"),
                ),
                color: Colors.lightBlue[50],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Text(
              "Kata sandi kamu sudah berhasil diganti",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
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
                  'Kembali ke profil',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
