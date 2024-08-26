import 'package:flutter/material.dart';

abstract interface class BaseStore<T> {
  T get state;

  void setState(T stateInput);
}

abstract class NotifyBaseStore<T> extends BaseStore<T> {
  NotifyBaseStore(T state) : _state = ValueNotifier(state);

  final ValueNotifier<T> _state;

  @override
  T get state => _state.value;

  ValueNotifier<T> get valueListenable => _state;

  @override
  void setState(T stateInput) {
    _state.value = stateInput;
  }
}
