import 'package:flutter_modular/flutter_modular.dart';

import './services/contact_list_service.dart';
import './stores/contact_list_store.dart';
import './pages/contact_list_page.dart';

class ContactListModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.lazySingleton((i) => ContactListStore()),
    Bind.lazySingleton((i) => ContactListService()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (_, args) => const ContactListPage()),
  ];
}
