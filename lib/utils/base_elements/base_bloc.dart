import 'package:base_project/common/network/error/failure.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBloc<Event extends BaseEvent<State, Bloc<Event, State>>, State> extends Bloc<Event, State> {
  BaseBloc(State initialState, Object services) : super(initialState) {
    on<Event>((event, emit) async => event.execute(this, emit, services));
  }

  Future<void> addWith(
    Event event, {
    VoidCallback? onDone,
    void Function(Failure)? onError,
  }) async {
    add(
      event
        ..setOnDone(onDone)
        ..setOnError(onError),
    );
  }
}
