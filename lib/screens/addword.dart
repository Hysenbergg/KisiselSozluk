import 'package:flutter/material.dart';
//crossAxisAlignment: CrossAxisAlignment.start,

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          child: Text(
            "Kelime Ekleme Ekrani",
            style: TextStyle(
              fontSize: 30,
              decoration: TextDecoration.underline,
            ),
          ),
          padding: EdgeInsets.only(top: 50),
        ),
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
        Container(
          margin: EdgeInsets.all(25),
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
    );
  }

  kelimeGonder() {
    print("Kelimeleri kaydettik.");
  }
}

