import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../controllers/error_controller.dart';
import '../controllers/loading_controller.dart';
import '../controllers/message_controller.dart';

class KStore<Error extends Object?, State extends Object> extends StreamStore<Exception, State> {
  final bool stateIsMessage;
  final String? stateMessage;
  late final MessageController _messageController;
  late final LoadingController _loadingController;
  late final ErrorController _errorController;
  late final GlobalKey<FormState> _formKey;

  KStore(State initialState, {this.stateIsMessage = false, this.stateMessage}) : super(initialState) {
    _formKey = GlobalKey<FormState>();
    _messageController = MessageController();
    _loadingController = LoadingController();
    _errorController = ErrorController();

    if (stateIsMessage && stateMessage == null) {
      observer(onState: (state) => _messageController.value = state as String);
    }

    if (stateMessage != null) {
      observer(onState: (state) => _messageController.value = stateMessage);
    }
  }

  MessageController get messageController => _messageController;
  LoadingController get loadingController => _loadingController;
  ErrorController get errorController => _errorController;
  GlobalKey<FormState> get key => _formKey;

  @override
  void setLoading(bool newloading, {bool force = false}) {
    _loadingController.value = newloading;
    super.setLoading(newloading);
  }

  @override
  void setError(Exception? newError, {bool force = true}) {
    _loadingController.value = false;
    final _newError = newError;
    _errorController.value = _newError;
    if(newError != null) {
      super.setError(newError, force: true);
    }
  }

  @override
  Future<void> executeEither(Future<EitherAdapter<Exception, State>> Function() func, {Duration delay = const Duration(milliseconds: 50)}) async {
    setError(null);
    await super.executeEither(() async => func());
  }
}