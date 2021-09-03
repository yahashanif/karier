import 'package:flutter/material.dart';
import 'package:flutter_mencoba/gantipassword3.dart';

class ResetPassword2 extends StatefulWidget {
  @override
  _ResetPassword2 createState() => _ResetPassword2();
}

class _ResetPassword2 extends State<ResetPassword2> {
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
                  image: AssetImage("images/Mail.png"),
                ),
                color: Colors.lightBlue[50],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Text(
              "Cek email kamu",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Text(
              "Kami baru saja mengirimkan email untuk mengatur ulang kata sandi kamu",
              style: TextStyle(
                color: Colors.black,
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
                width: 200,
                child: Text(
                  'Buka aplikasi email',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResetPassword3()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
