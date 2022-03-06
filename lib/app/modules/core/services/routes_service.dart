import 'package:flutter_modular/flutter_modular.dart';

import '../../../app_routes.dart';

class RoutesService {
  Future<dynamic> navigateHome([Object? arguments]) async => Modular.to.navigate(AppRoutes().home, arguments: arguments);
}