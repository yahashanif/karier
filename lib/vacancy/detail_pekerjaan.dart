import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mencoba/vacancy/detail_pekerjaan2.dart';

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
                    color: Color(0xff528FFF),
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
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 8, top: 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          "Senior UI/UX Designer",
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
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                  ))
                            ],
                          ))
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
