import 'package:flutter/material.dart';
import 'package:flutter_mencoba/gantipassword4.dart';

class ResetPassword3 extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ResetPassword3> {
  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ganti Password'), centerTitle: true),
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
        Container(
          margin: EdgeInsets.only(left: 5, top: 16),
          child: Text(
              "Kata sandi yang baru harus berbeda dengan kata sandi sebelumnya",
              style: TextStyle(fontSize: 23)),
        ),
      ],
    );
  }

  Widget _textField() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Kata Sandi',
                style: TextStyle(color: Colors.black38, fontSize: 16),
              ),
              TextFormField(
                initialValue: '',
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black38,
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
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black38,
                      width: 3.0,
                    ),
                  ),
                ),
                style: TextStyle(color: Colors.black),
                obscureText: _isHidePassword,
                autofocus: false,
              ),
              Text(
                'Minimal 8 Karakter',
                style: TextStyle(color: Colors.black38, fontSize: 16),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Ulangi Kata Sandi',
                style: TextStyle(color: Colors.black38, fontSize: 16),
              ),
              TextFormField(
                initialValue: '',
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black38,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black38,
                      width: 3.0,
                    ),
                  ),
                ),
                style: TextStyle(color: Colors.black),
                autofocus: false,
              ),
              Text(
                'Pastikan Kata Sandi Sama',
                style: TextStyle(color: Colors.black38, fontSize: 16),
              ),
            ],
          ),
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
              'Setel Ulang Password',
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
                MaterialPageRoute(builder: (context) => ResetPassword4()));
          },
        ),
      ],
    );
  }
}
