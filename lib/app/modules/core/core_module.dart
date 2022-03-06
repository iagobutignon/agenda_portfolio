import 'package:agenda_portfolio/app/modules/core/databases/core_database.dart';
import 'package:agenda_portfolio/app/modules/core/repositories/core_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import './services/routes_service.dart';

class CoreModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.singleton((i) => CoreDatabase()),
    Bind.lazySingleton((i) => CoreRepository(), export: true),
    Bind.lazySingleton((i) => RoutesService(), export: true),
  ];
}