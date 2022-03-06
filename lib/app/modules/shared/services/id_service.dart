import 'package:uuid/uuid.dart';

class IdService {
  String uid() {
    return const Uuid().v4();
  }
}