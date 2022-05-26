/*import 'package:flutter_application_1/utils/dbhelper.dart';
import 'package:sqflite/sqflite.dart';

class Words {
  int? id;
  String? firstWord;
  String? secondWord;
  
  Words(this.id, this.firstWord, this.secondWord);

  Words.fromMap(Map<String, dynamic> map){
    id = map["id"];
    firstWord = map["firstWord"];
    secondWord = map["secondWord"];
  }

  Map<String, dynamic> toMap(){
    return{
      DatabaseHelper.columnId : id,
      DatabaseHelper.columnFirstWord : firstWord,
      DatabaseHelper.columnSecondWord : secondWord,
    };
  }

  
}*/