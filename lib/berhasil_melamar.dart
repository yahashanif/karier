import 'package:flutter/material.dart';

class BerhasilMelamar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 200),
              ),
              Container(
                child: Center(
                  child: Image(
                    image: AssetImage("images/berhasil_lamaran.png"),
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.height * 0.18,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Text(
                  "Kamu Berhasil Melamar!",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 24, left: 24, bottom: 24),
                child: Text(
                  "Semoga Kamu Lolos ke Tahap Selanjutnya",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 140),
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  margin: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 45,
                  child: Text(
                    "Kembali ke profil",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
