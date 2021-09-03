import 'package:flutter/material.dart';
import 'package:flutter_mencoba/search.dart';

class Kebijakan extends StatefulWidget {
  @override
  _KebijakanState createState() => new _KebijakanState();
}

class _KebijakanState extends State<Kebijakan> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Kebijakan'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage1()));
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _Description(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _Description() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Kebijakan',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.0),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis scelerisque condimentum elit metus ornare viverra lacus. Posuere mattis quis tellus sed sed diam. Vestibulum, eget non morbi nulla erat eu nulla. Parturient donec neque facilisis nulla gravida. Gravida tellus ultrices mattis suscipit cursus neque diam. Eget id at aliquam senectus. Egestas sed sem tincidunt facilisi at feugiat. Sed at quique scelerisque mus netus risus. Quam feugiat enim et risus metus, vulputate tincidunt et nulla amet, ut ipsum. Dictum netus sit lectus massa augue commodo Fermenntum, aenean ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Feugiat viverra vulputate id ut mattis aliquet cum. lectus mauris libero nec nisl nunc massa aliquam neque. Dictum dictum sollicitudin ipsum in consectetur vel. Scelerisque lacus mattis felis risus eget pulvinar consequat",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ],
    );
  }
}
