import '../modules/shared/models/base_model.dart';
import './kstore.dart';

class KBaseListStore<Error extends Object?, T extends BaseModel> extends KStore<Exception, List<T>> {
  KBaseListStore() : super([]);

  Future<void> add(T? model) async {
    if (model != null) {
      final _state = state;
      _state.removeWhere((e) => e.id == model.id);
      _state.add(model);
      await execute(() async => _state);
    }
  }

  Future<void> replace(T? model) async {
    if (model != null) {
      final _state = state;
      final int _index = _state.indexWhere((e) => e.id == model.id);
      _state.removeWhere((e) => e.id == model.id);
      _state.insert(_index == -1 ? 0 : _index, model);
      await execute(() async => _state);
    }
  }

  Future<void> addOnTop(T? model) async {
    if (model != null) {
      final _state = state;
      _state.removeWhere((e) => e.id == model.id);
      _state.insert(0, model);
      await execute(() async => _state);
    }
  }

  Future<void> delete(String id) async {
    final _state = state;
    _state.removeWhere((e) => e.id == id);
    await execute(() async => _state);
  }

  Future<T?> getById(String? id) async {
    try {
      if (id == null) return null;
      return state.where((e) => e.id == id).first;
    } catch (_) {
      return null;
    }
  }
}