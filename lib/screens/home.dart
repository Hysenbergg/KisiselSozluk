import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/addword.dart';
import 'package:flutter_application_1/screens/exam.dart';
import 'dart:math';
import 'package:flutter_application_1/screens/myList.dart';

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
        body:  TabBarView(
          children: <Widget>[
            Center(
              child: MyCustomForm(), 
            ),
            Center(
              child: MyList(),
            ),
            Center(
              child: test(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: rastgele,
          tooltip: 'rastgele kelime getir',
          child: const Icon(Icons.done),
        )
      ),
    );
  }
}

