import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/addword.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'dart:math';
import 'package:flutter_application_1/screens/myList.dart';

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
        primarySwatch: Colors.purple,
      ),
      home: MyStatelessWidget(),
    );
  }
}

