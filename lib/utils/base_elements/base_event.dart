import 'package:base_project/common/network/error/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseEvent<State, BLoC extends Bloc<dynamic, State>> {
  void Function()? _onDoneCallback;
  void Function(Error)? _onErrorCallback;

  void setOnDone(VoidCallback? callback) => _onDoneCallback = callback;
  void setOnError(void Function(Error)? callback) => _onErrorCallback = callback;

  void execute(BLoC bloc, dynamic emit, covariant Object services) async {
    _onDoneCallback?.call();
  }

  void onError(Error error) => _onErrorCallback?.call(error);
}
