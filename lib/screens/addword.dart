import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/words.dart';
import 'package:flutter_application_1/utils/dbhelper.dart';
import 'package:flutter_application_1/models/words.dart';

class MyCustomForm extends StatefulWidget {
  MyCustomForm();

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {

  /*final dbHelper = DatabaseHelper.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();*/

  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();

  /*void _showMessageInScaffold(String message){
    _scaffoldKey.currentState?.showSnackBar(
      SnackBar(content: Text(message))
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Kelime Ekleme Ekrani"),
      ),
      body: Column(
        children: [
          Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            padding: EdgeInsets.only(left: 10, right: 10, top: 30),
            child: TextField(
              controller: firstController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'İngilizce Kelimeyi Giriniz',
              ),
            ),
          ),
          Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            padding: EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 20),
            child: TextField(
              controller: secondController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Turkce Kelimeyi Giriniz',
              ),
            ),
          ),
          RaisedButton(
            //child: addSnackBarPage(),
            child: Text("Kelimeleri Kaydet"),
            onPressed: (){
              String first = firstController.text;
              String second = secondController.text;
              //_insert(first, second); 
            }
          )          
        ],
      ),
    );
  }

  kelimeGonder() {
    print("Kelimeleri kaydettik.");
  }

  /*void _insert(String first, String second) async{
    Map<String, dynamic> row = {
      DatabaseHelper.columnFirstWord : first,
      DatabaseHelper.columnSecondWord : second
    };

    Words words = Words.fromMap(row);
    final id = await dbHelper.insert(words);
    _showMessageInScaffold("inserted row id : $id");
  }*/
}

/*class addSnackBarPage extends StatelessWidget {               // Bu sınıf uyarı görebilmek için olusturdum. Normal buton yerine koydum. 
  const addSnackBarPage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(textStyle: TextStyle(
          fontSize: 25,
        )),
        onPressed: () {
          String first = firstController.text;
          final snackBar = SnackBar(                         // Butona basıldığında altta kullanıcıya görebilmesi için açılan uyarı kısmı.
            content: const Text('Kelime Sözlüğe Eklendi. '),
            action: SnackBarAction(
              label: 'Kapat',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Kelimeyi Kaydet'),
      ),
    );
  }
}*/


