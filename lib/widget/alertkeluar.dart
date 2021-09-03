import 'dart:ui';
import 'package:flutter/material.dart';

class AlertLoogout extends StatefulWidget {
  @override
  _AlertLoogoutState createState() => _AlertLoogoutState();
}

class _AlertLoogoutState extends State<AlertLoogout> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog(
        backgroundColor: Colors.white54,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        title: Center(
          child: Text(
            "Yakin Pingin Keluar?",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.23,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Text(
                    "Tidak",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.23,
              child: OutlineButton(
                borderSide: BorderSide(width: 2, color: Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                onPressed: () {},
                child: Text(
                  "Ya",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 11,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
