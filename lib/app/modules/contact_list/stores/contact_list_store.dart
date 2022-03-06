import 'package:flutter_modular/flutter_modular.dart';

import '../../../types/klist_store.dart';
import '../../shared/models/contact_model.dart';
import '../services/contact_list_service.dart';

class ContactListStore extends KBaseListStore<Exception, ContactModel> {
  final ContactListService _service = Modular.get();
  ContactListStore() : super();

  Future<void> newContact() async {
    addOnTop(await _service.newContact());
  }

  Future<void> editContact(ContactModel contact) async {
    replace(await _service.editContact(contact));
  }
}