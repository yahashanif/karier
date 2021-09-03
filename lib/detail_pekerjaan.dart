import 'package:flutter/material.dart';
import 'package:flutter_mencoba/kirim_lamaran.dart';

class DetailPekerjaan extends StatefulWidget {
  @override
  _DetailPekerjaanState createState() => _DetailPekerjaanState();
}

class _DetailPekerjaanState extends State<DetailPekerjaan> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(left: 24, top: 24),
                            width: 32,
                            height: 32,
                            child: CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.2),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_outlined,
                                  color: Colors.white,
                                ),
                                iconSize: 16,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(),
                        Container(
                          margin: EdgeInsets.only(right: 24, top: 24),
                          width: 32,
                          height: 32,
                          child: CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(0.2),
                            child: IconButton(
                              icon: Icon(
                                Icons.share_outlined,
                                color: Colors.white,
                              ),
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24, top: 32),
                      child: Row(
                        children: [
                          Container(
                            width: 88,
                            height: 88,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/tokped.png'),
                                fit: BoxFit.contain,
                              ),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, top: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: 20,
                                  child: Text(
                                    "Tokopedia",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 22,
                                  child: Text(
                                    "Senoir UI/UX Designer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 16,
                                  child: Text(
                                    "Gaji disembunyikan",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey[50],
                                  ),
                                  child: Text(
                                    "Full Time",
                                    style: TextStyle(
                                      fontSize: 8,
                                    ),
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
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              'Deskripsi',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              'Fasilitas',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => _FasilitasPekerjaan()),
                            );
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Text(
                      'Syarat Umum',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipicing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Text(
                      'Syarat Khusus',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipicing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(10)),
                  IconButton(
                    icon: Icon(Icons.bookmark_border),
                    iconSize: 50,
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                  InkWell(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                      child: Text(
                        'Lamar Sekarang',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KirimLamaran()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _FasilitasPekerjaan() {
  return Scaffold(
    body: Stack(
      children: [
        ListView(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(left: 24, top: 24),
                          width: 32,
                          height: 32,
                          child: CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(0.2),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_outlined,
                                color: Colors.white,
                              ),
                              iconSize: 16,
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                      SizedBox(),
                      Container(
                        margin: EdgeInsets.only(right: 24, top: 24),
                        width: 32,
                        height: 32,
                        child: CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.2),
                          child: IconButton(
                            icon: Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                            ),
                            iconSize: 16,
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24, top: 32),
                    child: Row(
                      children: [
                        Container(
                          width: 88,
                          height: 88,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/tokped.png'),
                              fit: BoxFit.contain,
                            ),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, top: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 20,
                                child: Text(
                                  "Tokopedia",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 22,
                                child: Text(
                                  "Senoir UI/UX Designer",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 16,
                                child: Text(
                                  "Gaji disembunyikan",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey[50],
                                ),
                                child: Text(
                                  "Full Time",
                                  style: TextStyle(
                                    fontSize: 8,
                                  ),
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
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            'Deskripsi',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black38),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            'Fasilitas',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Text(
                    'Profil Perusahaan',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipicing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10)),
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  iconSize: 50,
                  color: Colors.grey,
                  onPressed: () {},
                ),
                InkWell(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                    child: Text(
                      'Lamar Sekarang',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
