import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class CoreDatabase {
  late final Database _database;

  CoreDatabase() {
    initializeDatabase();
  }

  Database get database => _database;

  Future<void> initializeDatabase() async {
    final databasePath = await sql.getDatabasesPath();

    _database = await sql.openDatabase(
      path.join(databasePath, 'agenda.db'),
      version: 1,
      onConfigure: _onConfigure,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
      onDowngrade: _onDowngrade,
      onOpen: _onOpen,
    );
  }

  FutureOr<void> _onConfigure(Database db) async {}

  FutureOr<void> _onCreate(Database db, int version) async {
    final batch = db.batch();
    batch.execute(
    '''
      CREATE TABLE contacts (
        id TEXT NOT NULL PRIMARY KEY,
        created_at INTEGER,
        updated_at INTEGER,
        active INTEGER,
        name TEXT,
        document TEXT
      );
    ''');
    await batch.commit();
  }

  FutureOr<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {}

  FutureOr<void> _onDowngrade(Database db, int oldVersion, int newVersion) async {}

  FutureOr<void> _onOpen(Database db) async {}
}