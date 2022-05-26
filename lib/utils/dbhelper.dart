// import 'package:flutter_application_1/models/words.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// class DatabaseHelper {
  
//   static final _databaseName = "dictionarydb.db";
//   static final _databaseVersion = 1;
//   static final table = "words_table";
//   static final columnId = "id";
//   static final columnFirstWord = "firstWord";
//   static final columnSecondWord = "secondWord";

  
//   DatabaseHelper._privateConstructor();
//   static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
//   static Database _database; 

//   Future<Database> get database async{
//     if(_database != null) return _database;
//     _database = await _initDatabase();
//   }

//   _initDatabase() async {
//     String path = join(await getDatabasesPath(), _databaseName);
//     return await openDatabase(path,
//     version: _databaseVersion,
//     onCreate: _onCreate);
//   }

//   Future _onCreate(Database db, int version) async{
//     await db.execute('''
//       CREATE TABLE $table (
//         $columnId INTEGER PRIMARY KEY AUTHINCREMENT,
//         $columnFirstWord TEXT NOT NULL,
//         $columnSecondWord TEXT NOT NULL,
//       )
//   ''');
//   }

//   Future<int> insert(Words, word) async{
//     Database db = await  instance.database;
//     return await db.insert(table, {'firstWord' : word.firstWord, 'secondWord' : word.secondWord});
//   }

//   Future<int> update(Words, word) async{
//     Database db = await  instance.database;
//     int id = word.toMap()['id'];
//     return await db.update(table, word.toMap(), where: '$columnId = ?', whereArgs: [id]);
//   }

//   Future<int> delete(int id) async{
//     Database db = await instance.database;
//     return await db.delete(table, where: '$columnId = ?', whereArgs: [id]);
//   } 
// }