import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../types/kstore.dart';
import '../../shared/models/contact_model.dart';

class ContactDetailStore extends KStore<Exception, ContactModel> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController documentController = TextEditingController();

  ContactDetailStore() : super(ContactModel());

  Future<void> setContact(ContactModel? contact) async {
    final _state = contact ?? ContactModel();
    await execute(() async => _state);

    await _fillControllers();
  }

  Future<void> _fillControllers() async {
    nameController.text = state.name ?? '';
    documentController.text = state.document ?? '';
  }

  Future<void> saveName(String? name) async => state.name = name;
  Future<void> saveDocument(String? document) async => state.document = document;
  
  Future<void> submit() async {
    if (key.currentState!.validate()) {
      key.currentState!.save();

      Modular.to.pop(state);
    }
  }
}