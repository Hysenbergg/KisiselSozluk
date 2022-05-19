import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Kisisel Sozluk';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
   MyStatelessWidget({Key? key}) : super(key: key);

  List<String> ingilizce = ["computer", "pencil", "fish","bottle","oil","apple","ship","sword","mouse"];
  List<String> turkce = ["bilgisayar","kalem","balık","sise","yag","elma","gemi","kılıc","fare"];

  void rastgele(){
    var rng = Random();
    for (var i = 0; i < 10; i++) {
      var secim = rng.nextInt(ingilizce.length);
      print(ingilizce[secim] + ": " + turkce[secim]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Dictionary'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.add),
              ),
              Tab(
                icon: Icon(Icons.menu),//beach_access_sharp
              ),
              Tab(
                icon: Icon(Icons.quiz),//brightness_5_sharp
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: MyCustomForm(), 
            ),
            Center(
              child: MyCustomForm(),
            ),
            Center(
              child: MyCustomForm(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: rastgele,
          tooltip: 'Increment',
          child: const Icon(Icons.done),
        )
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({Key? key}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'İngilizce Kelimeyi Giriniz',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Turkce Kelimeyi Giriniz',
            ),
          ),
        ),
      ],
    );
  }
}