import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  MyList();

  @override
  State<MyList> createState() => _MyListState();
}


class _MyListState extends State<MyList> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kelimelere Göz At"),
      ),
      body: _buildList()
    );
  }  
}

Widget _buildList() {
  return ListView(
    children: [
      _tile('Computer', 'Bilgisayar'),
      _tile('Computer', 'Bilgisayar'),
      _tile('Computer', 'Bilgisayar'),
      _tile('Computer', 'Bilgisayar'),
      _tile('Computer', 'Bilgisayar'),
      _tile('Computer', 'Bilgisayar'),
      _tile('Computer', 'Bilgisayar'),
      _tile('Computer', 'Bilgisayar'),
      _tile('Computer', 'Bilgisayar'),
      _tile('Pencil', 'Kalem'),
      _tile('Fish', 'Balık'),
      _tile('Bottle', 'Sise'),
      _tile('Oil', 'yag'),
      _tile('Apple', 'Elma'),
      _tile('Ship', 'Gemi'),
      _tile('Sword', 'Kılıç'),
      _tile(
          'Mouse', 'Fare'),
    ],
  );

  
}

ListTile _tile(String title, String subtitle) {
  return ListTile(
    title: Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
    leading: Text("1. ", style: TextStyle(
      fontSize: 20,
    ),
    )
  );
}

