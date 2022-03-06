import 'package:flutter/material.dart';

class MessageController extends ValueNotifier<String?> {
  MessageController([value]) : _value = value, super(value);
  String? _value;

  @override
  String? get value => _value;

  @override
  set value(String? newValue) {
    _value = newValue;

    notifyListeners();
  }
}