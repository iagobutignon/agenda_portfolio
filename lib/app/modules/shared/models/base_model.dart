import 'package:flutter_modular/flutter_modular.dart';

import '../services/id_service.dart';

class BaseModel {
  late final String id;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool active = true;

  BaseModel() {
    id = Modular.get<IdService>().uid();
  }

  BaseModel.fromDb(Map<String, dynamic> data) {
    id = data['id'];
    createdAt = data['created_at'];
    updatedAt = data['updated_at'];
    active = data['active'];
  }

  Map<String, dynamic> toDb() {
    return {
      'id': id,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'active': active,
    };
  }
}