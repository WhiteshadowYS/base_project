import 'package:base_project/common/network/error/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseEvent<State, BLoC extends Bloc<dynamic, State>> {
  void Function()? _onDoneCallback;
  void Function(Failure)? _onErrorCallback;

  void setOnDone(VoidCallback? callback) => _onDoneCallback = callback;
  void setOnError(void Function(Failure)? callback) => _onErrorCallback = callback;

  void execute(BLoC bloc, dynamic emit, covariant Object services) async {
    _onDoneCallback?.call();
  }

  void onError(Failure error) => _onErrorCallback?.call(error);
}
