import 'package:flutter_modular/flutter_modular.dart';

import './app_routes.dart';
import './modules/core/core_module.dart';
import './modules/home/home_module.dart';
import './modules/shared/shared_module.dart';
import './modules/start/start_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
    CoreModule(),
    SharedModule(),
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute(AppRoutes().start, module: StartModule()),
    ModuleRoute(AppRoutes().home, module: HomeModule()),
  ];

}