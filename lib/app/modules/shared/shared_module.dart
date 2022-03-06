import 'package:flutter_modular/flutter_modular.dart';

import './services/id_service.dart';

class SharedModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.lazySingleton((i) => IdService(), export: true),
  ];
}