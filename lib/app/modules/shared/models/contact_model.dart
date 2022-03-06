import './base_model.dart';

class ContactModel extends BaseModel {
  String? name;
  String? document;

  ContactModel({
    this.name,
    this.document,
  }) : super() ;

  ContactModel.fromDb(Map<String, dynamic> data) : super.fromDb(data) {
    name = data['name'];
    document = data['document'];
  }

  @override
  Map<String, dynamic> toDb() {
    return {
      ...super.toDb(),
      'name': name,
      'document': document,
    };
  }
}
