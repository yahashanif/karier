import 'package:flutter/material.dart';
import 'package:flutter_mencoba/model/job.dart';
import 'package:flutter_mencoba/search2.dart';
import 'package:flutter_mencoba/widget/divider_line.dart';

import 'kebijakan.dart';
import 'login.dart';

class HomeWithLogin extends StatelessWidget {
  final List<Job> jobList = Job.getJob();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Beranda'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Search2()));
              },
            ),
          ],
        ),
        drawer: Container(
          width: 250,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                bottomRight: Radius.circular(35)),
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    height: 90,
                    child: DrawerHeader(
                      child: Text(
                        'Menu',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Login disini'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                  DividerLine(),
                  ListTile(
                    title: Text('Kebijakan'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Kebijakan()));
                    },
                  ),
                  DividerLine(),
                  ListTile(
                    title: Text('Pengaturan'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  DividerLine(),
                  ListTile(
                    title: Text('Update Aplikasi'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  DividerLine(),
                ],
              ),
            ),
          ),
        ),
        body: Content());
  }
}

class Content extends StatelessWidget {
  // final List<Movie> movieList = Movie.getMovies();
  final List<Job> jobList = Job.getJob();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Untuk Kamu',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black),
              ),
              Text(
                'Lihat Semua',
                style: TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ],
          ),
          Container(
            height: 200.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jobList.length,
                itemBuilder: (BuildContext context, int index) {
                  return jobCardTemplate(jobList[index], context);
                }),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lowongan Terbaru',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black),
                ),
                Container(
                  height: 247.0,
                  child: ListView.builder(
                      itemCount: jobList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return jobCardTemplate2(jobList[index], context);
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget jobCardTemplate(Job job, BuildContext context) {
  return InkWell(
    child: Container(
      height: 180,
      width: 320.0,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        elevation: 1,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        job.title,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17.5),
                      ),
                      Text(
                        job.salary,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 15),
                      ),
                    ],
                  ),
                  Icon(Icons.bookmark_border_outlined)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: Image(
                          image: AssetImage(
                            job.companyImage,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            job.company,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            job.location,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(job.publishedAt)
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget jobCardTemplate2(Job job, BuildContext context) {
  return InkWell(
    child: Container(
      height: 175,
      width: 320.0,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        elevation: 1,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: Image(
                          image: AssetImage(
                            job.companyImage,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            job.company,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            job.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.bookmark_border_outlined)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        job.salary,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17.5),
                      ),
                      Text(
                        job.location,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 15),
                      ),
                    ],
                  ),
                  Text(job.publishedAt)
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
