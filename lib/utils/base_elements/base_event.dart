import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseEvent<S, B extends Bloc<dynamic, S>> {
  Stream<S> execute(B bloc) async* {
    yield bloc.state;
  }
}
