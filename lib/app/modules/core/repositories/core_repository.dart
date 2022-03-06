import 'package:flutter_modular/flutter_modular.dart';
import 'package:sqflite/sqflite.dart';

import '../databases/core_database.dart';

class CoreRepository {
  final CoreDatabase _coreDatabase = Modular.get<CoreDatabase>();

  Future<int> insert(String table, Map<String, dynamic> values) async {
    return await _coreDatabase.database.insert(
      table,
      values,
      conflictAlgorithm: ConflictAlgorithm.fail,
    );
  }

  Future<int> update(String table, Map<String, dynamic> values, String? where, List<dynamic>? whereArgs) async {
    return await _coreDatabase.database.update(
      table,
      values,
      where: where,
      whereArgs: whereArgs,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<int> delete(String table, Map<String, dynamic> values, String? where, List<dynamic>? whereArgs) async {
    return await _coreDatabase.database.delete(
      table,
      where: where,
      whereArgs: whereArgs,
    );
  }

  Future<List<Map<String, dynamic>>> select(String table, {
    List<String>? columns,
    String? where,
    List<Object?>? whereArgs,
    String? orderBy,
  }) async {
    return await _coreDatabase.database.query(
      table,
      columns: columns,
      where: where,
      whereArgs: whereArgs,
      orderBy: orderBy,
    );
  }
}
