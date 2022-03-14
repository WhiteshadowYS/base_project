import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseEvent<State, BLoC extends Bloc<dynamic, State>> {
  VoidCallback? _onDoneCallback;
  VoidCallback? _onErrorCallback;

  void onDone(VoidCallback? callback) async => _onDoneCallback = callback;
  void onError(VoidCallback? callback) async => _onErrorCallback = callback;

  void execute(BLoC bloc, dynamic emit, covariant Object services) async {
    _onDoneCallback?.call();
  }
}
