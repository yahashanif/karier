import 'package:flutter/material.dart';
import 'package:flutter_mencoba/model/searchdata.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';

class Search2 extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search2> {
  final item =
      mockLokasi.map((e) => MultiSelectItem<Lokasi>(e, e.nama)).toList();
  List<Lokasi> selectedLokasi = [];

  // final _multiSelectKey = GlobalKey<FormFieldState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: 30,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Text(
              "Cari Pekerjaan",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Posisi Pekerjaan",
                border: OutlineInputBorder(),
                prefixIcon: new Icon(Icons.search),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 8),
            child: Text("Pilih Lokasi"),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              children: <Widget>[
                MultiSelectBottomSheetField<Lokasi>(
                  // key: _multiSelectKey,
                  initialChildSize: 0.5,
                  maxChildSize: 0.9,
                  minChildSize: 0.3,
                  searchHint: "Pilih Lokasi",
                  searchable: true,
                  items: item,
                  title: Text("Pilih Lokasi"),
                  buttonIcon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  buttonText: Text("Lokasi"),
                  onConfirm: (values) {
                    setState(() {
                      selectedLokasi = values;
                    });
                    // _multiSelectKey.currentState.validate();
                  },
                  chipDisplay: MultiSelectChipDisplay(
                    icon: Icon(Icons.close),
                    onTap: (value) {
                      setState(() {
                        selectedLokasi.remove(value);
                      });
                      // _multiSelectKey.currentState.validate();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
