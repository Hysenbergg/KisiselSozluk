import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class test extends StatefulWidget {
  test();

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {

  List<String> ingilizce = [
    "computer",
    "pencil",
    "fish",
    "bottle",
    "oil",
    "apple",
    "ship",
    "sword",
    "mouse"
  ];

  List<String> turkce = [
    "bilgisayar",
    "kalem",
    "balık",
    "sise",
    "yag",
    "elma",
    "gemi",
    "kılıc",
    "fare"
  ];

  void rastgele() {
    var rng = Random();
    for (var i = 0; i < 1; i++) {
      var secim = rng.nextInt(ingilizce.length);
      print(ingilizce[secim] + ": " + turkce[secim]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kendini Test Et"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Hedef Dilin Kelimesi: ',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Anadildeki karşılığını giriniz: ',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 25, bottom: 25),
          child: FlatButton(
            child: Text(
              'Rastgele',
              style: TextStyle(fontSize: 25.0, color: Colors.black),
            ),
            color: Colors.amber,
            onPressed: rastgele,
          ),
        ),
        examSnackBarPage(),
      ]),
    );
  }
}

class examSnackBarPage extends StatelessWidget {
  const examSnackBarPage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(textStyle: TextStyle(
          fontSize: 25,
        )),
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Soruyu Doğru Cevapladınız.'),
            action: SnackBarAction(
              label: 'Kapat',
              onPressed: () {
                
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Kontrol Et'),
      ),
    );
  }
}
