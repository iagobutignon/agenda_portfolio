import 'package:flutter/material.dart';

class ErrorController extends ValueNotifier<Exception?> {
  ErrorController([value]) : _value = value, super(value);

  Exception? _value;
  bool _destroy = false;

  @override
  Exception? get value => _value;
  bool get destroy => _destroy;

  @override
  set value(Exception? newValue) {
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