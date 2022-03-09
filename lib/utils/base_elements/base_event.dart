import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseEvent<State, BLoC extends Bloc<dynamic, State>> {
  VoidCallback? _onCompliteCallback;
  VoidCallback? _onErrorCallback;
  VoidCallback? _onCancelCallback;

  void onComplite(VoidCallback? callback) async => _onCompliteCallback = callback;
  void onError(VoidCallback? callback) async => _onErrorCallback = callback;
  void onCancel(VoidCallback? callback) async => _onCancelCallback = callback;

  void execute(BLoC bloc, dynamic emit, covariant Object services) async {
    try {
      _onCancelCallback?.call();
    } catch (e) {
      _onErrorCallback?.call();
    } finally {
      _onCompliteCallback?.call();
    }
  }
}
