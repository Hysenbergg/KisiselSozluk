import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/screens/addword.dart';
import 'package:flutter_application_1/screens/giris.dart';
import 'package:flutter_application_1/screens/myList.dart';
import 'package:flutter_application_1/screens/exam.dart';
import 'package:flutter_application_1/screens/aboutme.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp()); 
}

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
 routes: {
   '/': (context) => giris(),
    '/anasayfa': (context) => MyApp(),
 },
    );
  }
}


