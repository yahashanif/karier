import 'package:flutter/material.dart';
import 'package:flutter_mencoba/gantipassword1.dart';
import 'package:flutter_mencoba/widget/alertkeluar.dart';

class InformasiProfil extends StatefulWidget {
  @override
  _InformasiProfilState createState() => _InformasiProfilState();
}

class _InformasiProfilState extends State<InformasiProfil> {
  bool _visible = false;
  bool _visible1 = false;
  bool _visible2 = false;
  bool _visible3 = false;
  bool _visible4 = false;

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          setState(() {
            _visible1 = false;
            _visible2 = false;
            _visible3 = false;
            _visible4 = false;
          });
        },
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: double.infinity,
              child: Stack(
                overflow: Overflow.visible,
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: ClipPath(
                      clipper: MyClipper(),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.03
                        : 20,
                    child: Text(
                      "Profil Kamu",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    bottom: 0.1,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Material(
                          elevation: 15,
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.height * 0.23,
                                height:
                                    MediaQuery.of(context).size.height * 0.23,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.height * 0.23,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(4),
                                      image: DecorationImage(
                                          image: AssetImage('images/jonas.png'),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: -5,
                          right: -5,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Align(
                                  child: IconButton(
                                iconSize: 20,
                                color: Colors.blue,
                                icon: Icon(Icons.camera_alt_rounded,
                                    color: Colors.white),
                                onPressed: () {
                                  _settingModalBottomSheet(context);
                                },
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Halaman Body
            Container(
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      "Pencari Kerja",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(20, 20, 40, 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: TextButton.icon(
                              onPressed: () {},
                              icon: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 18,
                                child: Icon(
                                  Icons.person_outline,
                                  color: Colors.white,
                                ),
                              ),
                              label: Text(
                                "       Informasi Profil",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            )),
                        Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ResetPassword1()));
                              },
                              icon: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 18,
                                child: Icon(
                                  Icons.lock_outline,
                                  color: Colors.white,
                                ),
                              ),
                              label: Text(
                                "       Ganti Password",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: TextButton.icon(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertLoogout();
                                  });
                            },
                            icon: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 18,
                              child: Icon(
                                Icons.power_settings_new,
                                color: Colors.white,
                              ),
                            ),
                            label: Text(
                              "       Keluar",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        ),
                      ]),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        topLeft: Radius.circular(10),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        margin: EdgeInsets.all(20),
        height: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Foto Profil',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Row(
              children: [
                InkWell(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            color: Colors.blue,
                            child: Icon(
                              Icons.restore_from_trash_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Text(
                          'Hapus Foto',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                Padding(padding: EdgeInsets.only(right: 30)),
                InkWell(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            color: Colors.blue,
                            child: Icon(
                              Icons.insert_photo_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Text(
                          'Galery',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                Padding(padding: EdgeInsets.only(right: 30)),
                InkWell(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            color: Colors.blue,
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Text(
                          'Camera',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
