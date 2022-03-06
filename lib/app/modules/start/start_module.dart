import 'package:flutter_modular/flutter_modular.dart';

import './services/start_service.dart';
import './pages/start_page.dart';
import './stores/start_store.dart';

class StartModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.singleton((i) => StartService()),
    Bind.lazySingleton((i) => StartStore()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => const StartPage()),
  ];
}
