import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  MyList({Key? key}): super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildList()
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

