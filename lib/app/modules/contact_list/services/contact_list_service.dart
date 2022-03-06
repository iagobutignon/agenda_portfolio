import 'package:flutter_modular/flutter_modular.dart';

import '../../core/services/routes_service.dart';
import '../../shared/models/contact_model.dart';

class ContactListService {
  final RoutesService routes = Modular.get();

  ContactListService();

  Future<ContactModel?> newContact() async {
    return await routes.pushContactDetail();
  }

  Future<ContactModel?> editContact(ContactModel contact) async {
    return await routes.pushContactDetail(contact);
  }
}