import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseEvent<S, B extends Bloc<dynamic, S>> {
  Stream<S> action(B bloc) async* {
    yield bloc.state;
  }
}
