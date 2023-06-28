import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Habit{
  late final String id;
  late final String title;
  late final String time;
  late final List<bool> listWeek;
  final String tag;
  late final List<String> isCompleted;
  late final int sumCompleted;
  late final List<String> assets;
  late final int receivedGifts;

  Habit({required this.id, required this.title,
    required this.isCompleted, required this.tag, required this.time, required this.listWeek, required this.sumCompleted,
    required this.assets, required this.receivedGifts
  });

  factory Habit.fromMap(Map<String, dynamic> json) => Habit(
      id: json['id'],
      title: json['title'],
      isCompleted: json['isCompleted'].split(','),
      tag: json['tag'],
      time: json['time'],
      listWeek: (json['listWeek'].split(',') as List).map((str) => str.toLowerCase() == 'true').toList(),
      sumCompleted: json['sumCompleted'],
      assets: json['assets'].split(','),
      receivedGifts: json['receivedGifts'],
  );

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'title': title,
      'isCompleted': isCompleted.join(','),
      'tag': tag,
      'time': time,
      'listWeek': listWeek.join(','),
      'sumCompleted': sumCompleted,
      'assets': assets.join(','),
      'receivedGifts': receivedGifts
    };
  }
}

class HabitFirebase{
  final firestore = FirebaseFirestore.instance;

  getUserCollection(String login){
    var habitSnapshot = firestore.collection('user').doc(login).collection('habit');
    return habitSnapshot;
  }

  Future<List<Habit>> getHabitList(String login)async {
    var habitSnapshot = await firestore.collection('user').doc(login).collection('habit').get();
    List<Habit> habitList = habitSnapshot.docs.map((doc) {
      Habit habit = Habit.fromMap(doc.data());
      return habit;
    }).toList();
    return habitList;
  }

  Future<void> setDataHabitList(String login, Habit habit) async{
    var userSnapshot = getUserCollection(login);
    await userSnapshot.doc(habit.id)
        .set(habit.toMap());
  }

  Future<void> updateCountHabit(String login, Habit habit) async{
    var userSnapshot = getUserCollection(login);
    await userSnapshot.doc(habit.id)
        .update(habit.toMap());
  }

  Future<void> deleteHabit(String login, String habitId) async {
    var userSnapshot = getUserCollection(login);
    await userSnapshot.doc(habitId)
        .delete();
  }

}
class DatabaseHelperHabit{
  DatabaseHelperHabit._privateConstructor();
  static final DatabaseHelperHabit instance = DatabaseHelperHabit._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async{
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'habit.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE habit(
    id TEXT,
    title TEXT,
    tag TEXT,
    time TEXT,
    listWeek TEXT,
    sumCompleted INT,
    isCompleted TEXT,
    assets TEXT,
    receivedGifts INT
    )
    ''');
  }



  Future<List<Habit>> getHabit() async{
    Database db = await instance.database;
    var habits = await db.query('habit');
    List<Habit> habitList = habits.isNotEmpty
        ? habits.map((c) => Habit.fromMap(c)).toList()
        : [];
    return habitList;
  }

  Future<int> add(Habit habit) async {
    Database db = await instance.database;
    return await db.insert('habit', habit.toMap() );
  }

  Future<int> remove(String id) async{
    Database db = await instance.database;
    return await db.delete('habit', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> update(Habit habit) async{
    Database db = await instance.database;
    return await db.update('habit', habit.toMap(), where: 'id = ?', whereArgs: [habit.id]);
  }

  Future<void> updateCompleted(String title, List<String> isCompleted, int sumCompleted) async{
    Database db = await instance.database;
    String isCompletedString = isCompleted.join(',');
    await db.rawUpdate('UPDATE habit SET isCompleted = ?, sumCompleted = ? WHERE title = ?', [isCompletedString, sumCompleted, title]);
  }

  Future<int> countTasks() async {
    Database db = await instance.database;
    var result = await db.rawQuery('SELECT COUNT(*) FROM habit');
    int count = Sqflite.firstIntValue(result) ?? 0;
    return count;
  }

  Future<void> updateReceivedGifts(String habitId, int newReceivedGifts) async {
    Database db = await instance.database;
    await db.update(
      'habit',
      {'receivedGifts': newReceivedGifts},
      where: 'id = ?',
      whereArgs: [habitId],
    );
  }
}