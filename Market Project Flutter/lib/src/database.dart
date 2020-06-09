import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
class DBHelper{
  DBHelper._();
  static final DBHelper dbHelper=DBHelper._();
  Database database;
  String dbname='DatabaseFile.db';
  String tableName='Users';
  String columnId='UserId';
  String columnName='Name';
  String columnPassword='Password';
  String columnType='Type';



  initDb() async{
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String path = '${appDocDir.path}/DatabaseFile.db';
    database =await openDatabase(path,version: 2,onOpen:(db){});
  }

  createUserTable() async {
    Database db=await database;
   await db.execute(
       "CREATE TABLE $tableName($columnId INTEGER PRIMARY KEY,$columnName TEXT ,$columnPassword TEXT,$columnType TEXT"
   );
  }
}