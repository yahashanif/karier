import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mencoba/register.dart';
import 'package:flutter_mencoba/home_tanpalogin.dart';

class SearchPage1 extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SearchPage1> {
  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  final List<String> lokasi = <String>[
    'Yogyakarta',
    'Sleman',
    'Bantul',
    'Kulon Progo'
  ];
  String selectedLokasi = '';

  final List<String> pendidikan = <String>[
    'SMA/Sederajat',
    'Diploma',
    'Sarjana',
    'Umum'
  ];
  String selectedPendidikan = '';

  final List<String> pekerjaan = <String>[
    'Full Time',
    'Part Time',
    'Intership',
  ];
  String selectedPekerjaan = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Text(
              "Cari Pekerjaan",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    hintText: 'Posisi Pekerjaan ...')),
          ),
          Container(
            margin: EdgeInsets.only(left: 14, top: 16),
            child: Text(
              "Pilih Lokasi",
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.place),
                  border: OutlineInputBorder(),
                  hintText: 'Lokasi'),
              onChanged: (String? string) =>
                  setState(() => selectedLokasi = string!),
              selectedItemBuilder: (BuildContext context) {
                return lokasi.map<Widget>((String item) {
                  return Text(item);
                }).toList();
              },
              items: lokasi.map((String item) {
                return DropdownMenuItem<String>(
                  child: Text('$item'),
                  value: item,
                );
              }).toList(),
            ),
          ),
          //Pendidikan
          Container(
            margin: EdgeInsets.only(left: 14, top: 16),
            child: Text(
              "Pilih Pendidikan",
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.school),
                  border: OutlineInputBorder(),
                  hintText: 'Pendidikan'),
              onChanged: (String? string) =>
                  setState(() => selectedPendidikan = string!),
              selectedItemBuilder: (BuildContext context) {
                return pendidikan.map<Widget>((String item) {
                  return Text(item);
                }).toList();
              },
              items: pendidikan.map((String item) {
                return DropdownMenuItem<String>(
                  child: Text('$item'),
                  value: item,
                );
              }).toList(),
            ),
          ),
          //Tipe Pekerjaan
          Container(
            margin: EdgeInsets.only(left: 14, top: 16),
            child: Text(
              "Pilih Tipe Pekerjaan",
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.query_builder),
                  border: OutlineInputBorder(),
                  hintText: 'Tipe Pekerjaan'),
              onChanged: (String? string) =>
                  setState(() => selectedPekerjaan = string!),
              selectedItemBuilder: (BuildContext context) {
                return pekerjaan.map<Widget>((String item) {
                  return Text(item);
                }).toList();
              },
              items: pekerjaan.map((String item) {
                return DropdownMenuItem<String>(
                  child: Text('$item'),
                  value: item,
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0),
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              width: double.infinity,
              child: Text(
                'Cari Pekerjaan',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
