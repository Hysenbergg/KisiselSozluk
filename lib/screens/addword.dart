import 'package:flutter/material.dart';

class MyCustomForm extends StatelessWidget {
  const MyCustomForm();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kelime Ekleme Ekrani"),
      ),
      body: Column(
        children: [
          Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            padding: EdgeInsets.only(left: 10, right: 10, top: 30),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'İngilizce Kelimeyi Giriniz',
              ),
            ),
          ),
          Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            padding: EdgeInsets.only(left: 10, right: 10, top: 30),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Turkce Kelimeyi Giriniz',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 70),
            child: FlatButton(
              child: Text(
                'Kelimeyi Kaydet',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
              color: Colors.purple,
              onPressed: kelimeGonder,
            ),
          ),
        ],
      ),
    );
  }

  kelimeGonder() {
    print("Kelimeleri kaydettik.");
  }
}
