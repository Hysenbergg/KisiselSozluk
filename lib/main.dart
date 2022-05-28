import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/screens/addword.dart';
import 'package:flutter_application_1/screens/myList.dart';
import 'package:flutter_application_1/screens/exam.dart';
import 'package:flutter_application_1/screens/aboutme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Kisisel Sozluk';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.amber),
        child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Text(
                    "MyDictionary",
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80),
                  child: FlatButton(
                    child: Text(
                      'Kelime Ekle',
                      style: TextStyle(fontSize: 25.0, color: Colors.black),
                    ),
                    color: Colors.amber,
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyCustomForm())),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35),
                  child: FlatButton(
                    child: Text(
                      'Sözlüğe Göz At',
                      style: TextStyle(fontSize: 25.0, color: Colors.black),
                    ),
                    color: Colors.amber,
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyList())),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35),
                  child: FlatButton(
                    child: Text(
                      'Kendini Test Et',
                      style: TextStyle(fontSize: 25.0, color: Colors.black),
                    ),
                    color: Colors.amber,
                    onPressed: () => Navigator.push(
                        context, MaterialPageRoute(builder: (context) => test())),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35),
                  child: FlatButton(
                    child: Text(
                      'Hakkımda',
                      style: TextStyle(fontSize: 25.0, color: Colors.black),
                    ),
                    color: Colors.amber,
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => aboutMe())),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
