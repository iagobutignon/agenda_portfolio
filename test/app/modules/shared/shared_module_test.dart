import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:agenda_portfolio/app/modules/shared/shared_module.dart';
 
void main() {
  setUpAll(() {
    initModule(SharedModule());
  });
}