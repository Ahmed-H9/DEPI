import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:for_tasks/Task_5/controllers/sqlite/model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class myOwnDB{

  static Database? _database;

  Future<Database> get database async{
    if(_database!=null)return _database!;
    _database=await _initDB();
    return _database!;
  }

  Future<Database> _initDB()async{
    var DBpath=await getApplicationDocumentsDirectory();
    String path="${DBpath.path}/my_DB.db";

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db,int version)async{
    await db.execute("""
      CREATE TABLE foods(
        id INTEGER PRIMARY KEY,
        src TEXT,
        mealName TEXT,
        resturantName TEXT,
        price REAL,
        review REAL,
        isFav INTEGER
      )
      """
    );
  }

  Future insertFav(Foods food)async{
    final db=await database;
    return await db.insert("foods", food.toJson());
  }

  Future<List<Foods>> getFavs()async{
    final db=await database;
    final res=await db.query(
      'foods',
      where: "isFav = ?",
      whereArgs: [1],
    );
    return res.map((e)=>Foods.fromJson(e)).toList();
  }

  Future<List<Foods>> getall()async{
    final db=await database;
    final res=await db.query('foods',);
    return res.map((e)=>Foods.fromJson(e)).toList();
  }

  Future deletefav(int id)async{
    final db=await database;
    return await db.delete(
      "foods",
      where: "id = ?",
      whereArgs: [id]
    );
  }

  Future seedDBFromjson()async{
    final db=await database;
    final count= Sqflite.firstIntValue(
      await db.rawQuery("SELECT COUNT(*) FROM foods")
    );
    
    if(count!=0)return;
    
    
    final jsonString = await rootBundle.loadString("lib/Task_5/controllers/sqlite/model.json");
    final List data=jsonDecode(jsonString);
    List<Foods>meals=data.map((e)=>Foods.fromJson(e)).toList();
    
    for(var food in meals){
      await db.insert("foods",food.toJson());
    }
  }

  Future updateIsFav(int id,int isFav)async{
    final db=await database;
    await db.update(
      "foods", 
      {"isFav":isFav},
      where: "id = ?",
      whereArgs: [id],
    );
  }


}