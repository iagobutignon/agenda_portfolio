import 'package:flutter_modular/flutter_modular.dart';

import '../../../app_routes.dart';

class RoutesService {
  Future<dynamic> navigateContactList([dynamic arguments]) async => Modular.to.navigate(AppRoutes().contactList, arguments: arguments);
  Future<dynamic> pushContactDetail([dynamic arguments]) async => Modular.to.pushNamed(AppRoutes().contactDetail, arguments: arguments);
}