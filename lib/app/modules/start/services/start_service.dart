import 'package:flutter_modular/flutter_modular.dart';

import '../../core/services/routes_service.dart';

class StartService {
  StartService() {
    startApp();
  }

  Future<void> startApp() async {
    // Delay pra mostrar a splash Screen, simulando algum processamento inicial
    await Future.delayed(const Duration(seconds: 3));
    Modular.get<RoutesService>().navigateHome();
  }
}