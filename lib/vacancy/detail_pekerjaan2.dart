import 'package:flutter/material.dart';
import 'package:flutter_mencoba/vacancy/detail_pekerjaan3.dart';

class KirimLamaran extends StatefulWidget {
  @override
  _KirimLamaranState createState() => _KirimLamaranState();
}

class _KirimLamaranState extends State<KirimLamaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(20)),
          Container(
            color: Colors.blue,
            height: 100,
          ),
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Kirim Lamaran',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Upload CV Kamu',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Upload file CV kamu'),
                                      ),
                                    ),
                                    InkWell(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 16),
                                        margin: EdgeInsets.all(20),
                                        child: Text(
                                          'Pilih File',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                                Text(
                                  'Surat Lamaran Kerja',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                                Container(
                                  height: 12 * 25,
                                  margin: EdgeInsets.only(top: 16, right: 20),
                                  child: SingleChildScrollView(
                                    child: TextField(
                                      maxLines: 15,
                                      decoration: InputDecoration(
                                        hintText:
                                            'Ketikan surat lamaran kerja kamu ...',
                                        hintStyle:
                                            TextStyle(color: Colors.black38),
                                        fillColor: Colors.green[50],
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        width: double.infinity,
                        margin: EdgeInsets.all(20),
                        child: Text(
                          'Kirim Lamaran',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BerhasilMelamar()));
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
