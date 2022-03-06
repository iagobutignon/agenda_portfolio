import './extensions/string_extension.dart';

class AppRoutes {
  get start => '/';
  get home => '/home/';

  String mergeRoute(String superRoute, String route) => '$superRoute$route'.replaceDoubleSlash();
}