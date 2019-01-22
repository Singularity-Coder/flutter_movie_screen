import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:flutter_samples/fetch_data/photo.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pacific Rim',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        primaryTextTheme: TextTheme(
          title: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: MyHomePage(title: 'Pacific Rim'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

List<Widget> stack(BuildContext context) {
  return <Widget>[
    Image.asset(
      'images/pic.jpg',
      width: MediaQuery.of(context).size.width,
      height: 400.0,
      fit: BoxFit.cover,
    ),
    ListView(
      children: <Widget>[
        new Stack(
          children: [
            Container(
              height: 350.0,
            ),
            Positioned(
              //bottom: -30,
              bottom: -1,
              left: 0,
              right: 0,
              child: Material(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 0, top: 10, right: 10, bottom: 10.0),
                  margin: const EdgeInsets.only(
                      left: 140.0, top: 10, right: 0, bottom: 0),
                  //color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
//                Container(
//                  margin: const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0, bottom: 5.0),
//                  child: Material(
//                    //shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
//                    borderRadius: BorderRadius.circular(12.0),
//                    elevation: 5.0,
//                    child: Container(
//                      child: ClipRRect(
//                        borderRadius: new BorderRadius.circular(12.0),
//                        child: Image.asset(
//                          'images/pic.jpg',
//                          fit: BoxFit.fill,
//                          height: 200.0,
//                        ),
//                      ),
//                    ),
//                  ),
//                ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Pacific Rim',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 30.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 0, top: 10.0, right: 0, bottom: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 0, top: 0, right: 10, bottom: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.amberAccent[400],
                                          size: 20.0),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent[400],
                                          size: 20.0),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent[400],
                                          size: 20.0),
                                      Icon(Icons.star,
                                          color: Colors.amberAccent[400],
                                          size: 20.0),
                                      Icon(Icons.star_half,
                                          color: Colors.amberAccent[400],
                                          size: 20.0),
                                    ],
                                  ),
                                ),
                                Text(
                                  '8.1',
                                  style: TextStyle(
                                    color: Colors.amberAccent[400],
                                    letterSpacing: 0.5,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                    left: 0, top: 0, right: 10, bottom: 0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 0, top: 0, right: 4, bottom: 0),
                                      child: Icon(
                                        Icons.access_time,
                                        color: Colors.black54,
                                        size: 15,
                                      ),
                                    ),
                                    Text(
                                      '111 min',
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 0, top: 0, right: 10, bottom: 0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 0, top: 0, right: 4, bottom: 0),
                                      child: Icon(
                                        Icons.date_range,
                                        color: Colors.black54,
                                        size: 15,
                                      ),
                                    ),
                                    Text(
                                      'Mar 23, 2008',
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20.0,
              child: Container(
                margin: const EdgeInsets.only(
                    left: 15.0, top: 10.0, right: 15.0, bottom: 5.0),
                child: Material(
                  //shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                  borderRadius: BorderRadius.circular(12.0),
                  elevation: 5.0,
                  child: Container(
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(12.0),
                      child: Image.asset(
                        'images/pic.jpg',
                        fit: BoxFit.fill,
                        height: 160.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

//  ListTile(
//    title: Text('CineArts at the Empire',
//        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//    subtitle: Text('85 W Portal Ave'),
//    leading: Icon(
//      Icons.theaters,
//      color: Colors.blue[500],
//    ),
//  ),

        // RATING SECTION
        // Stack

        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1, color: Colors.white),
          ),
          padding:
              const EdgeInsets.only(left: 0, top: 10.0, right: 0, bottom: 10.0),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[600],
                    border: Border.all(width: 1, color: Colors.lightGreen[600]),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(20.0)),
                  ),
                  padding: const EdgeInsets.only(
                      left: 8.0, top: 5.0, right: 8.0, bottom: 5.0),
                  margin: const EdgeInsets.only(
                      left: 0, top: 0, right: 7.0, bottom: 0),
                  child: Text(
                    'Action',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[600],
                    border: Border.all(width: 1, color: Colors.lightGreen[600]),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(20.0)),
                  ),
                  padding: const EdgeInsets.only(
                      left: 8.0, top: 5.0, right: 8.0, bottom: 5.0),
                  margin: const EdgeInsets.only(
                      left: 0, top: 0, right: 7.0, bottom: 0),
                  child: Text(
                    'Sci-Fi',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[600],
                    border: Border.all(width: 1, color: Colors.lightGreen[600]),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(20.0)),
                  ),
                  padding: const EdgeInsets.only(
                      left: 8.0, top: 5.0, right: 8.0, bottom: 5.0),
                  child: Text(
                    'Adventure',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
        ),

        new Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1, color: Colors.white),
          ),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(5.0),
                margin: const EdgeInsets.only(
                    left: 0, top: 0, right: 0, bottom: 0),
                child: Text(
                  'Story Line',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black87),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                margin: const EdgeInsets.only(
                    left: 0, top: 0, right: 0, bottom: 0),
                child: Text(
                  'Long ago, legions of monstrous creatures called Kaiju arose from the sea, bringing with them all-consuming war. To fight the Kaiju, mankind developed giant robots called Jaegers, designed to be piloted by two humans locked together in a neural bridge. However, even the Jaegers are not enough to defeat the Kaiju, and humanity is on the verge of defeat. Mankind\'s last hope now lies with a washed-up ex-pilot (Charlie Hunnam), an untested trainee (Rinko Kikuchi) and an old, obsolete Jaeger.',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w300
                  ),
                ),
              ),
            ],
          ),
        ),

        new Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.only(
                    left: 0, top: 0, right: 7.0, bottom: 0),
                child: Text(
                  'The Cast',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black87),
                ),
              ),

              Container(
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 15, top: 0, right: 10.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/pic.jpg'),
                              radius: 30.0,
                            ),
                          ),
                          Text(
                            'Ram',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 0, top: 0, right: 10.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/pic.jpg'),
                              radius: 30.0,
                            ),
                          ),
                          Text(
                            'Ram',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 0, top: 0, right: 10.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/pic.jpg'),
                              radius: 30.0,
                            ),
                          ),
                          Text(
                            'Ram',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 0, top: 0, right: 10.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/pic.jpg'),
                              radius: 30.0,
                            ),
                          ),
                          Text(
                            'Ram',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 0, top: 0, right: 10.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/pic.jpg'),
                              radius: 30.0,
                            ),
                          ),
                          Text(
                            'Ram',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 0, top: 0, right: 10.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/pic.jpg'),
                              radius: 30.0,
                            ),
                          ),
                          Text(
                            'Ram',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 0, top: 0, right: 10.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/pic.jpg'),
                              radius: 30.0,
                            ),
                          ),
                          Text(
                            'Ram',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

//        SizedBox(
//          height: 200.0,
//          child: ListView.builder(
//            scrollDirection: Axis.horizontal,
//            itemCount: 10,
//            itemExtent: 160.0,
//            itemBuilder: (BuildContext context, int index) {
//              return Padding(
//                padding: const EdgeInsets.only(left: 16.0),
//                child: Container(
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(8.0),
//                  ),
//                ),
//              );
//            },
//          ),
//        ),
            ],
          ),
        ),

        // Pictures
        new Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.only(
                    left: 0, top: 0, right: 7.0, bottom: 0),
                child: Text(
                  'Pictures',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black87),
                ),
              ),

              Container(
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 15, top: 0, right: 5.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            width: 80.0,
                            child: Image.asset(
                              'images/pic.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 0, top: 0, right: 5.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            width: 80.0,
                            child: Image.asset(
                              'images/pic.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 0, top: 0, right: 5.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            width: 80.0,
                            child: Image.asset(
                              'images/pic.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 0, top: 0, right: 5.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            width: 80.0,
                            child: Image.asset(
                              'images/pic.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 0, top: 0, right: 5.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            width: 80.0,
                            child: Image.asset(
                              'images/pic.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 0, top: 0, right: 5.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            width: 80.0,
                            child: Image.asset(
                              'images/pic.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 0, top: 0, right: 15.0, bottom: 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, right: 0, bottom: 5.0),
                            width: 80.0,
                            child: Image.asset(
                              'images/pic.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.all(30.0),
              ),

//        SizedBox(
//          height: 200.0,
//          child: ListView.builder(
//            scrollDirection: Axis.horizontal,
//            itemCount: 10,
//            itemExtent: 160.0,
//            itemBuilder: (BuildContext context, int index) {
//              return Padding(
//                padding: const EdgeInsets.only(left: 16.0),
//                child: Container(
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(8.0),
//                  ),
//                ),
//              );
//            },
//          ),
//        ),
            ],
          ),
        ),

//  Stack(
//    alignment: const Alignment(0.6, 0.6),
//    children: [
//      CircleAvatar(
//        backgroundImage: AssetImage('images/pic.jpg'),
//        radius: 30.0,
//      ),
//      Container(
//        decoration: BoxDecoration(
//          color: Colors.black8745,
//        ),
//        child: Text(
//          'Mia B',
//          style: TextStyle(
//            fontSize: 20.0,
//            fontWeight: FontWeight.bold,
//            color: Colors.white,
//          ),
//        ),
//      ),
//    ],
//  ),
      ],
    ),
    Positioned(
      left: 10.0,
      top: 40.0,
      child: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
    ),
    Positioned(
      right: 10.0,
      top: 40.0,
      child: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
    ),
    Positioned(
      left: 30.0,
      right: 30.0,
      bottom: 30.0,
      child: new RaisedButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => JsonScreen()),
          // );
        },
        color: Colors.lightGreen[600],
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(40.0)),
        elevation: 5.0,
        child: Container(
          height: 50.0,
//          decoration: BoxDecoration(
//            color: Colors.lightGreen[800],
//            border: Border.all(width: 1, color: Colors.lightGreen[800]),
//            borderRadius: const BorderRadius.all(const Radius.circular(40.0)),
//          ),
          padding: const EdgeInsets.only(
              left: 8.0, top: 5.0, right: 8.0, bottom: 5.0),
          margin: const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
          alignment: Alignment(0, 0),
          child: Text(
            'BOOK',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w300),
          ),
        ),
      ),
    ),
  ];
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: stack(context),
        ),
      ),
    );
  }
}
