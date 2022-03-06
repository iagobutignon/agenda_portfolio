import 'package:flutter_test/flutter_test.dart';
import 'package:agenda_portfolio/app/modules/start/stores/start_store.dart';
 
void main() {
  late StartStore store;

  setUpAll(() {
    store = StartStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    // ignore: invalid_use_of_protected_member
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}