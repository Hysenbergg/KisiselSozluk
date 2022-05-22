import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/addword.dart';
import 'package:flutter_application_1/screens/exam.dart';
import 'package:flutter_application_1/screens/myList.dart';

class MyStatelessWidget extends StatelessWidget {
   MyStatelessWidget({Key? key}) : super(key: key);
   
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
        /*floatingActionButton: FloatingActionButton(
          onPressed: kelimeGonder,
          tooltip: 'rastgele kelime getir',
          child: const Icon(Icons.done),
        )*/
      ),
    );
  }
}



