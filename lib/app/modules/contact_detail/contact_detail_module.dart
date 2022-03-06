import 'package:flutter_modular/flutter_modular.dart';

import './pages/contact_detail_page.dart';
import './stores/contact_detail_store.dart';

class ContactDetailModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ContactDetailStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ContactDetailPage(contact: args.data)),
  ];
}
