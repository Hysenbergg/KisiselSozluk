import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/words.dart';
import 'package:flutter_application_1/utils/dbhelper.dart';
import 'package:flutter_application_1/screens/addword.dart';
import 'package:flutter_application_1/screens/exam.dart';
import 'package:flutter_application_1/screens/myList.dart';
import 'package:flutter_application_1/screens/aboutme.dart';

class MyStatelessWidget extends StatefulWidget {
   MyStatelessWidget({Key? key}) : super(key: key);

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.purple),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 125),
            child: Text("MyDictionary", style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              decoration: TextDecoration.underline,
            ),),
          ),
          Container(
          margin: EdgeInsets.only(top: 100),
          child: FlatButton(
            child: Text(
              'Kelime Ekle',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
            color: Colors.purple,             
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MyCustomForm())),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 35),
          child: FlatButton(
            child: Text(
              'Sözlüğe Göz At',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
            color: Colors.purple,             
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MyList())),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 35),
          child: FlatButton(
            child: Text(
              'Kendini Test Et',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
            color: Colors.purple,             
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => test())),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 35),
          child: FlatButton(
            child: Text(
              'Hakkımda',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
            color: Colors.purple,             
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => aboutMe())),
          ),
        ),
        ],
      ),
    );
  } 
}

 



