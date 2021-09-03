import 'package:flutter/material.dart';
import 'package:flutter_mencoba/kirim_lamaran.dart';
import 'package:flutter_mencoba/register.dart';
import 'package:flutter_mencoba/home_tanpalogin.dart';
import 'package:flutter_mencoba/kirim_lamaran.dart';
import 'package:flutter_mencoba/vacancy/detail_pekerjaan.dart';
import 'package:flutter_mencoba/gantipassword1.dart';

class LoginPage extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<LoginPage> {
  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleDescription() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        Text(
          "Log In",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        Text(
          "Selamat Datang :)",
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.blue,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _textField() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff8b97ff),
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            icon: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 18,
              child: Icon(
                Icons.alternate_email_rounded,
                color: Colors.white,
              ),
            ),
            hintText: "emailkamu@gmail.com",
            hintStyle: TextStyle(color: Color(0xffccd1ff)),
          ),
          style: TextStyle(
            color: Colors.black,
          ),
          autofocus: false,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Nama tidak boleh kosong';
            }
            return null;
          },
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          initialValue: '',
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff8b97ff),
                width: 1.5,
              ),
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                _togglePasswordVisibility();
              },
              child: Icon(
                _isHidePassword ? Icons.visibility_off : Icons.visibility,
                color: _isHidePassword ? Colors.grey : Colors.blue,
              ),
            ),
            isDense: true,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            icon: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 18,
              child: Icon(
                Icons.lock_rounded,
                color: Colors.white,
              ),
            ),
            hintText: "password kamu",
            hintStyle: TextStyle(color: Color(0xffccd1ff)),
          ),
          style: TextStyle(color: Colors.black),
          obscureText: _isHidePassword,
          autofocus: false,
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text(
              'Masuk',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            Text(
              "Lupa Password ? ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              child: Text(
                "Reset Password",
                style: TextStyle(color: Colors.grey),
              ),
              onPressed: () {
                // pindah ke halaman simple
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResetPassword1()));
              },
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 130),
        ),
        InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              child: Text(
                'Masuk Dengan Google',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailPekerjaan()));
            }),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 40),
            ),
            Text(
              "Belum Memiliki Akun ? ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              child: Text(
                "Daftar Sekarang",
                style: TextStyle(color: Colors.blue[400]),
              ),
              onPressed: () {
                // pindah ke halaman simple
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
      ],
    );
  }
}
