import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/main.dart';

class MyList extends StatefulWidget {
  const MyList({ Key? key }) : super(key: key);

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
      body: StreamBuilder<List<Word>>(
        stream: readWords(),
        builder: (context, snapshot) {
          if (snapshot.hasError){
            return Text('Something went wrong! ${snapshot.error}');
          } else if (snapshot.hasData){
              final words = snapshot.data!;

              return ListView(
                children: words.map(buildWord).toList(),
              );
          } else {
            return Center(child: CircularProgressIndicator(),);
          }   
        },
      ),
    );
  }  
}

 Widget buildWord(Word word) => ListTile(
    leading: CircleAvatar(child: Text(word.id)),
    title: Text(word.firstword),
    subtitle: Text(word.secondword),
  );

  Stream<List<Word>> readWords() => FirebaseFirestore.instance
    .collection('words')
    .snapshots()
    .map((snapshot) => 
      snapshot.docs.map((doc) => Word.fromJson(doc.data())).toList());

