import 'package:flutter/material.dart';

class LoadingController extends ValueNotifier<bool> {
  LoadingController([value = false]) : _value = value, super(value);
  
  bool _value;
  bool _destroy = false;

  @override
  bool get value => _value;
  bool get destroy => _destroy;

  @override
  set value(bool newValue) {
    if (_value == newValue) {
      return;
    }
    _value = newValue;

    notifyListeners();
  }

  set destroy(bool destroy) {
    _destroy = destroy;

    notifyListeners();
  }
}