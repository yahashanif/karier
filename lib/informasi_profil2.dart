import 'package:flutter/material.dart';

class InformasiProfil2 extends StatefulWidget {
  @override
  _InformasiProfil2State createState() => _InformasiProfil2State();
}

class _InformasiProfil2State extends State<InformasiProfil2> {
  bool _visible = false;
  bool _visible1 = false;
  bool _visible2 = false;
  bool _visible3 = false;
  bool _visible4 = false;
  void showInformasi() {
    setState(() {
      _visible = !_visible;
    });
  }

  void hideInformasi() {
    setState(() {
      _visible = !_visible;
    });
  }

  void showedit1() {
    setState(() {
      _visible1 = !_visible1;
      _visible2 = false;
      _visible3 = false;
      _visible4 = false;
    });
  }

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
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 20),
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
                    margin: EdgeInsets.only(bottom: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///NAMA
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Dadang Ramadhan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 18)),
                              Row(
                                children: [
                                  Visibility(
                                    visible: _visible4,
                                    child: SizedBox(
                                      height: 32,
                                      width: 60,
                                      child: RaisedButton(
                                        elevation: 2,
                                        onPressed: () {},
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Text(
                                          "Edit",
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.more_vert,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _visible4 = !_visible4;
                                          _visible1 = false;
                                          _visible2 = false;
                                          _visible3 = false;
                                        });
                                      }),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: Divider(thickness: 1.5, color: Colors.grey),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Pendidikan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 18)),
                              Row(
                                children: [
                                  Visibility(
                                    visible: _visible1,
                                    child: SizedBox(
                                      height: 32,
                                      width: 60,
                                      child: RaisedButton(
                                        elevation: 2,
                                        onPressed: () {},
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Text(
                                          "Edit",
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      icon: Icon(Icons.more_vert,
                                          color: Colors.grey),
                                      onPressed: () {
                                        showedit1();
                                      }),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text("2020",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 15)),
                              ),
                              Expanded(
                                flex: 8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Universitas Ahmad Dahlan",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text("",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 15)),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Tingkat",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15))
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("S1",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text("",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 15)),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Jurusan",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15))
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Teknik Informatika",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text("",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 15)),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nilai Akhir",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15))
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("3.4/4.0",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                          child: Divider(thickness: 1.5, color: Colors.grey),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Keahlian",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 18)),
                              Row(
                                children: [
                                  Visibility(
                                    visible: _visible2,
                                    child: SizedBox(
                                      height: 32,
                                      width: 60,
                                      child: RaisedButton(
                                        elevation: 2,
                                        onPressed: () {},
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Text(
                                          "Edit",
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      icon: Icon(Icons.more_vert,
                                          color: Colors.grey),
                                      onPressed: () {
                                        setState(() {
                                          _visible1 = false;

                                          _visible3 = false;
                                          _visible4 = false;
                                          _visible2 = !_visible2;
                                        });
                                      }),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text("Utama",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 15)),
                              ),
                              Expanded(
                                flex: 8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Phyton, CSS, HTML, Java Script",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                          child: Divider(thickness: 1.5, color: Colors.grey),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Tentang Saya",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 18)),
                              Row(
                                children: [
                                  Visibility(
                                    visible: _visible3,
                                    child: SizedBox(
                                      height: 32,
                                      width: 60,
                                      child: RaisedButton(
                                        elevation: 2,
                                        onPressed: () {},
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Text(
                                          "Edit",
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      icon: Icon(Icons.more_vert,
                                          color: Colors.grey),
                                      onPressed: () {
                                        setState(() {
                                          _visible1 = false;

                                          _visible2 = false;
                                          _visible4 = false;
                                          _visible3 = !_visible3;
                                        });
                                      }),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 5),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text("Alamat",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 15)),
                              ),
                              Expanded(
                                flex: 8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sleman, DI Yogyakarta",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 5),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text("Email",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 15)),
                              ),
                              Expanded(
                                flex: 8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("dadang@gmail.com",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
