import 'package:flutter_modular/flutter_modular.dart';

import './stores/home_store.dart';
import './pages/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
  ];
}
