import 'package:base_project/config/config.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBloc<Event extends BaseEvent<State, Bloc<Event, State>>, State> extends Bloc<Event, State> {
  static Bloc get instance => getIt<Bloc>();

  BaseBloc(State initialState, Object services) : super(initialState) {
    on<Event>((event, emit) async => event.execute(this, emit, services));
  }
  Future<void> addWith(
    Event event, {
    VoidCallback? onDone,
    VoidCallback? onError,
  }) async {
    add(
      event
        ..onDone(onDone)
        ..onError(onError),
    );
  }
}
