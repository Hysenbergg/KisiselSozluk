import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  MyCustomForm();

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kelime Ekleme Ekrani"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 30),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'İngilizce Kelimeyi Giriniz',
              ),
            ),
          ),
          Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            padding: EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 40),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Turkce Kelimeyi Giriniz',
              ),
            ),
          ),
          RaisedButton(
            padding: EdgeInsets.all(30),
            color: Colors.amber,
            child: Text("Kelimeleri Kaydet", style: TextStyle(
              fontSize: 20,
            ),),
            onPressed: (){

            }
          )          
        ],
      ),
    );
  }

  kelimeGonder() {
    print("Kelimeleri kaydettik.");
  }
}

