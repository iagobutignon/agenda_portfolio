import './extensions/string_extension.dart';

class AppRoutes {
  get start => '/';
  get contactList => '/contact_list/';
  get contactDetail => '/contact_detail/';

  String mergeRoute(String superRoute, String route) => '$superRoute$route'.replaceDoubleSlash();
}